{ezpagedata_set( 'show_path', false() )}
{ezpagedata_set( 'has_container', true() )}

{if $openpa.control_cache.no_cache}
    {set-block scope=root variable=cache_ttl}0{/set-block}
{/if}

{*if $openpa.content_tools.editor_tools}
    {include uri=$openpa.content_tools.template}
{/if*}

{def $show_left = false()}


{if $node|has_attribute('layout')}
    {attribute_view_gui attribute=$node|attribute('layout')}
{else}
    {def $blocks = array()
         $show_next_link = ''}

    {foreach $node.children as $child}            
        {if $child.class_identifier|eq('folder')}
            {if $child.name|eq('Articole scientifiche')}
                {set $blocks = $blocks|append(
                    page_block(
                        $child.name, 
                        "Lista", 
                        "lista_num",
                        hash(
                            "limite", "",                                    
                            "includi_classi", "",
                            "escludi_classi", "",
                            "ordinamento", "priority",
                            "state_id", "",
                            "livello_profondita", "",
                            "show_next_link", $show_next_link,                                    
                            "node_id", $child.node_id
                        )
                    )
                )}
            {elseif $child.name|eq('Fregores de cultura')}
                {set $blocks = $blocks|append(
                    page_block(
                        $child.name, 
                        "Lista", 
                        "lista_num",
                        hash(
                            "limite", "",                                    
                            "includi_classi", "",
                            "escludi_classi", "",
                            "ordinamento", "priority",
                            "state_id", "",
                            "livello_profondita", "",
                            "show_next_link", $show_next_link,   
                            "color_style", "yellow",                               
                            "node_id", $child.node_id
                        )
                    )
                )}
            {elseif $child.name|eq('Stories, poesies, teatre')}
                {set $blocks = $blocks|append(
                    page_block(
                        $child.name, 
                        "Lista", 
                        "lista_banner",
                        hash(
                            "limite", "",                                    
                            "includi_classi", "",
                            "escludi_classi", "",
                            "ordinamento", "name",
                            "state_id", "",
                            "livello_profondita", "",
                            "show_next_link", $show_next_link,                                    
                            "node_id", $child.node_id
                        )
                    )
                )}                    
            {elseif $child.name|eq('Libre e mostres che pò interessà i ladis')}
                {set $blocks = $blocks|append(
                    page_block(
                        $child.name, 
                        "Lista", 
                        "lista_num",
                        hash(
                            "limite", "",                                    
                            "includi_classi", "",
                            "escludi_classi", "",
                            "ordinamento", "modificato",
                            "state_id", "",
                            "livello_profondita", "",
                            "show_next_link", $show_next_link,                                    
                            "node_id", $child.node_id
                        )
                    )
                )}                     
            {else}
                {set $blocks = $blocks|append(
                    page_block(
                        $child.name, 
                        "Lista", 
                        "lista_num",
                        hash(
                            "limite", "",                                    
                            "includi_classi", "",
                            "escludi_classi", "",
                            "ordinamento", "priority",
                            "state_id", "",
                            "livello_profondita", "",
                            "show_next_link", $show_next_link,                                    
                            "node_id", $child.node_id
                        )
                    )
                )}
            {/if}
        {else}
            {if $child.name|eq('Due parole, per iniziare')}                        
                {set $blocks = $blocks|append(
                    page_block(
                        "", 
                        "Singolo", 
                        "singolo_full",
                        hash(
                            "show_next_link", $show_next_link
                        ),
                        array($child)
                    )
                )} 
            {elseif $child.name|eq('Ci che m à dià par chesto numero')}
                {set $blocks = $blocks|append(
                    page_block(
                        "", 
                        "Singolo", 
                        "singolo_box_piccolo",
                        hash(
                            "show_next_link", ""
                        ),
                        array($child)
                    )
                )}                 
            {else}
                {set $blocks = $blocks|append(
                    page_block(
                        "", 
                        "Singolo", 
                        "singolo_box_piccolo",
                        hash(
                            "show_next_link", ""
                        ),
                        array($child)
                    )
                )} 
            {/if}                     
        {/if}
    {/foreach}


    {include uri='design:zone/desitaglobal.tpl' zones=array(hash('zone_identifier', 'global', 'id', 'rivista-layout', 'blocks', $blocks)) zone_layout='desItaGlobal'}
{/if}
