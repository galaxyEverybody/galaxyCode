/*******init start*****/
var httpUrl="http://"+location.hostname;
/*******init end*****/
$(function(){

	$("#recommend .suits ul").each(function(){
		$(this).width($(this).find("li").outerWidth()*$(this).find("li").size())
	})
	
	$("#recommend .tab li").click(function(){
		$("#recommend .tab li").removeClass("curr");
		$(this).addClass("curr");	
		var i = $("#recommend .tab li").index($(this));
		$("#recommend .mc").hide();
		$("#recommend .mc").eq(i).show();
	})
	
	$(".spec_list_box .item").click(function(){
		$(this).parent().find(".item").removeClass("selected");
		$(this).addClass("selected");
		$(this).parent().find("input:radio").prop("checked",false);
		$(this).find("input:radio").prop("checked",true);
		changePrice();
	})
	
	$(".yb-item-cat").mouseenter(function(){
		$(this).addClass("yb-item-hover");	
	})
	
	$(".yb-item-cat").mouseleave(function(){
		$(this).removeClass("yb-item-hover");	
	})
	
	$("#spec-list").slide({mainCell:".spec-items ul",effect:"left",autoPage:true,vis:5,pnLoop:false});
	
	$("#ranklist .tab li").mouseenter(function(){
		var i = $("#ranklist .tab li").index($(this));
		$("#ranklist .tab li").removeClass("curr");
		$(this).addClass("curr");
		$("#ranklist .tabcon").addClass("hide");
		$("#ranklist .tabcon").eq(i).removeClass("hide");
	})
	
	$("#product-detail .tab li").click(function(){
		$("#product-detail .tab li").removeClass("curr");
		$(this).addClass("curr");
		var a = $(this).attr("id");	
		if(a != 'p-con-comm')
		{
			$("#product-detail .mc").addClass("hide");
			$("#"+a+"-con").removeClass("hide");
		}
		else
		{
			$("#product-detail .mc").addClass("hide");
		}
	})
	
	$(".open_comment").click(function(){
		easyDialog.open({
			container : 'comment_show'
		});
	})
	
	$(".thickclose,.comment_btns").click(function(){
		easyDialog.close();
	})

	$("#maybe-like .mc").slide({mainCell:"#guess-scroll ul",effect:"leftLoop",vis:5,scroll:5});
	
	$(".share-ft").click(function(){
		if($(this).hasClass("share-ft-open"))
		{
			$(this).removeClass("share-ft-open");
			$(this).parents("#share-list").removeClass("share-list-open");	
			$(this).parents("#share-list").find(".share-list-item").removeClass("share-list-item-all");
		}
		else
		{
			$(this).addClass("share-ft-open");	
			$(this).parents("#share-list").addClass("share-list-open");
			$(this).parents("#share-list").find(".share-list-item").addClass("share-list-item-all");
		}
	});

	//投资的进度
		// 路径配置
	    require.config({
	        paths: {
	            echarts: './js/echart/build/dist'
	        }
	    });
	    // 使用
	    require(
	        [
	            'echarts',
				'echarts/chart/funnel',
				'echarts/chart/pie'
	        ],
        function (ec) {
            // 基于准备好的dom，初始化echarts图表
        	 var myChart = ec.init(document.getElementById('good_detail_interval')); 
             var pricerate0 = $("input[name = detail_hid_input]").val();
             var otherpricerate0 = 100 - pricerate0;

			var labelTop = {
				normal : {
					color: '#4188BE',
					label : {
						show : false,
						position : 'center',
						formatter : '{b}',
						textStyle: {
							baseline : 'bottom'
						}
					},
					labelLine : {
						show : false
					}
				}
			};
			var labelFromatter = {
				normal : {
					label : {
						formatter : function (params){
							return 100 - params.value + '%'
						},
						textStyle: {
							baseline : 'top',
							color:'red'
						}
					}
				},
			};
			var labelBottom = {
				normal : {
					color: '#ccc',
					label : {
						show : true,
						position : 'center'
					},
					labelLine : {
						show : false
					}
				},
				emphasis: {
					color: 'rgba(0,0,0,0)'
				}
			};
			var radius = [25, 35];
			var option = {
				legend: {
					show: false,
					x : 'center',
					y : 'center',
					data:[
						'GoogleMaps','Facebook'
					]
				},
				title : {
					text: 'The App World',
					subtext: 'from global web index',
					x: 'center',
					show: false
				},
				toolbox: {
					show : false,
					feature : {
						dataView : {show: false, readOnly: false},
						magicType : {
							show: false, 
							type: ['pie', 'funnel'],
							option: {
								funnel: {
									width: '50%',
									height: '50%',
									itemStyle : {
										normal : {
											label : {
												formatter : function (params){
													return 'other\n' + params.value + '%\n'
												},
												textStyle: {
													baseline : 'middle'
												}
											}
										},
									} 
								}
							}
						},
						restore : {show: false},
						saveAsImage : {show: false}
					}
				},
				series : [
					{
						type : 'pie',
						center : ['50%', '50%'],
						radius : radius,
						x: '0%', // for funnel
						itemStyle : labelFromatter,
						data : [
							{name:'other', value:otherpricerate0, itemStyle : labelBottom},
							{name:'GoogleMaps', value:pricerate0,itemStyle : labelTop}
						]
					}
				]
			};
                
                
		 // 为echarts对象加载数据 
		 myChart.setOption(option);
		}
	);
})

function setAmount(i)
{
	var a = $("#buy-num").val();

	if($.isNumeric(a))
	{
		if(i == "add")
		{
			a++;
			$("#buy-num").val(a);
		}
		else if(i == "reduce")
		{
			a--;
			if(a >= 1)
			{
				$("#buy-num").val(a);
			}
			else
			{
				$("#buy-num").val(1);
				alert("商品数量不能少于1件~");	
			}
		}
		else
		{
			if(a < 1)
			{
				$("#buy-num").val(1);
				alert("商品数量不能少于1件~");		
			}
		}
	}
	else
	{
		$("#buy-num").val(1);
		alert("商品数量必须为数字~");
	}
	
	changePrice();
}