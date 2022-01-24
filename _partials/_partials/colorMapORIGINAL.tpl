<style>
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
</style>

<script>

var totalSVG;
var xSVG;  
var ySVG; 
var textureSVG = '';
var priceSVG;
$("#uploadText").change(function() {	
	PreviewText();
});  
{literal}

{/literal}
function PreviewText() {
			var thefile = document.getElementById("uploadText").files[0];
			
			if(thefile.name.split('.').pop().toLowerCase() != 'svg'){
				alert('Solo archivos SVG');
				return;
			}
			totalSVG = 0;
			if(typeof product_id == 'undefined'){
				var product_id = id_product;
				$("#priceBox").hide();
			}
			$('#leftProduct').html('');
			$('#short_description_content').removeClass('hidden-xs');
			$('#short_description_content').hide();
			
			


            var oFReader = new FileReader();
            oFReader.readAsText(document.getElementById("uploadText").files[0]);
            oFReader.onload = function (oFREvent) {
               
				renderAttributes();
				var text = oFREvent.target.result;
				text = text.replace("</svg>", textureSVG+"</svg>");
				$('#leftProduct').html('<canvas style="display:block" id="myCanvas"></canvas>'+text);
				$('#okSVG').show();
				drawalo();
				
            };
};

function getSvgInfo(el, background = '#ffffff', validate = null){	
		totalSVG = 0;
		$(el).children().each(function () {
		var domElement = $( this ).get(0);
		var w = domElement.getBoundingClientRect().width;
		var h = domElement.getBoundingClientRect().height;
		//console.log(w+' x '+h);  
		getLengt(domElement, background, validate); 
		reDraw();
	});
}

        
function getLengt(domElement, background = null, validate){
    //var domElement = path;   
	var arr = [ "circle","ellipse","line","path","polygon","polyline","rect" ];	
    if($.inArray( domElement.nodeName, arr ) >= 0){
		var path = $(domElement).get(0);
		if(validate){
			drawBoundingBox(path);
		}
		$(domElement).css({
            stroke: '#f21a7d',
			fill: background	
		});
		totalSVG = totalSVG + path.getTotalLength();
	  
    }else{
		$(domElement).children().each(function () {
			//drawBoundingBox(this);
			getLengt(this, background, validate);
		}); 
    }
}

function round(value, decimals) {
	return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
}
function drawBoundingBox(selector) {
    // get the element
    var el = $(selector)[0];
	
    // get the bounding box and matrix
    var bbox = el.getBoundingClientRect();
	console.log(bbox);
    // make a div in the screen space around the object
    var $div = $('<div class="bbox"/>').css({
            left: bbox.left,
            top: bbox.top,
            width: bbox.width,
            height: bbox.height
        })
        .appendTo('svg');
}
function drawBBox(el) {
        var $div = $('<div class="bbox"/>').css({
            left: 0,
            top: 0,
            width: el.width,
            height: el.height
        })
        .appendTo('svg');
}
function drawalo(){
	getWeigth();
	var svg = $('svg').get(0);
	getSvgInfo(svg, '#000000');
	var bBox = svg.getBBox();
	//var bBox2 = svg.getBoundingClientRect();
	xSVG = round(((bBox.width * 25.4)/72)/10 , 3);
	ySVG = round(((bBox.height * 25.4)/72)/10 , 3);
	//totalSVG = round((totalSVG * 25.4)/300, 3);
	
	//var result300 = 'Longitud en mm a 300DPI '+ totalSVG;
	//result300 += '<br>Area en mm a 300DPI '+ xSVG +'mm X ' + ySVG;
	
	//$('#result300').html(result300);
	$('#anchoSVG').val(xSVG);
	$('#altoSVG').val(ySVG);
	$('#longitudSVG').text(convert300dpi(totalSVG));
	calcutateSGVprice(xSVG, ySVG);
	
}
function convert300dpi(val){
	return round(((val * 25.4)/72)/10, 3); // 0.0264583333 cm 0.2645833333 mm
}

function reDraw2(){
	var svg = $('svg').get(0);
	
	var img = document.getElementById('svg64');
	var canvas = document.getElementById('myCanvas');
	var ctx = canvas.getContext('2d');
	
			
	var xml = new XMLSerializer().serializeToString(svg);
	var svg64 = btoa(xml);
	var b64Start = 'data:image/svg+xml;base64,';
	var image64 = b64Start + svg64;
	img.src = image64;
	ctx.clearRect(0, 0, 72, 72);	
	img.onload = function (e){
		//ctx.drawImage(img, 0, 0, 300, 300);
		ctx.drawImage(img, 0, 0);

	}
	
}

function getWeigth(){
	var m = $('#m2PriceSVG').val();
	var prices = JSON.parse(m);
	var option = '';
	$.each(prices, function (key, data) {		
        $.each(data, function (keyn, data) {
		    option += '<option value="'+keyn+'">'+keyn+' cm</option>';
		    
        });
	});
	$('#svgSelectWeigth').html(option);
}
$('#altoSVG').on('change', function(){
	
	var x = $('#anchoSVG').val();
	var y = $('#altoSVG').val();
	x = round((y * xSVG / ySVG) ,2);
	$('#anchoSVG').val(x);
	calcutateSGVprice();
});
$('#anchoSVG').on('change', function(){
	var x = $('#anchoSVG').val();
	var y = $('#altoSVG').val();
	y = round((x * ySVG / xSVG) ,2);
	$('#altoSVG').val(y);	
	calcutateSGVprice();
});
$('#svgSelectWeigth').on('change', function(){	
	calcutateSGVprice();
});
function imgLoad(url) {
    // Create new promise with the Promise() constructor;
    // This has as its argument a function
    // with two parameters, resolve and reject
    return new Promise(function(resolve, reject) {
      // Standard XHR to load an image
      var request = new XMLHttpRequest();
      request.open('GET', url);
      request.responseType = 'blob';
      // When the request loads, check whether it was successful
      request.onload = function() {
        if (request.status === 200) {
        // If successful, resolve the promise by passing back the request response
		  var reader = new FileReader();
		  console.log(request.response);
		  reader.onloadend = function() {
			  console.log(reader.result);
			resolve(reader.result);
		  }
		  reader.readAsDataURL(request.response);
		  


//          resolve(reader.readAsDataURL(request.response));
        } else {
        // If it fails, reject the promise with a error message
          reject(Error('Image didn\'t load successfully; error code:' + request.statusText));
        }
      };
      request.onerror = function() {
      // Also deal with the case when the entire request fails to begin with
      // This is probably a network error, so reject the promise with an appropriate message
          reject(Error('There was a network error.'));
      };
      // Send the request
      request.send();
    });
  }
function imgToData(urlImge, filename){
	var request = new XMLHttpRequest();
	request.open('GET', urlImge);
	request.responseType = 'blob';
	// When the request loads, check whether it was successful
	
	request.onload = function() {
		if (request.status === 200) {
			
			
			// If successful, resolve the promise by passing back the request response
			var reader = new FileReader();
			//console.log(request.response);
			
			reader.onloadend = function() {
				//console.log(reader.result);
				//dataImg = reader.result;
			
				textureSVG += '<defs xmlns="http://www.w3.org/2000/svg"><pattern id="'+filename+'" patternUnits="userSpaceOnUse" width="283" height="283"><image xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="'+reader.result+'" x="0" y="0" width="283" height="283"/></pattern></defs>';
				//console.log(textureSVG);
			}
			reader.readAsDataURL(request.response);						
		}
	};					
	request.send();
	
}
//textureSVG += '</svg>';
function renderTextures(){
	var opt = $('#linearPriceSVG').val();
	var options = JSON.parse(opt);
	var htmlOptions = '';
	if(typeof product_id == 'undefined'){
		var product_id = id_product;
	}
	
	$.each(options, function (tipo, opciones) {		
		$.each(opciones, function (nomeOpTipo, keys) {	
			//alert(nomeOpTipo);
			var nomeOpTipo = nomeOpTipo;
			
			$.each(keys, function (keyOp, nomeOpts) {
				$.each(nomeOpts, function (nomeVal, valore) {
				//	alert(nomeVal+ ' ' +valore);
					var filename = (product_id+nomeOpTipo+nomeVal).replace(/\s/g,'');
					
					var urlImge = 'https://www.rotulatumismo.com/img/letras/textures/'+filename+'.jpg';
					imgToData(urlImge,filename);
				});
			});
		});     
	});
	//textureSVG += '</svg>';
}


function renderAttributes(){
	$("#colorMap").hide();
	var opt = $('#linearPriceSVG').val();
	var options = JSON.parse(opt);
	var htmlOptions = '';
	if(typeof product_id == 'undefined'){
		var product_id = id_product;
	}
	$.each(options, function (tipo, opciones) {		
		$.each(opciones, function (nomeOpTipo, keys) {	
			//alert(nomeOpTipo);
			var nomeOpTipo = nomeOpTipo;
			htmlOptions +='<label class="attribute_label" for="'+nomeOpTipo+'">'+nomeOpTipo+'</label><br>';
			htmlOptions +='<div class="attribute_list"><ul id="color_to_pick_list" class="clearfix">';
			$.each(keys, function (keyOp, nomeOpts) {
				$.each(nomeOpts, function (nomeVal, valore) {
				//	alert(nomeVal+ ' ' +valore);
					var filename = (product_id+nomeOpTipo+nomeVal).replace(/\s/g,'');
					var texturePrice = valore.split('+');
					//var urlImge = 'https://www.rotulatumismo.com/img/letras/textures/'+filename+'.jpg';
					//imgToData(urlImge);
					htmlOptions +='<li class="optionsSvg attribute_radiosvg" name="'+nomeVal+'" value="'+valore+'">';					
					htmlOptions +='<a href="" id="" name="'+nomeOpTipo+':'+nomeVal+'" class="color_pick" title="'+nomeVal+'" onclick="">';
					htmlOptions +='<img id="'+filename+'" prc="'+texturePrice[1]+'" tipo="'+texturePrice[0]+'" style="text-align:center; margin: 0 auto;" src="https://www.rotulatumismo.com/img/letras/'+filename+'.jpg" alt="'+nomeVal+'" title="'+nomeVal+'">';
					htmlOptions +='<input type="hidden" class="form-control materialPrice" value="">';
					htmlOptions +='<p style="text-align:center;font-size:11px;margin: 0px 5px 0px 5px;">'+nomeVal+'</p></a></li>';
					
					
				});
			});
			htmlOptions +='</ul></div>';
			
		});     
	});
	
	$('#renderAttributes').html(htmlOptions);
}

$('#renderAttributes').on('click', 'li.attribute_radiosvg', function(){

	//$('.color_pick').removeClass('selected');
	$(this).parent().find('.color_pick').removeClass('selected');
	$(this).children().addClass('selected');	
	var material = $('img', this).attr('tipo');
	var materialPrice = $('img', this).attr('prc');
	//var texturePrice = tipo.split('+');
	
	//var material = texturePrice[0];
	//var materialPrice = texturePrice[1];
	
	$('.materialPrice', this).val(materialPrice);
	
	var svg = $('svg').get(0);
	if(material == "material"){
		$("#colorMap").hide();
		$("#colorMapChosed").text('');
		$("#colorMapChosed2").css('background-color', '#ff000000');
		var texture = $('img', this).attr('id');		
		getSvgInfo(svg, 'url(#'+texture+')');
		
	}else{
		if(material == "color"){
				$("#colorMap").show();
				var svg = $('svg').get(0);
				var colorB = $("#colorMapChosed2").css("background-color");
				getSvgInfo(svg, colorB);
				//$("#colorMapChosed").text('');
				//$("#colorMapChosed2").css('background-color', '#ff000000');				
		}
		
	}	
	calcutateSGVprice();
});

function rgb2hex(rgb){
 rgb = rgb.match(/^rgb((d+),s*(d+),s*(d+))$/);
 return "#" +
  ("0" + parseInt(rgb[1],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[2],10).toString(16)).slice(-2) +
  ("0" + parseInt(rgb[3],10).toString(16)).slice(-2);
}

$("#colorMapChosed").on('DOMSubtreeModified', function() {
    
	waitForEl("#colorMapChosed2", function() {
	
	// work the magic					
		var svg = $('svg').get(0);
		var colorB = $("#colorMapChosed2").css("background-color");
		
		getSvgInfo(svg, colorB);
		count();
	});
	
	
	
	
});
var count = 0;
function count(){
	count = count +1;
	console.log(count);
}


function calcutateSGVprice(){
	priceSVG = 0;
	var x = $('#anchoSVG').val();
	var y = $('#altoSVG').val();
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
	$.each(prices, function (key, data) {
		$.each(data, function (key1, data1) {
            //console.log(data1);
            if(key1 == indexPrice){
           	    $.each(data1, function (key2, data2) {	
				    $.each(data2, function (precioM2, precioLinear) {	
				    		//alert(key3+' '+data3);
							weightPrice = precioM2;
							linearPrice = precioLinear;
			        });					
			    });
            }
		});     
	});
	
	var area = (x * y);
	var newLongitud = round(area * convert300dpi(totalSVG)/ (xSVG * ySVG), 2);
	if(newLongitud == 0 || !newLongitud){
		alert('Archivo no valido¡¡¡');
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
	$.each($('a.selected > input.form-control.materialPrice'), function (key, data) {
		//alert($(this).val());
		priceSVG += priceSVG * $(this).val() / 100;
	});
	priceSVG = round(priceSVG , 2);
	/* Result price whitout options */
	
	$('#svgPrice').html(priceSVG + ' €');
	
}
var waitForEl = function(selector, callback) {
  if (jQuery(selector).length) {
	  if($("#colorMapChosed").text() == "" ){
		   setTimeout(function() {
				waitForEl(selector, callback);
			}, 100);
	  }else{
		
		callback();
	  }
  } else {
    setTimeout(function() {
      waitForEl(selector, callback);
    }, 100);
  }
};

function addSVGToCart(){
	if(typeof product_id == 'undefined'){
		var product_id = id_product;
	}
        //crp.shopwindow.image = crp.canvas.toDataURL();
        //var dataSW = JSON.stringify(crp.shopwindow);
		// var ancho = $('#anchoSVG').val();
		// var alto = $('#altoSVG').val();
		//var longitudSVG = totalSVG;
		//var img = reDraw();
		var svg = $('svg').get(0);
	
	var img = document.getElementById('svg64');
	var canvas = document.getElementById('myCanvas');
	var ctx = canvas.getContext('2d');
	
			
	var xml = new XMLSerializer().serializeToString(svg);
	var svg64 = btoa(xml);
	console.log(svg64);
	//var b64Start = 'data:image/svg+xml;base64,';
	var image64 =svg64;

		var canvas = document.getElementById('myCanvas');
		var img = canvas.toDataURL('image/png');
		var text ='';
		$.each($('a.selected'), function (key, data) {
			text += $(this).attr('name')+' - ';
		});
        $.ajax({
            type: 'POST',
            dataType: 'json',
            cache: false,
            url: baseDir + 'includes/data/letras.php',
            data: {
                action: 'create',
                // dataSW: dataSW,
                token: static_token,
                AJAX: 1,
                // factor: crp.measures.factor,
                // paper: paper,
				product_id : product_id,
                ancho: $('#anchoSVG').val(),
                alto: $('#altoSVG').val(),
				grosor: $('#svgSelectWeigth').children("option:selected").text(),
				longitudSVG: totalSVG,
				options: text,
				color: $("#colorMapChosed2").css("background-color"),
				image : img,
				svg : image64,
				price: priceSVG
            },
            beforeSend: function() {
                $("#svg_add_to_cart").addClass('disabled');
            },
            success: function(data) {
                if ($.isPlainObject(data)) {
                    if (typeof data.products['folios'] != "undefined") {
                        var a = new Promise(function(resolve, reject) {
                            $.each(data.products['folios'], function(k, v) {
                                if ($.isArray(v)) {
                                    ajaxCart.add(v[0], v[1], false, this, v[2]);
                                } else {
                                    ajaxCart.add(v, null, false, this, 1);
                                }
                            });
                            setTimeout(function() {
                                resolve();
                            }, 50);
                        }
                        ).then(function() {
                            ajaxCart.add(data.products['esc'], null, false, "svg_add_to_cart", 1);
                        });
                    } else {
                        ajaxCart.add(data.products['esc'], null, false, "svg_add_to_cart", 1);
                    }
                    $("#svg_add_to_cart").removeClass('disabled').addClass('added');
                } else {
                    alert("Ocurrió un error al obtener las medidas del producto");
                }
            }
        })
    }
$("#svg_add_to_cart").click(function(e) {
    e.preventDefault();
    addSVGToCart();
});
$( document ).ready(function() {
   renderTextures();
});
</script>

<script>
function reDraw(){
	const canvas = document.getElementById('myCanvas')
	const ctx = canvas.getContext('2d')
	const win = {
	w: window.innerWidth,
	h: window.innerHeight,
	}
	const img = new Image()
	
	
	/*--------------------
	Cover Image
	--------------------*/
	const coverImg = (img, type = 'cover') => {
		const imgRatio = img.height / img.width
		const winRatio = window.innerHeight / $('#leftProduct').innerWidth()
		if ((imgRatio < winRatio && type === 'contain') || (imgRatio > winRatio && type === 'cover')) {
			const h = $('#leftProduct').innerWidth() * imgRatio
			ctx.drawImage(img, 0, (window.innerHeight - h) / 2, $('#leftProduct').innerWidth(), h)
		}
		if ((imgRatio > winRatio && type === 'contain') || (imgRatio < winRatio && type === 'cover')) {
			const w = $('#leftProduct').innerWidth() * winRatio / imgRatio
			ctx.drawImage(img, 0, 0, w, window.innerHeight)
		}
	}
	
	
	/*--------------------
	Render
	--------------------*/
	const render = () => {
	ctx.clearRect(0, 0, win.w, win.h)
	const type = 'contain'
	coverImg(img, type)
	requestAnimationFrame(render)
	}
	
	
	/*--------------------
	Init
	--------------------*/
	const init = () => {
	resize()
	render()
	}
	
	
	/*--------------------
	Preload Image
	--------------------*/
	const svg = $('svg').get(0);
	
	//var img = document.getElementById('svg64');
	const imgSrc = document.getElementById('svg64')
	
	
			
	const xml = new XMLSerializer().serializeToString(svg);
	const svg64 = btoa(xml);
	const b64Start = 'data:image/svg+xml;base64,';
	const image64 = b64Start + svg64;
	
	//const imgSrc = 'https://raw.githubusercontent.com/supahfunk/supah-codepen/master/autumn.jpg'
	img.onload = init
	img.src = image64
	
	
	/*--------------------
	Resize
	--------------------*/
	const resize = () => {
		console.log('resi')
			win.w = $('#leftProduct').innerWidth()
			win.h = window.innerHeight
			canvas.width = win.w
			canvas.height = win.h
			{literal}
				canvas.style.width = '${win.w}px'
				canvas.style.height = '${win.h}px'
			{/literal}
	}
	window.addEventListener('resize', init)
}
</script>

<fieldset class="attribute_fieldset" {if !isset($metti)} style="display:none"{/if}>
	<label class="attribute_label" for="svgSelectWeigth">Grosor&nbsp;</label>
	<div class="attribute_list">
		<select name="svgSelectWeigth" id="svgSelectWeigth" class="form-control attribute_select no-print"></select>
	</div>
</fieldset>

 
 
<fieldset id="renderAttributes" class="attribute_fieldset">
    
</fieldset>

<fieldset id="colorAttributes" class="attribute_fieldset">
		<div id="colorMap" class="attribute_list" style="">
            <label class="attribute_label">Elige el color</label>
            <br>
            <ul id="color_to_pick_list" class="clearfix">
                <li class="attribute_radio pointer" name="" value="" {if !isset($metti)} style="display:none">{else}style="display:block">{/if}
                    <a href="/includes/color-maps/pantone.html" id="pantone" name="Pantone" class="color_pick iframe" title="Pantone" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://cdn3.rotulatumismo.com/img/co/pantone.png" alt="Pantone" title="Pantone"></a>
                </li>
                <li class="attribute_radio pointer" name="" value="" {if !isset($metti)} style="display:none">{else}style="display:block">{/if}
                    <a href="/includes/color-maps/ncs.html" id="ncs" name="Ncs" class="color_pick iframe" title="Ncs" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://cdn3.rotulatumismo.com/img/co/ncs.png" alt="Ncs" title="Ncs"></a>
                </li>
                <li class="attribute_radio pointer" name="" value="" {if !isset($metti)} style="display:none">{else}style="display:block">{/if}
                    <a href="/includes/color-maps/ral.html" id="ral" name="Ral" class="color_pick iframe" title="Ral" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://cdn3.rotulatumismo.com/img/co/ral.png" alt="Ral" title="Ral"></a>
                </li>
                <li class="attribute_radio pointer" name="" value="" {if !isset($metti)} style="display:block">{else}style="display:none">{/if}
                    <a href="/includes/color-maps/oracal.html" id="oracal" name="oracal" class="color_pick iframe" title="Oracal" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://cdn3.rotulatumismo.com/img/co/oracal.png" alt="Oracal" title="Oracal"></a>
                </li>
            </ul>
			<script type="text/javascript">$('a.iframe').fancybox({
																	'padding':  20,
																	'fitToView' : false,
																	'autoSize'  : false,
																	'width' : '90%',
																	'height'    : '90%',
																	'type':     'iframe',																	
																});</script>
            <br>
            <div id="colorMapChosed" style="float:left;"></div>
            <div id="colorMapChosed2" style="display:none;margin-left:5px;float:left;width:15px;height:15px;background-color:#f6f6f6"></div>
        </div>
</fieldset>