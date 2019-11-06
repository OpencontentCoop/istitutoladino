{if openpacontext().is_area_tematica}
	<header class="Header u-hiddenPrint">	    
	    {include uri='design:rivista/navigation.tpl'}
	    {include uri='design:rivista/header_menu.tpl'}
	</header>
{else}
	<header class="Header u-hiddenPrint">
	    {include uri='design:header/service.tpl'}
	    {include uri='design:header/navigation.tpl'}
	    {include uri='design:menu/header_menu.tpl'}
	</header>
{/if}