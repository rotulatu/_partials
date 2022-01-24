<script type="text/javascript">

        function plantilla(){
          var idCombination = document.getElementById('idCombination').value;
          var urlIdcombination = '{$content_base}includes/data/plantilla.php?idproduct='+'{$product->id|intval}'+'&idcombination='+idCombination; 
          $.get(urlIdcombination);

          document.getElementById("plantilla").innerHTML +="href='"+item.title+"'>Google</a>" ;
          
        }

        go: function(id){
    window.open('{$content_base}plantillas'+'{$product->id|intval}'+document.getElementById('idCombination').value;);
}

go2: function(id){
    window.locationf='{$content_base}plantillas'+'{$product->id|intval}'+document.getElementById('idCombination').value;
}

</script>

<a rel="nofollow"  oncontextmenu="link.Generator.go2('<?echo$pageId?>')" onclick="link.Generator.go('<?echo$pageId?>')"   class="automatic"></a>
