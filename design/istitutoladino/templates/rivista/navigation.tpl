<div class="Header-navbar">
  <div class="u-layout-medium u-layoutCenter Grid Grid--alignMiddle">    
    <a class="back-to-site" href="{'/'|ezurl(no)}">vai al sito dell'Istituto Ladin de la Dolomites</a>
    <div class="Grid-cell u-sizeFull u-md-size1of5 u-lg-size1of5" aria-hidden="true"></div>
    <div class="Grid-cell u-sizeFull u-md-size4of5 u-lg-size4of5" aria-hidden="true">
        <h1><a href="{is_area_tematica().url_alias|ezurl(no)}">{is_area_tematica().data_map.name.content|wash()}</a><h1>
        <h2>{is_area_tematica().data_map.subtitle.content|wash()|explode('|')|implode('<br />')}</h2>
        <strong>{is_area_tematica().data_map.anno.content|wash()}</strong>
    </div>
  </div>
</div><!-- Header-navbar -->

