<link rel="stylesheet" type="text/css" href="https://api.rotulatumismo.com/neon2/jquery.fontselect.css?asd">
<script src="https://cdn.jsdelivr.net/npm/three@0.112.0/build/three.min.js"></script>
<script src="https://api.rotulatumismo.com/3dNow/nJs/SVGLoader.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.112.0/examples/js/controls/OrbitControls.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.112.0/examples/js/postprocessing/EffectComposer.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.112.0/examples/js/postprocessing/RenderPass.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.112.0/examples/js/postprocessing/ShaderPass.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.112.0/examples/js/shaders/CopyShader.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.112.0/examples/js/shaders/LuminosityHighPassShader.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.112.0/examples/js/postprocessing/UnrealBloomPass.js"></script>
<script src="https://api.rotulatumismo.com/3dNow/nJs/SelectionBox.js"></script>
<script src="https://api.rotulatumismo.com/3dNow/nJs/SelectionHelper.js"></script>
<script src="https://api.rotulatumismo.com/3dNow/nJs/DragControls.js"></script>
<script src="https://api.rotulatumismo.com/3dNow/all2.js?asdsa"></script>


{literal}
<script type="x-shader/x-vertex" id="vertexshader">
  varying vec2 vUv; void main() { vUv = uv; gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 ); }
</script>

<script type="x-shader/x-fragment" id="fragmentshader">
  uniform sampler2D baseTexture; uniform sampler2D bloomTexture; varying vec2 vUv; vec4 getTexture( sampler2D texture ) { return mapTexelToLinear( texture2D( texture , vUv ) ); } void main() { gl_FragColor = ( getTexture( baseTexture ) + vec4( 1.0 ) * getTexture(
  bloomTexture ) ); }
</script>
<style>
	.selectBox {
		border: 1px solid #55aaff;
		background-color: rgba(75, 160, 255, 0.3);
		position: fixed;
	}
    #selection {
      position: absolute;
      background: rgba(0, 255, 0, 0.5);
      border: 1px solid #00FF00;
      opacity: 50%;
      width: 50px;
      height: 50px;
      z-index: 1;
    }
    #selection-layer {
    
      z-index: 2;
      position: absolute;
	  left:15px;
      
    }
	.ia3d{
		background: #1b1b1b;
		width: 100% !important;
	}
  
	#lucchetto{
	   /* position: absolute;*/
	    right: 25px;
	    margin-top:18px;
	    font-size: 25px;
	    color: red;
		float:right;
	}

	#attenuate {
    /* right: 25px; */
    margin-top: 18px;
    font-size: 25px;
    color: #f9ff01;
    float: right;
    margin-right: 10px;
	display:none;
	}
	.rainbow {
	
	   /* Font options */
	  font-family: 'Pacifico', cursive;
	  text-shadow: 2px 2px 4px #000000;
	  font-size:25px;
	  height: 20px;
	  width: 20px;
	  border-radius: 5px;
	
	   /* Chrome, Safari, Opera */
	  -webkit-animation: rainbow 5s infinite; 
	
	  /* Internet Explorer */
	  -ms-animation: rainbow 5s infinite;
	
	  /* Standar Syntax */
	  animation: rainbow 5s infinite; 
	}

	/* Chrome, Safari, Opera */
	@-webkit-keyframes rainbow{
	  0%{background-color: orange;}	
	  10%{background-color: purple;}	
		20%{background-color: red;}
	  30%{background-color: CadetBlue;}
		40%{background-color: yellow;}
	  50%{background-color: coral;}
		60%{background-color: green;}
	  70%{background-color: cyan;}
	  80%{background-color: DeepPink;}
	  90%{background-color: DodgerBlue;}
		100%{background-color: orange;}
	}

	/* Internet Explorer */
	@-ms-keyframes rainbow{
	   0%{background-color: orange;}	
	  10%{background-color: purple;}	
		20%{background-color: red;}
	  30%{background-color: CadetBlue;}
		40%{background-color: yellow;}
	  50%{background-color: coral;}
		60%{background-color: green;}
	  70%{background-color: cyan;}
	  80%{background-color: DeepPink;}
	  90%{background-color: DodgerBlue;}
		100%{background-color: orange;}
	}

	/* Standar Syntax */
	@keyframes rainbow{
	    0%{background-color: orange;}	
	  10%{background-color: purple;}	
		20%{background-color: red;}
	  30%{background-color: CadetBlue;}
		40%{background-color: yellow;}
	  50%{background-color: coral;}
		60%{background-color: green;}
	  70%{background-color: cyan;}
	  80%{background-color: DeepPink;}
	  90%{background-color: DodgerBlue;}
		100%{background-color: orange;}
	}

	{/literal}

	.minh{
		min-height:60px !important;
	}
	#svg_add_to_cart2{
		max-width: 200px;
		
		
		/* height: 50px; */
	}
	.left{
		float:left;
		margin-right:15px;
	}
	.color_pick{
		max-width:86px;
	}
	/*#svgPrice2 {
		position: absolute;
		font-weight: 600;
		font-size: 29px;
		color: #5C5B5B;
		right: 25px;
			margin-top: 35px;

	}*/
	#svgPrice2 {
		/*position: absolute;*/
		font-weight: 600;
		font-size: 27px;
		color: #5C5B5B;
		right: 25px;
		margin-top: 17px;
		margin-bottom: 10px;
		margin-left:10px;
		width:260px;
		float:right;

	}

	span#ivaneon {
		font-size: 12px;
		color: #ea0b87;
		position: absolute;
		margin-left: 5px;
		margin-top: -5px;
	}

	span#enviogratis {
		font-size: 11px;
		margin-top: 6px;
		margin-left: 5px;
		position: absolute;
	}


	.inputNeon {
		height: 44px;
		float: left;
	
		border-radius: 25px;
		border: 1px solid #dfe1e5;
	}
	.attribute_list #color_to_pick_list {
		display: inline-block;
		list-style-type: none;
	}
	.attribute_list #color_to_pick_list li {
		float: left;
		margin-top: 5px;
		padding: 1px;
		border: 1px solid #d9d9d9;
		border-radius: 15px;
		clear: none;
		max-width: 86px;
		height:125px;
	}
	.attribute_list #color_to_pick_list li a.color_pick img {
		display: block;
		width: 80px;
		border-radius: 10px;
	}
	.attribute_list #color_to_pick_list li.selected {
		border: 1px solid #007ab7;
	}
	#svgSelectWeigth{
		width: 43%;
		margin-bottom: 20px;
	}
	#color_to_pick_list a.selected {
		border: 1px solid #007ab7;
		display: block;
		border-radius: 8px;
	}
	.priceBox{	
		float:right;
	}
	.bbox {
		position: absolute;
		border: 1px solid green;
	}
	svg{
		width: 0px;
	}

	#overlaySvg{	
		position: absolute;
		left: 0;
		top: 0;
		z-index: 100;
		width: 100%;
		height:100%;
		display: none;
		background: rgba(0,0,0,0.6);
	}
	.cv-spinner {
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;  
	}
	.spinner {
		width: 40px;
		height: 40px;
		border: 4px #ddd solid;
		border-top: 4px #E41482 solid;
		border-radius: 50%;
		animation: sp-anime 0.8s infinite linear;
	}
	.spinner2 {
		display: flex; */
		height: 0;
		display: flex;
		/* justify-content: center; */
		/* align-items: center; */
		top: 51%;
		position: absolute;
		text-align: center;
	}
	@keyframes sp-anime {
		100% { 
			transform: rotate(360deg); 
		}
	}
	.is-hide{
		display:none;
	}

	.font-select .fs-results li{
	-webkit-text-stroke-width: 0.8pt !important;

	}
	.font-select{
	-webkit-text-stroke-width: 0.8pt !important;
	}
	#add3dHere{
		width: 100%;
	}
	#colorIn3d{
		
		margin-left: 5px;
		color: white;
		width: 100%;
		/*position: absolute;*/
		display: contents;
		/* float: left; */
		width: auto;
		left: 15px;
		min-height: 50px;
	}

	.colorSquare {
		border-radius: 5px;
		padding: 5px;
		height: 20px;
		width: 20px;
		display: inline-block;
		
	}
	.colorSel{
		float: left;
		margin-left:5px;
		/*display: inline-flex;*/
		margin-top: 5px;
		max-height : 120px;
		
	}

	.tooltip {
	position: relative;
	display: inline-block;
	}

	.tooltip .tooltiptext {
	visibility: hidden;
	width: 260px;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	
	/* Position the tooltip */
	position: absolute;
	z-index: 1;
	top: -5px;
	right: 105%;
	}

	.tooltip:hover .tooltiptext {
	visibility: visible;
	}

</style>

<div id="overlaySvg">

	<div class="cv-spinner">
        
		<span class="spinner"></span>
	</div>
        <div class="spinner2">
        <h3 style="color:#E41482">{l s='Espera estamos elaborando tu diseño'}</h3>    
    </div>
</div>
<script>
/**
Para Julia
Añadir aqui las variables javascript para traducir, ver alturanopermitida,
las traducciones estan en traducciones de los modulos

*/
var baseurl = '{$base_dir_ssl}';
var awp_center_images = console.log();
var wireTrue = false//If true use wf
var wf = 4;
var psize = 18;//Path size
var params = {
  exposure: 1,
  bloomStrength: 2.3,
  bloomThreshold: 0,
  bloomRadius: 1.1
};
/**/

var alturanopermitida = "{l s='Altura no permitida'}";
var tiraLed = "{l s='Tira led Nº'}"
var grupoDeLetras = "{l s='Grupos de Letras'}"
var azar = "{l s='RGB'}"
var soloSvg = "{l s='Solo archivos SVG'}"
var coloreselegidos = "{l s='Colores en el diseño:'}"
var blanco = "{l s='blanco'}"
var urlImg;
function getPng2(){
	return;
	

	/*obsolet*/
			var Alturaminima = 10;
			var alturacliente = $('#size').val();

			if(alturacliente < Alturaminima){

				swal({
					title: alturanopermitida,
					text: "Para poder fabricar el neon las letras la altura mínima tendría que ser " + Alturaminima + " cm ",
					type: "warning",
					showCancelButton: false,
					confirmButtonColor: '#e73b81'
				});

				return;
			}

	
    if(typeof product_id == 'undefined'){
		var product_id = id_product;
	}
    
	var svg = $('svg').get(0);
	var xml = new XMLSerializer().serializeToString(svg);
	var svg64 = btoa(xml);
	var image64 = svg64;

	
	
    $.ajax({
            type: 'POST',
            dataType: 'json',
            cache: false,
            url: 'https://api.rotulatumismo.com/neon/neon.php',
            data: {
                action: 'create',
                // dataSW: dataSW,
                token: static_token,
                AJAX: 1,
                product_id : product_id,
                ancho: $('#anchoSVG').val(),
                alto: $('#altoSVG').val(),
				grosor: $('#svgSelectWeigth').children("option:selected").text(),
				color : pngColor,
				
				
				
				svg : image64,
				price: priceSVG
            },
            beforeSend: function() {
        // setting a timeout
                $("#overlaySvg").fadeIn(300);　
            },
            success: function(data) {
                
                if(data.response == 1) {
                    $("#myCanvas").hide();
                
                    urlImg = 'https://www.rotulatumismo.com/imagenes/svg/tmp/'+data.name+'.png';
                    var image = new Image();
                    $("#neonP").html(data.nP);
                    $("#neonP").css('background-color', 'black');
                    
                    $('svg').hide();

                    var c = typeof pngColor == 'undefined' ? 'ffffff' : pngColor;
                    $("#neonP").css('color', '#'+c);
                    if($('#spng').length == 1){
                        $('#spng').attr("src", urlImg);
                    }else{
                        $('#leftProduct').append('<img id="spng" class="img-responsive" src="'+urlImg+'" />');
                    }
	                
                    calcutateSGVprice2();

                    setTimeout(function(){
				        $("#overlaySvg").fadeOut(300);
			        },500);
                    
                    //$('#leftProduct').append(image);
                    
                } else {
                    setTimeout(function(){
				        $("#overlaySvg").fadeOut(300);
			        },500);
                    alert("Ocurrió un error");
                }
            },
            error: function(data){
                setTimeout(function(){
				$("#overlaySvg").fadeOut(300);
			},500);
                alert("Ocurrió un error");
            }
        })
}




$('#svgSelectWeigth').on('change', function(){	
	calcutateSGVprice2();
});





function rgb2hex(rgb){
 rgb = rgb.match(/^rgb((d+),s*(d+),s*(d+))$/);
 return "#" +
  ("0" + parseInt(rgb[1],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[2],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[3],10).toString(16)).slice(-2);
}



function calcutateSGVprice2(){
	
	//lockGroup()
	var obj = scene.getObjectByName("userSVG");
	$('#neonP').text(obj.children.length);
	var box = new THREE.Box3().setFromObject(obj);
    var size = box.getSize();
	//unlockGroup()
	//alert(size.y)

	priceSVG = 0;
	var x = $('#anchoSVG').val();
	var ya = size.y;
	$('#size').val(round(size.y ,2));
	//$('#anchoSVG').val(round(x ,2));
	//$('#altoSVG').val(round(size.y ,2));
	y = $('#altoLetra').val();
	y = round(y ,2);
	console.log('y');
	console.log(ya);
	console.log(x);
	/*var indexPrice = $('#svgSelectWeigth').children("option:selected").val();
	var mPriceJson = $('#m2PriceSVG').val();
	var prices = JSON.parse(mPriceJson);
	var weightPrice; 
	$.each(prices, function (key, data) {		
        $.each(data, function (keys, data2) {	
            if(key == indexPrice)
				weightPrice = data2;	
		}); 
    
	});*/
	var indexPrice = $('#svgSelectWeigth').children("option:selected").val();
    
	var mPriceJson = $('#m2PriceSVG').val();
	var prices = JSON.parse(mPriceJson);
	var weightPrice; 
	var linearPrice;
    var startPrice;
    var npPrice;
	$.each(prices, function (key, data) {
		$.each(data, function (key1, data1) {
            //console.log(data1);
            if(key1 == indexPrice){
           	    $.each(data1, function (key2, data2) {	
                    startPrice = key2;
                    weightPrice = data2[0];
					linearPrice = data2[1];
                    npPrice = data2[2];
			    });
            }
		});     
	});
	
    //return;
	//let t = x/ya
    var area = (size.x * ya);
console.log(area);
	/** Orig And **/
	console.log('totalSVG');
	console.log(totalSVG);
	//var newLongitud = round(area * convert300dpi(totalSVG)/ (xSVG * ySVG), 2);
	var newLongitud = round(size.x * convert300dpi(totalSVG)/ xsvg , 2);
	console.log(newLongitud);
    var input = document.getElementById('uploadText');


	if(input.files.length == 0){
		newLongitud = newLongitud/2;
	}
	/** New Vict **/
	//var newLongitud = y/ySVG*convert300dpi(totalSVG);//round(area * nn/ (xSVG * ySVG), 2);2372.645 -2372.65 45 3003.08 2669.4066531496505

	if(newLongitud == 0 || !newLongitud){
		//alert('Archivo no valido¡¡¡');
	}
	$('#longitudSVG').text(newLongitud);
	
	//var ln = $('#linearPriceSVG').val();
	var pl = (linearPrice/100) * newLongitud;
	var pm = (weightPrice/10000) * area;
	
	//var materialPrice = $('#materialPrice').val();
	priceSVG = round(pl+pm , 2);
	//price += price * materialPrice / 100;
	/*
	* $('a.selected > input.form-control.materialPrice')
	*/
	
	// Luego este calculo de las opciones. Esto lo he puesto al final para que haga el calculo del porcentaje y las opciones al final

	$.each($('a.selected > input.form-control.materialPrice'), function (key, data) {
		//alert($(this).val());
        //console.log(this);
		console.log($(this).val());
		priceSVG += priceSVG * $(this).val() / 100;
	});
	
	// Primero este calculo que es el inicial
    var totPartPrice = Number($("#neonP").text());
    priceSVG = priceSVG  + (npPrice * totPartPrice);
    priceSVG = priceSVG + Number(startPrice);
	priceSVG = round(priceSVG , 2);

	

    /* Result price whitout options */
	
	//$('#svgPrice2').html(priceSVG + ' €');

	

	{if $cart->id_shop == 2}
		var conIVA = priceSVG * 1.22;
	{elseif $cart->id_shop == 5 }
		var conIVA = (priceSVG * 1.10) * 1.20;
	{else}
		var conIVA = priceSVG * 1.21;
	{/if}
	
	var conIVAROUND = round(conIVA, 2);

	$('#svgPrice2').html(conIVAROUND + ' € {if $cart->id_shop == 2}<span id=ivaneon> Tasse Incl. </span>{elseif $cart->id_shop == 5 }<span id=ivaneon> TTC </span>{else}<span id=ivaneon> IVA incluido</span>{/if}');

	if(conIVAROUND >= 30){

		$('#svgPrice2').append('{if $cart->id_shop == 2}<span id=enviogratis> SPEDIZIONE GRATUITA</span>{elseif $cart->id_shop == 5 }<span id=enviogratis> </span> {else}<span id=enviogratis> ENVIO GRATUITO</span>{/if}');

	}
	
}

$("#svg_add_to_cart2").click(function(e) {

    //e.preventDefault();
	addSVGToCartN();
});

$( document ).ready(function() {
    //$('#leftProduct').append('<canvas style="display:block" id="myCanvas"></canvas>');
	$('#altoSVG').hide();
    //renderAttributes2();
	//renderTextures();
});
{literal}
    var fontSvg;        
    var loadGfont;
    $(function(){
		applyFont('BuloNeon');
        $('#font').fontselect({
					systemFonts: [],
					localFonts: ['Nickainly', 'BuloNeon','Portrait','Neon','Santelia','Clip','StayClassy','Goldstick','TheCapeHall','Fashion','Anguita','Neoncity','Shutle','Bigfat','Dymaxion'],
					googleFonts: [],
					localFontsUrl: baseurl+'/fonts/neon/' // End with a slash!
				})
				.on('change', function() {
                    console.log(this.value);
					applyFont(this.value);
				});

        $('#testo').change(function(){
          
        });
        $('#getPng').click(function(){
            getNeon()
            //drawalo()
            //getPng()
        });
    });

    

    function applyFont(font) {
		console.log('You selected font: ' + font);
		// Replace + signs with spaces for css
        font = font.replace(/\+/g, ' ');
        fontSvg = font.replace(/\ /g,'');

		// Split font into family and weight
		font = font.split(':');

		var fontFamily = font[0];
		var fontWeight = font[1] || 400;
      
	}
	var fH = '';
    function getNeon(){
        
		var theRealSize = $('#altoLetra').val()* 28.3464567;
		var txt = "'"+$('#testo').val()+"'";
        $('#neonSvg').html('');
        $.post( "https://api.rotulatumismo.com/neon2/neon2.php", { testo: txt, font: fontSvg, size: theRealSize, color: "ffffff" } ).done(function( data ) {
            //alert( "Data Loaded: " + data );
            if(data != 'undefined'){
                $('#neonSvg').html(data);
				isFile = false;
                boom()
				
				
            }
        });

    }




{/literal}
</script>

<script>
function reDraw(){
	return;
	
}

</script>
<script src="https://www.rotulatumismo.com/js/jquery.fontselect.js"></script>        
<div class="row">
<div style="width:0px;height:0px" id="neonSvg"></div>
<img class="img-responsive" style="width:93%" id="spng" />
<div class="col-lg-12">
		
<div id="svgPrice2">23,70€<span id=ivaneon>{l s='IVA incluido'}</span></div> 
<div id="neonP" style="display:none"></div>
<div id="longitudSVG" style="display:none"></div>
	
	<div class="col-md-12 minh" {if $product->id == 19794} style="display:none"{/if}>	
		<label class="attribute_label">{l s='Elige texto o archivo'}</label>
		<div id="radioSvg" class="col-md-12">
			<label for="txtSvg" class="radio-inline">{l s='Texto'}
				<input class="tipoSvg" type="radio" id="txtSvg" name="tipoSvg" value="txt" checked="checked">
			</label>
	
  			<label for="fileSvg" class="radio-inline">{l s='Archivo Vectorial'}
				<input class="tipoSvg" type="radio" id="fileSvg" name="tipoSvg" value="file" >  
			</label>
  		</div>
	</div>
{if $product->id == 19794}
							<div class="col-lg-12">
								<h3>{l s='Sube tu vectorial en '}{l s='SVG'}</h3>
								<input id="uploadText" type="file" size="10"/>
								<div id="overlaySvgRight">
									<div class="cv-spinner2">
										<span class="spinner"></span>
									</div>
								        <div class="spinner2">
								        <h3 style="color:#E41482">{l s='Espera estamos elaborando tu diseño'}</h3>    
								    </div>
								</div>
							</div>			

	{/if}								
	<div class="testoFonte" {if $product->id == 19794} style="display:none"{/if}>    
		<div class="col-md-3 minh">
		
		<div class="tooltip"><label class="attribute_label">{l s='Tu texto'}</label>
		{if $cart->id_shop == 5}
  		<span class="tooltiptext"> <img src="img/gif_fr_texte.gif" /></span>
		{else}
		<span class="tooltiptext"> <img src="img/texto.gif" /></span>
		{/if}
		</div>
    	    
    	    <input class="inputNeon " id="testo" type="text" />
    	</div>
    	<div class="col-md-4 minh">
    	    <label class="attribute_label">{l s='Tipo de letra'}</label>
    	    <input class="inputNeon" id="font" type="text"/>
    	</div>
		<div class="col-md-3 minh">
			<label class="attribute_label">{l s='Alto letra'}</label>
        	<input class="inputNeon form-group" id="altoLetra" type="number" value="10"/>
	</div>
    </div>    
    
    
</div>
</div>
<div class="row">
<div class="col-lg-12 form-inline">
	<div class="col-md-3 minh">

		<label class="attribute_label">{l s='Alto total texto cm'}</label>
       
        <input disabled class="inputNeon" id="size" type="number" value=""/>
		<input class="inputNeon form-group" id="altoSVG" />
    </div>
	<div class="col-md-3 minh">

		<label class="attribute_label">{l s='Ancho total texto cm'}</label>
        
	    <input disabled class="inputNeon form-group" id="anchoSVG" type="text" />
	</div>
	
	
	<div class="col-lg-6">
								
		<p id="getPng" style="margin-top: 28px;"> 
			<button  name="Submit" class="exclusive2 svgPriceBut">
				<i style="color:#fff;font-size:12px"></i> 
				<span>{l s='Aplicar Cambios'}</span> </button>
		</p>
	</div>
    
	<input class="inputNeon form-group" id="realHSVG" type="hidden" />
</div>
</div>

<fieldset class="attribute_fieldset" {if !isset($metti) || $product->id == 1652 || $product->id == 19794} style="display:none"{/if}>
	<label class="attribute_label" for="svgSelectWeigth">{l s='Grosor'}&nbsp;</label>
	<div class="attribute_list">
		<select name="svgSelectWeigth" id="svgSelectWeigth" class="form-control attribute_select no-print"></select>
	</div>
</fieldset>

 
 
<fieldset id="renderAttributes2" class="attribute_fieldset" style="margin-left:10px;">
    
</fieldset>


<div class="row">
	<div class="form-group col-lg-6">
								
		
	</div>
	<div class="form-group col-lg-6">
								
		<p id="svg_add_to_cart2" style="margin-left: 150px"> 
			<button  name="Submit" class="exclusive2 svgPriceBut">
				<i class="fa fa-shopping-cart" style="color:#fff;font-size:12px"></i> 
				<span>{l s='Añadir al carrito'}</span> </button>
		</p>
	</div>
</div>

<link href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.8.0/sweetalert2.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.8.0/sweetalert2.min.js"></script>
