<div class="Breadcrumb-container">
    <nav aria-label="sei qui:" role="navigation">
        <ul class="Breadcrumb">
            {def $root_node_depth = cond(ezini_hasvariable( 'SiteSettings', 'RootNodeDepth', 'site.ini' ), ezini( 'SiteSettings', 'RootNodeDepth', 'site.ini' ), 1)}
            {def $index = 1}
            {foreach openpacontext().path_array as $path}                
                {if $index|ge($root_node_depth)}

                    {def $do = true()}
                    {if openpacontext().is_area_tematica}
                        {if openpacontext().area_tematica_path_array|contains( $path.node_id )}
                            {set $do = false()}
                        {/if}
                        {if openpacontext().area_tematica_node_id|eq( $path.node_id )}
                            {set $do = true()}
                        {/if}
                        {if openpacontext().area_tematica_node_id|eq( $module_result.content_info.node_id )}
                            {set $do = false()}
                        {/if}
                    {/if}
                    {if $do}
                        {if $path.url}
                            <li class="Breadcrumb-item">
                                <a class="Breadcrumb-link u-color-50" href={cond( is_set( $path.url_alias ), $path.url_alias, $path.url )|ezurl}>{$path.text|wash}</a>
                            </li>
                        {else}
                            <li class="Breadcrumb-item">
                                {$path.text|wash}
                            </li>
                        {/if}
                    {/if}    
                    {undef $do}
                {/if}
                {set $index = $index|inc()}
            {/foreach} 
            {undef $root_node_depth $index}           
        </ul>
    </nav>
</div>
