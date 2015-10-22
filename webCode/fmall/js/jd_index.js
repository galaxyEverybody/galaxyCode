$(function(){
	/*首页顶部幻灯片切换*/
	if(screen.width > 1210 && $(window).width() > 1210)
	{
		$("#slide").slide({titCell:".slide-controls-w span",mainCell:".slide-items-w",effect:"fold",titOnClassName:"curr",interTime:5000,autoPlay:true});
		$("#slide").hover(function(){$(this).find(".indexAd_qh").show();},function(){$(this).find(".indexAd_qh").hide()});
	}
	else
	{
		$("#slide").slide({titCell:".slide-controls-s span",mainCell:".slide-items-s",effect:"fold",titOnClassName:"curr",interTime:5000,autoPlay:true});
		$("#slide").hover(function(){$(this).find(".indexAd_qh").show();},function(){$(this).find(".indexAd_qh").hide()});
	}
	
	$(".catGoodsBox").each(function(i, e) {
		i++;
       	$(this).find(".cat_tit").html(i+"F");
    });
	/*首页顶部幻灯片下方左右滚动切换*/
	$("#mscroll").slide({prevCell:"#mscroll-ctrl-prev",nextCell:"#mscroll-ctrl-next",effect:"leftLoop",mainCell:"#mscroll-list ul",vis:4,scroll:4});
	$("#mscroll").hover(function(){$(this).find(".ctrl").show();},function(){$(this).find(".ctrl").hide();})
	
	
	/*活动发货单订单投票切换*/
	$("#txtMarquee-top").slide({mainCell:"#brtup1ul",autoPlay:true,effect:"topMarquee",vis:3,interTime:50});
	
	$("#virtuals-2014").slide({titCell:".mt li",mainCell:".mc",titOnClassName:"current"});
	
	/* 猜你喜欢切换 */
	jQuery(".guessLike").slide({delayTime:0});
	$(".guessLike ul").each(function(){
		$(this).find("li:first .pInfo").css({borderLeft:0})
	});	
	
	
	/*分类下商品分类切换效果及幻灯片效果*/
	jQuery(".catGoodsSlide .bdSlider").slide({titCell:".hd_Slider li",mainCell:".bd_Slider ul",prevCell:".prev_bd",nextCell:".next_bd",effect:"leftLoop"});
	jQuery(".catGoodsSlide").slide({titCell:".hd_box li",mainCell:".bd_box",delayTime:0});
	$(".bdSlider").hover(function(){$(this).find(".bdSliderQh").show();},function(){$(this).find(".bdSliderQh").hide();});
	$(".hd_box").each(function(){$(this).find("li:last i").hide();});
	//
	$(".catGoodsBox").each(function(){
		var length=$(this).find(".Category li").length;
		if( length == 2 ){
			$(this).find(".Category ul").addClass("Category02");
		}else if( length > 2 && length < 6 ){
			$(this).find(".Category ul").addClass("Category03");
			$(this).find(".Category li").eq(2).nextAll().remove();
		}else if( length > 5 ){
			$(this).find(".Category li").eq(5).nextAll().remove();
		};
	});

	/*分类下商品分类内容切换效果*/
	$(".cat_goods").each(function(){
		var a = $(this).val();
		$("#cat_slide_"+a).slide({titCell:".slide-controls span",effect:"leftLoop",delayTime:200,mainCell:".slide-items",titOnClassName:"curr"});
		$("#brand_slide_"+a).slide({titCell:".slide-controls span",effect:"leftLoop",delayTime:200,mainCell:".slide-items",titOnClassName:"curr"});
	})
	
	
	$("#share").slide({mainCell:".mc ul",autoPage:true,effect:"top",autoPlay:true,vis:2});
	
	$("#index_comment").slide({mainCell:".mc ul",autoPage:true,effect:"top",autoPlay:true,vis:2});
	
	/* 商品晒单上下滚动效果 */
	jQuery(".picScrollTop").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"topLoop",autoPlay:true,vis:3,delayTime:700,interTime:3000});
	$("#share2 .bd li").each(function(){
		var length=$(this).find(".pDetail .text").text().length;
		if( length > 15 ){
			var text=$(this).find(".pDetail .text").text().substring(0,15);
			$(this).find(".pDetail .text").text(text+"……");
		};
	});
	
	/* 首页公告上下滚动效果*/
	$.fn.FontScroll = function(options){
        var d = {time: 3000,s: 'fontColor',num: 1}
        var o = $.extend(d,options);
        

        this.children('ul').addClass('line');
        var _con = $('.line').eq(0);
        var _conH = _con.height(); //滚动总高度
        var _conChildH = _con.children().eq(0).height();//一次滚动高度
        var _temp = _conChildH;  //临时变量
        var _time = d.time;  //滚动间隔
        var _s = d.s;  //滚动间隔


        _con.clone().insertAfter(_con);//初始化克隆

        //样式控制
        var num = d.num;
        var _p = this.find('li');
        var allNum = _p.length;

        _p.eq(num).addClass(_s);


        var timeID = setInterval(Up,_time);
		this.hover(function(){clearInterval(timeID)},function(){timeID = setInterval(Up,_time);});

        function Up(){
            _con.animate({marginTop: '-'+_conChildH});
            //样式控制
            _p.removeClass(_s);
            num += 1;
            _p.eq(num).addClass(_s);
            
            if(_conH == _conChildH){
                _con.animate({marginTop: '-'+_conChildH},"normal",over);
            } else {
                _conChildH += _temp;
            }
        }
        function over(){
            _con.attr("style",'margin-top:0');
            _conChildH = _temp;
            num = 1;
            _p.removeClass(_s);
            _p.eq(num).addClass(_s);
        }
    };
    $('#FontScroll').FontScroll({time: 2000,num: 1});

    /* 首页底部回到顶部的展现*/
    $(window).scroll(function(){
		if ($(window).scrollTop() > 300){
			$(".backpanel").fadeIn(500);
		}
		else
		{
			$(".backpanel").fadeOut(500);
		}
		
	});
	
	$(".backtop").click(function(){
		$('body,html').animate({scrollTop:0},500);
		return false;
	});
	
	
    /*首页投标进度展示*/
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
        	 var myChart = ec.init(document.getElementById('division0')); 
             var pricerate0 = $("input[name = division0]").val();
             var otherpricerate0 = 100 - pricerate0;

			var labelTop = {
				normal : {
					color: '#5FD653',
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
			var radius = [25, 30];
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
    require(
            [
                'echarts',
    			'echarts/chart/funnel',
    			'echarts/chart/pie'
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('division1')); 
                var pricerate1 = $("input[name = division1]").val();
                var otherpricerate1 = 100 - pricerate1;

    			var labelTop = {
    				normal : {
    					color: '#5FD653',
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
    			var radius = [25, 30];
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
    							{name:'other', value:otherpricerate1, itemStyle : labelBottom},
    							{name:'GoogleMaps', value:pricerate1,itemStyle : labelTop}
    						]
    					}
    				]
    			};
                    
                    
    		 // 为echarts对象加载数据 
    		 myChart.setOption(option);
    		}
    	);
    require(
            [
                'echarts',
    			'echarts/chart/funnel',
    			'echarts/chart/pie'
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('division2')); 
                var pricerate2 = $("input[name = division2]").val();
                var otherpricerate2 = 100 - pricerate2;

    			var labelTop = {
    				normal : {
    					color: '#5FD653',
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
    			var radius = [25, 30];
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
    							{name:'other', value:otherpricerate2, itemStyle : labelBottom},
    							{name:'GoogleMaps', value:pricerate2,itemStyle : labelTop}
    						]
    					}
    				]
    			};
                    
                    
    		 // 为echarts对象加载数据 
    		 myChart.setOption(option);
    		}
    	);

})