<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title><?php echo $this->_var['page_title']; ?></title>



<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<?php if ($this->_var['cat_style']): ?>
<link href="<?php echo $this->_var['cat_style']; ?>" rel="stylesheet" type="text/css" />
<?php endif; ?>

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,user.js')); ?>
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery-1.9.1.min.js,jquery.json.js,jd_common_flow.js')); ?>
<?php echo $this->smarty_insert_scripts(array('files'=>'transport_jquery.js,utils.js,jquery.SuperSlide.js')); ?>
<?php echo $this->smarty_insert_scripts(array('files'=>'utils.js,transport_jquery.js,region.js,shopping_flow.js')); ?>
</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?> <?php echo $this->smarty_insert_scripts(array('files'=>'jd_category.js')); ?>

<div class="w main">
	<div class="blank10"></div>
    <div style="width:990px;height:500px;">
		<div style="width:100%;height:60px;background:#F7F7F7;"><div style="width:6px;height:60px;background:#FF500B;float:left;"></div><span style="font-size:26px;font-weight:bold;float:left;margin-top:20px;">收益计算器</span></div>
		<div style="width:770px;height:260px;">
			<table style="width:100%;height:200px;margin-top:30px;">
				<tr>
					<td style="width:70px;text-align:center;">出借金额</td>
					<td style="width:340px"><div style="width:290px;height:35px;border:1px solid #ddd;float:left;"><input type="text" style="width:260px;height:30px;float:left;border:none;outline:none;font-size:14px;"><span style="float:left;line-height:35px;height:35px;margin-left:5px;">元</span></div></td>
					<td style="width:70px;text-align:center;">年化利率</td>
					<td style="width:340px"><div style="width:290px;height:35px;border:1px solid #ddd;float:left;"><input type="text" style="width:260px;height:30px;float:left;border:none;outline:none;font-size:14px;"><span style="float:left;line-height:35px;height:35px;margin-left:5px;">%</span></div></td>
				</tr>
				<tr>
					<td style="width:70px;text-align:center;">借款期限</td>
					<td style="width:340px"><div style="width:290px;height:35px;border:1px solid #ddd;float:left;"><input type="text" style="width:260px;height:30px;float:left;border:none;outline:none;font-size:14px;"><span style="float:left;line-height:35px;height:35px;margin-left:5px;">月</span></div></td>
					<td style="width:70px;text-align:center;">还款方式</td>
					<td style="width:340px">
						<select name = "" style="width:290px;height:35px;">
							<option value=1>按月等额本息</option>
							<option value=2>按月还息到期还本</option>
							<option value=3>到期还本息</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="4" style="text-align:center;"><button style="width:200px;height:40px;background:#FF500B;margin-top:20px;">开始计算</button></td>
				</tr>
			</table>
		</div>
		<div style="width:100%;height:60px;background:#F7F7F7;line-height:60px;"><div style="width:6px;height:60px;background:#FF500B;float:left;"></div><span style="font-size:26px;font-weight:bold;float:left;">还款时间表</span></div>
		<div style="width:100%;height:auto;">
			<div></div>
			<table width="100%">
				<tr style="height:35px;background:#F7F7F7;"><th>期号</th><th>本期待收</th><th>含：利息</th><th>含：本金</th><th>到期日期</th><th>星期</th><th>净利息</th><th>净待收</th></tr>
			</table>
		</div>
	</div>
</div>

<?php echo $this->fetch('library/help.lbi'); ?> <?php echo $this->fetch('library/page_footer.lbi'); ?>

</body>
</html>