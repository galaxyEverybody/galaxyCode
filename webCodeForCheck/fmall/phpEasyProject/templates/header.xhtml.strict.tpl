{if $PageTitle ne ""}{assign var=SiteTitle value="$SiteTitle - $PageTitle"}{/if}
<!DOCTYPE html
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title>{$SiteTitle}</title>
    <meta name="Author" content="Arthur Harder" />
{if $Keywords ne ""}
    <meta name="Keywords" content="{$Keywords}" />
{/if}
{if $Description ne ""}
    <meta name="Description" content="{$Description}" />
{/if}
{if $CachingDisallow ne ""}
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="pragma" content="no-cache" />
{/if}
    <link rel="shortcut icon" href="favicon.ico" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="robots" content="index" />
    <meta name="robots" content="follow" />
    <link rel="stylesheet" type="text/css" href="{$RootPath|default:''}styles/{$StyleSheet|default:'standard.css'}" />
{* -- Beispiel fuer JavaScript-Anbindung bei XHTML-strict --     *}
{* <script type="text/javascript">                               *}
{* <![CDATA[                                                     *}
{* 	//... unescaped script content ...                           *}
{* ]]>                                                           *}
{* </script>                                                     *}
{$CSSExtra}
{$JavaScript}
{$xajax}
  </head>
  <body{$onLoadElement}>