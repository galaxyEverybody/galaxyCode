<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */

/**
 * Smarty {cmspositions} plugin
 *
 * Type:     function<br>
 * Name:     htmllist<br>
 * Purpose:  Print List of CMS Positions
 *
 * @version 1.0
 * @author   Arthur Harder
 * @param array
 * @param Smarty
 * @return string
 */
function smarty_function_htmllist($params, &$smarty)
{
	$options      = isset($params['param']['options'])      ? $params['param']['options']      : Array(''=>'Not Defined');
	$listname     = isset($params['param']['listname'])     ? $params['param']['listname']     : 'default';
	$activeoption = isset($params['param']['activeoption']) ? $params['param']['activeoption'] : '';

	$return = '<select name="'.$listname.'">';
	foreach ($options as $value => $caption)
	{
		$sel = $value == $activeoption ? ' selected="selected"' : '';
		$return .= '<option value="'.$value.'"'.$sel.'>'.$caption.'</option>';
	}
	
	$return .= '</select>';
	return $return;
}

/* vim: set expandtab: */

?>
