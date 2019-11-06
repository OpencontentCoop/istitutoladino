<div class="Headroom-hideme u-textCenter u-hidden u-sm-hidden u-md-block u-lg-block">
    <nav class="Megamenu Megamenu--default js-megamenu">        
        <ul class="Megamenu-list">
            {foreach is_area_tematica().children as $child}
            {if $child.class_identifier|eq('folder')}
            <li class="Megamenu-item">                        
                <a href="{is_area_tematica().url_alias|ezurl(no)}#sezione-{$child.name|slugize()}">{$child.name|wash()}</a>
            </li>
            {/if}
            {/foreach}
        </ul>
    </nav>
</div>