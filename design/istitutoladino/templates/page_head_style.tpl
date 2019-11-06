{if is_unset( $load_css_file_list )}
    {def $load_css_file_list = true()}
{/if}
{if is_unset( $theme )}
        {def $css_theme = concat('build_', openpaini('GeneralSettings','theme', 'pac') ,'.css')}
    {else}
        {def $css_theme = concat('build_', $theme ,'.css')}
{/if}

{def $list = array(
    $css_theme,
    'override.css',
    'ez.css',
    'debug.css',
    'font-awesome.min.css',
    'websitetoolbar.css'
)}
{if openpacontext().is_area_tematica}
    {set $list = $list|append('rivista.css')}
{/if}

{if $load_css_file_list}
{ezcss_load( array(
        $list,
        ezini( 'StylesheetSettings', 'CSSFileList', 'design.ini' ),
        ezini( 'StylesheetSettings', 'FrontendCSSFileList', 'design.ini' )
    ), 'all', 'text/css', 'stylesheet' )}
{else}
    {ezcss_load( $list, 'all', 'text/css', 'stylesheet' )}
{/if}

{ezcss_load( array('print.css'),'print', 'text/css', 'stylesheet' )}

{undef $list}