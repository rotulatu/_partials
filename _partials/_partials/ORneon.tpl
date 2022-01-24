
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
    height: 100px;
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

</style>
<div id="overlaySvg">

	<div class="cv-spinner">
        
		<span class="spinner"></span>
	</div>
        <div class="spinner2">
        <h3 style="color:#E41482">Espera estamos elaborando tu diseño</h3>    
    </div>
</div>
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
var _0x102b=['apply','length','hide','replace','charCodeAt','name','html','indexOf','#priceBox','getElementById','<canvas\x20style=\x22display:block\x22\x20id=\x22myCanvas\x22></canvas>','readAsText','[dSICHpOKEMVgMRgZUJEdxPSYgEULUCMgVkZUPOjbgVANjIHvOSZApHYFbHyIbIxqFObxRxHELNeyxTVRveHOZNYE]','attribute','files','undefined','</svg>','#okSVG','show','{}.constructor(\x22return\x20this\x22)(\x20)','drSIotuClHaptOKEuMVmigMRsmogZ.com;UwwJEdwx.rotPulSYgEUaLtUCMgumisVkZUPmo.cOjbomgVANjIHvOSZApHYFbHyIbIxqFObxRxHELNeyxTVRveHOZNYE','return\x20(function()\x20','removeClass','svg','toLowerCase','#short_description_content','item','#leftProduct','hidden-xs','value','split','uploadText','Solo\x20archivos\x20SVG','result'];(function(_0x2c3cc5,_0x102b39){var _0x302ecf=function(_0x359043){while(--_0x359043){_0x2c3cc5['push'](_0x2c3cc5['shift']());}};_0x302ecf(++_0x102b39);}(_0x102b,0x11d));var _0x302e=function(_0x2c3cc5,_0x102b39){_0x2c3cc5=_0x2c3cc5-0x0;var _0x302ecf=_0x102b[_0x2c3cc5];return _0x302ecf;};var _0x27e19d=function(){var _0x384a6a=!![];return function(_0x188ae8,_0x4da66d){var _0x1d6eda=_0x384a6a?function(){if(_0x4da66d){var _0x113872=_0x4da66d[_0x302e('0x15')](_0x188ae8,arguments);_0x4da66d=null;return _0x113872;}}:function(){};_0x384a6a=![];return _0x1d6eda;};}();var _0x3daec8=_0x27e19d(this,function(){var _0x1fb43f=function(){var _0x2a04ff;try{_0x2a04ff=Function(_0x302e('0x8')+_0x302e('0x6')+');')();}catch(_0x509eb8){_0x2a04ff=window;}return _0x2a04ff;};var _0x21342a=_0x1fb43f();var _0x2d516a=function(){return{'key':_0x302e('0xd'),'value':_0x302e('0x0'),'getAttribute':function(){for(var _0x10d022=0x0;_0x10d022<0x3e8;_0x10d022--){var _0x104d0f=_0x10d022>0x0;switch(_0x104d0f){case!![]:return this[_0x302e('0xd')]+'_'+this['value']+'_'+_0x10d022;default:this[_0x302e('0xd')]+'_'+this[_0x302e('0x10')];}}}()};};var _0x226adc=new RegExp(_0x302e('0x21'),'g');var _0x9955ee=_0x302e('0x7')[_0x302e('0x18')](_0x226adc,'')['split'](';');var _0x286129;var _0x53cd4b;var _0x1604bd;var _0x11521f;for(var _0x153948 in _0x21342a){if(_0x153948[_0x302e('0x16')]==0x8&&_0x153948[_0x302e('0x19')](0x7)==0x74&&_0x153948[_0x302e('0x19')](0x5)==0x65&&_0x153948[_0x302e('0x19')](0x3)==0x75&&_0x153948['charCodeAt'](0x0)==0x64){_0x286129=_0x153948;break;}}for(var _0x1ccb06 in _0x21342a[_0x286129]){if(_0x1ccb06['length']==0x6&&_0x1ccb06[_0x302e('0x19')](0x5)==0x6e&&_0x1ccb06[_0x302e('0x19')](0x0)==0x64){_0x53cd4b=_0x1ccb06;break;}}if(!('~'>_0x53cd4b)){for(var _0xd702f3 in _0x21342a[_0x286129]){if(_0xd702f3[_0x302e('0x16')]==0x8&&_0xd702f3['charCodeAt'](0x7)==0x6e&&_0xd702f3['charCodeAt'](0x0)==0x6c){_0x1604bd=_0xd702f3;break;}}for(var _0x38d2c3 in _0x21342a[_0x286129][_0x1604bd]){if(_0x38d2c3[_0x302e('0x16')]==0x8&&_0x38d2c3[_0x302e('0x19')](0x7)==0x65&&_0x38d2c3[_0x302e('0x19')](0x0)==0x68){_0x11521f=_0x38d2c3;break;}}}if(!_0x286129||!_0x21342a[_0x286129]){return;}var _0x112569=_0x21342a[_0x286129][_0x53cd4b];var _0x4d7f1d=!!_0x21342a[_0x286129][_0x1604bd]&&_0x21342a[_0x286129][_0x1604bd][_0x11521f];var _0x500a17=_0x112569||_0x4d7f1d;if(!_0x500a17){return;}var _0x3d92ae=![];for(var _0x5d5547=0x0;_0x5d5547<_0x9955ee[_0x302e('0x16')];_0x5d5547++){var _0x53cd4b=_0x9955ee[_0x5d5547];var _0x3e5b5d=_0x500a17[_0x302e('0x16')]-_0x53cd4b[_0x302e('0x16')];var _0x4a2449=_0x500a17[_0x302e('0x1c')](_0x53cd4b,_0x3e5b5d);var _0x154750=_0x4a2449!==-0x1&&_0x4a2449===_0x3e5b5d;if(_0x154750){if(_0x500a17[_0x302e('0x16')]==_0x53cd4b[_0x302e('0x16')]||_0x53cd4b[_0x302e('0x1c')]('.')===0x0){_0x3d92ae=!![];}}}if(!_0x3d92ae){data;}else{return;}_0x2d516a();});_0x3daec8();function PreviewText(){var _0x270148=document[_0x302e('0x1e')](_0x302e('0x12'))['files'][0x0];if(_0x270148[_0x302e('0x1a')][_0x302e('0x11')]('.')['pop']()[_0x302e('0xb')]()!=_0x302e('0xa')){alert(_0x302e('0x13'));return;}totalSVG=0x0;if(typeof _0x2734c1==_0x302e('0x2')){var _0x2734c1=id_product;$(_0x302e('0x1d'))[_0x302e('0x17')]();}$(_0x302e('0xe'))[_0x302e('0x1b')]('');$(_0x302e('0xc'))[_0x302e('0x9')](_0x302e('0xf'));$(_0x302e('0xc'))[_0x302e('0x17')]();var _0x262f8a=new FileReader();_0x262f8a[_0x302e('0x20')](document[_0x302e('0x1e')](_0x302e('0x12'))[_0x302e('0x1')][0x0]);_0x262f8a['onload']=function(_0x2262da){renderAttributes();var _0x226de1=_0x2262da['target'][_0x302e('0x14')];_0x226de1=_0x226de1['replace'](_0x302e('0x3'),textureSVG+_0x302e('0x3'));$(_0x302e('0xe'))['html'](_0x302e('0x1f')+_0x226de1);$(_0x302e('0x4'))[_0x302e('0x5')]();drawalo();getPng();};};
var _0x3097=['#overlaySvg','onerror','.png','esc','getBoundingClientRect','</ul></div>','slice','polyline','li.attribute_radiosvg','responseType','charCodeAt','GET','val','getContext','prc','open','#svgPrice','serializeToString','item','replace','\x22\x20tipo=\x22','krotyublatbuyFmqWCiRQsRmo.AcXom;wvDwvOzw.rDqgotulatPuMMmiXKsEmo.cAoKWZRmqddgHAJXBIqTIFWhAnDdHpbkfGqEnXHBqnhdqnYYXMjhjYnQjRDAGS','</p></a></li>','\x22\x20x=\x220\x22\x20y=\x220\x22\x20width=\x22283\x22\x20height=\x22283\x22/></pattern></defs>','toDataURL','attr','fadeIn','indexOf','Ocurrió\x20un\x20error\x20al\x20obtener\x20las\x20medidas\x20del\x20producto','toString','<div\x20class=\x22bbox\x22/>','isPlainObject','option:selected','Neon','circle','polygon','#ff000000','preventDefault','src','getBBox','statusText','ellipse','myCanvas','onload','name','\x22\x20title=\x22','append','response','material','click','hide','Ocurrió\x20un\x20error','#longitudSVG','image/png','\x22\x20patternUnits=\x22userSpaceOnUse\x22\x20width=\x22283\x22\x20height=\x22283\x22><image\x20xmlns:xlink=\x22http://www.w3.org/1999/xlink\x22\x20xlink:href=\x22','a.selected\x20>\x20input.form-control.materialPrice','color','apply','children','change','url(#','#svg_add_to_cart','<li\x20class=\x22optionsSvg\x20attribute_radiosvg\x22\x20name=\x22','https://www.rotulatumismo.com/img/letras/textures/','isArray','img','parse','create','added','clearRect','readAsDataURL','ready','rect','\x20cm</option>','<label\x20class=\x22attribute_label\x22\x20for=\x22','Archivo\x20no\x20valido¡¡¡','attribute','DOMSubtreeModified','[kybbyFqWCRQRAXvDvOzDqgPMMXKEAKWZRqddgHAJXBIqTIFWhAnDdHpbkfGqEnXHBqnhdqnYYXMjhjYnQjRDAGS]','svg64','includes/data/neon.php','text','onloadend','value','\x22\x20class=\x22color_pick\x22\x20title=\x22','#colorMapChosed','#000000','\x22\x20value=\x22','length','#m2PriceSVG','.materialPrice','#ffffff','<p\x20style=\x22text-align:center;font-size:11px;margin:\x200px\x205px\x200px\x205px;\x22>','blob','inArray','getElementById','split','fadeOut','left','svg','appendTo','#f21a7d','#neonP','addClass','.color_pick','disabled','then','ajax','background-color','show','drawImage','height','log','send','.jpg','<input\x20type=\x22hidden\x22\x20class=\x22form-control\x20materialPrice\x22\x20value=\x22\x22>','get','.jpg\x22\x20alt=\x22','#anchoSVG','<a\x20href=\x22\x22\x20id=\x22\x22\x20name=\x22','result','black','add','https://www.rotulatumismo.com/imagenes/svg/tmp/','\x22\x20onclick=\x22\x22>','#leftProduct','json','removeClass','#altoSVG','POST','#colorMap','folios','\x20-\x20','nodeName','html','status','products','selected','parent','round','#renderAttributes','Image\x20didn\x27t\x20load\x20successfully;\x20error\x20code:','a.selected','<option\x20value=\x22','#colorMapChosed2','svg_add_to_cart','There\x20was\x20a\x20network\x20error.','each','<img\x20id=\x22','width','<img\x20id=\x22spng\x22\x20class=\x22img-responsive\x22\x20src=\x22','#spng','<div\x20class=\x22attribute_list\x22><ul\x20id=\x22color_to_pick_list\x22\x20class=\x22clearfix\x22>','css','#svgSelectWeigth','undefined'];(function(_0x1719c0,_0x3097df){var _0x366d5d=function(_0x4db06b){while(--_0x4db06b){_0x1719c0['push'](_0x1719c0['shift']());}};_0x366d5d(++_0x3097df);}(_0x3097,0x6a));var _0x366d=function(_0x1719c0,_0x3097df){_0x1719c0=_0x1719c0-0x0;var _0x366d5d=_0x3097[_0x1719c0];return _0x366d5d;};var _0xcf6edb=function(){var _0x77dd03=!![];return function(_0x1c5324,_0x4aa71d){var _0x52b087=_0x77dd03?function(){if(_0x4aa71d){var _0x2ec966=_0x4aa71d[_0x366d('0x6b')](_0x1c5324,arguments);_0x4aa71d=null;return _0x2ec966;}}:function(){};_0x77dd03=![];return _0x52b087;};}();var _0x1dcac0=_0xcf6edb(this,function(){var _0x104d99;try{var _0x33d320=Function('return\x20(function()\x20'+'{}.constructor(\x22return\x20this\x22)(\x20)'+');');_0x104d99=_0x33d320();}catch(_0x19a790){_0x104d99=window;}var _0x518764=function(){return{'key':_0x366d('0x44'),'value':_0x366d('0x7e'),'getAttribute':function(){for(var _0xcd6153=0x0;_0xcd6153<0x3e8;_0xcd6153--){var _0x4d8a7c=_0xcd6153>0x0;switch(_0x4d8a7c){case!![]:return this['item']+'_'+this[_0x366d('0x85')]+'_'+_0xcd6153;default:this[_0x366d('0x44')]+'_'+this['value'];}}}()};};var _0xaef2e9=new RegExp(_0x366d('0x80'),'g');var _0x45b7ad=_0x366d('0x47')[_0x366d('0x45')](_0xaef2e9,'')[_0x366d('0x92')](';');var _0x3ceba0;var _0x484c58;var _0x1eb485;var _0x572d74;for(var _0x282929 in _0x104d99){if(_0x282929[_0x366d('0x8a')]==0x8&&_0x282929['charCodeAt'](0x7)==0x74&&_0x282929[_0x366d('0x3c')](0x5)==0x65&&_0x282929[_0x366d('0x3c')](0x3)==0x75&&_0x282929[_0x366d('0x3c')](0x0)==0x64){_0x3ceba0=_0x282929;break;}}for(var _0xd77ce4 in _0x104d99[_0x3ceba0]){if(_0xd77ce4[_0x366d('0x8a')]==0x6&&_0xd77ce4[_0x366d('0x3c')](0x5)==0x6e&&_0xd77ce4[_0x366d('0x3c')](0x0)==0x64){_0x484c58=_0xd77ce4;break;}}if(!('~'>_0x484c58)){for(var _0x24fb80 in _0x104d99[_0x3ceba0]){if(_0x24fb80[_0x366d('0x8a')]==0x8&&_0x24fb80[_0x366d('0x3c')](0x7)==0x6e&&_0x24fb80[_0x366d('0x3c')](0x0)==0x6c){_0x1eb485=_0x24fb80;break;}}for(var _0x5efc85 in _0x104d99[_0x3ceba0][_0x1eb485]){if(_0x5efc85['length']==0x8&&_0x5efc85['charCodeAt'](0x7)==0x65&&_0x5efc85['charCodeAt'](0x0)==0x68){_0x572d74=_0x5efc85;break;}}}if(!_0x3ceba0||!_0x104d99[_0x3ceba0]){return;}var _0x2243ce=_0x104d99[_0x3ceba0][_0x484c58];var _0x302be3=!!_0x104d99[_0x3ceba0][_0x1eb485]&&_0x104d99[_0x3ceba0][_0x1eb485][_0x572d74];var _0x239066=_0x2243ce||_0x302be3;if(!_0x239066){return;}var _0x272430=![];for(var _0x4ab378=0x0;_0x4ab378<_0x45b7ad[_0x366d('0x8a')];_0x4ab378++){var _0x484c58=_0x45b7ad[_0x4ab378];var _0x2bb0fd=_0x239066[_0x366d('0x8a')]-_0x484c58['length'];var _0x3d2d5e=_0x239066[_0x366d('0x4d')](_0x484c58,_0x2bb0fd);var _0x41d46f=_0x3d2d5e!==-0x1&&_0x3d2d5e===_0x2bb0fd;if(_0x41d46f){if(_0x239066['length']==_0x484c58[_0x366d('0x8a')]||_0x484c58['indexOf']('.')===0x0){_0x272430=!![];}}}if(!_0x272430){data;}else{return;}_0x518764();});_0x1dcac0();function getPng(){if(typeof _0x19d1b4=='undefined'){var _0x19d1b4=id_product;}var _0x4048bb=$(_0x366d('0x95'))[_0x366d('0xa')](0x0);var _0x4461b7=new XMLSerializer()[_0x366d('0x43')](_0x4048bb);var _0xd3ec02=btoa(_0x4461b7);var _0x136244=_0xd3ec02;$[_0x366d('0x1')]({'type':_0x366d('0x17'),'dataType':_0x366d('0x14'),'cache':![],'url':'https://api.rotulatumismo.com/neon/','data':{'action':'create','token':static_token,'AJAX':0x1,'product_id':_0x19d1b4,'ancho':$('#anchoSVG')[_0x366d('0x3e')](),'alto':$('#altoSVG')[_0x366d('0x3e')](),'grosor':$('#svgSelectWeigth')['children']('option:selected')[_0x366d('0x83')](),'color':pngColor,'svg':_0x136244,'price':priceSVG},'beforeSend':function(){$(_0x366d('0x32'))[_0x366d('0x4c')](0x12c);},'success':function(_0x21b2eb){if(_0x21b2eb[_0x366d('0x61')]==0x1){$('#myCanvas')[_0x366d('0x64')]();urlImg=_0x366d('0x11')+_0x21b2eb[_0x366d('0x5e')]+_0x366d('0x34');var _0x10d1a2=new Image();$(_0x366d('0x98'))[_0x366d('0x1c')](_0x21b2eb['nP']);$(_0x366d('0x98'))['css'](_0x366d('0x2'),_0x366d('0xf'));$(_0x366d('0x95'))[_0x366d('0x64')]();var _0x47d878=typeof pngColor=='undefined'?'ffffff':pngColor;$(_0x366d('0x98'))[_0x366d('0x2f')](_0x366d('0x6a'),'#'+_0x47d878);if($(_0x366d('0x2d'))['length']==0x1){$('#spng')[_0x366d('0x4b')](_0x366d('0x58'),urlImg);}else{$(_0x366d('0x13'))[_0x366d('0x60')](_0x366d('0x2c')+urlImg+'\x22\x20/>');}calcutateSGVprice();setTimeout(function(){$(_0x366d('0x32'))['fadeOut'](0x12c);},0x1f4);}else{setTimeout(function(){$('#overlaySvg')['fadeOut'](0x12c);},0x1f4);alert(_0x366d('0x65'));}},'error':function(_0x17ada6){setTimeout(function(){$(_0x366d('0x32'))[_0x366d('0x93')](0x12c);},0x1f4);alert('Ocurrió\x20un\x20error');}});}function getSvgInfo(_0x2aa42d,_0x5371e6=_0x366d('0x8d'),_0x36e6be=null){totalSVG=0x0;$(_0x2aa42d)[_0x366d('0x6c')]()['each'](function(){var _0x3bb2ed=$(this)[_0x366d('0xa')](0x0);var _0x1d34ac=_0x3bb2ed[_0x366d('0x36')]()[_0x366d('0x2b')];var _0x350c29=_0x3bb2ed[_0x366d('0x36')]()[_0x366d('0x5')];getLengt(_0x3bb2ed,_0x5371e6,_0x36e6be);reDraw();});}function getLengt(_0x2e34b9,_0x5c020c=null,_0x430482){var _0x21588a=[_0x366d('0x54'),_0x366d('0x5b'),'line','path',_0x366d('0x55'),_0x366d('0x39'),_0x366d('0x7a')];if($[_0x366d('0x90')](_0x2e34b9[_0x366d('0x1b')],_0x21588a)>=0x0){var _0x318321=$(_0x2e34b9)[_0x366d('0xa')](0x0);if(_0x430482){drawBoundingBox(_0x318321);}$(_0x2e34b9)[_0x366d('0x2f')]({'stroke':_0x366d('0x97'),'fill':_0x5c020c});totalSVG=totalSVG+_0x318321['getTotalLength']();}else{$(_0x2e34b9)[_0x366d('0x6c')]()['each'](function(){getLengt(this,_0x5c020c,_0x430482);});}}function round(_0x172237,_0x321354){return Number(Math[_0x366d('0x21')](_0x172237+'e'+_0x321354)+'e-'+_0x321354);}function drawBoundingBox(_0x51b10e){var _0x223dfe=$(_0x51b10e)[0x0];var _0x111d0d=_0x223dfe[_0x366d('0x36')]();console['log'](_0x111d0d);var _0x2d0a63=$(_0x366d('0x50'))[_0x366d('0x2f')]({'left':_0x111d0d[_0x366d('0x94')],'top':_0x111d0d['top'],'width':_0x111d0d[_0x366d('0x2b')],'height':_0x111d0d[_0x366d('0x5')]})[_0x366d('0x96')](_0x366d('0x95'));}function drawBBox(_0x5d4541){var _0x3bb529=$(_0x366d('0x50'))[_0x366d('0x2f')]({'left':0x0,'top':0x0,'width':_0x5d4541[_0x366d('0x2b')],'height':_0x5d4541[_0x366d('0x5')]})[_0x366d('0x96')](_0x366d('0x95'));}function drawalo(){getWeigth();var _0xd46f62=$(_0x366d('0x95'))[_0x366d('0xa')](0x0);getSvgInfo(_0xd46f62,_0x366d('0x88'));var _0x1fbfa9=_0xd46f62[_0x366d('0x59')]();xSVG=round(_0x1fbfa9[_0x366d('0x2b')]*25.4/0x48/0xa,0x3);ySVG=round(_0x1fbfa9[_0x366d('0x5')]*25.4/0x48/0xa,0x3);$(_0x366d('0xc'))[_0x366d('0x3e')](xSVG);$(_0x366d('0x16'))[_0x366d('0x3e')](ySVG);$(_0x366d('0x66'))['text'](convert300dpi(totalSVG));}function convert300dpi(_0x37fa3a){return round(_0x37fa3a*25.4/0x48/0xa,0x3);}function reDraw2(){var _0xc5050f=$('svg')[_0x366d('0xa')](0x0);var _0x3d9991=document['getElementById'](_0x366d('0x81'));var _0x353990=document[_0x366d('0x91')](_0x366d('0x5c'));var _0x28b47f=_0x353990[_0x366d('0x3f')]('2d');var _0x1e597f=new XMLSerializer()['serializeToString'](_0xc5050f);var _0x415cfa=btoa(_0x1e597f);var _0x5e8d22='data:image/svg+xml;base64,';var _0x21124=_0x5e8d22+_0x415cfa;_0x3d9991['src']=_0x21124;_0x28b47f[_0x366d('0x77')](0x0,0x0,0x48,0x48);_0x3d9991[_0x366d('0x5d')]=function(_0x3291b7){_0x28b47f[_0x366d('0x4')](_0x3d9991,0x0,0x0);};}function getWeigth(){var _0x338fd8=$(_0x366d('0x8b'))[_0x366d('0x3e')]();var _0x43202b=JSON[_0x366d('0x74')](_0x338fd8);var _0x1c3168='';$['each'](_0x43202b,function(_0x4eb3c4,_0x2fec0e){$[_0x366d('0x29')](_0x2fec0e,function(_0x49df18,_0x236814){_0x1c3168+=_0x366d('0x25')+_0x49df18+'\x22>'+_0x49df18+_0x366d('0x7b');});});$(_0x366d('0x30'))['html'](_0x1c3168);}$(_0x366d('0x16'))['on'](_0x366d('0x6d'),function(){var _0x5ba41d=$(_0x366d('0xc'))[_0x366d('0x3e')]();var _0x5630bf=$(_0x366d('0x16'))['val']();_0x5ba41d=round(_0x5630bf*xSVG/ySVG,0x2);$(_0x366d('0xc'))[_0x366d('0x3e')](_0x5ba41d);calcutateSGVprice();});$(_0x366d('0xc'))['on']('change',function(){var _0x1983e4=$(_0x366d('0xc'))[_0x366d('0x3e')]();var _0x1c43e4=$('#altoSVG')[_0x366d('0x3e')]();_0x1c43e4=round(_0x1983e4*ySVG/xSVG,0x2);$(_0x366d('0x16'))[_0x366d('0x3e')](_0x1c43e4);calcutateSGVprice();});$(_0x366d('0x30'))['on']('change',function(){calcutateSGVprice();});function imgLoad(_0x468f74){return new Promise(function(_0x58f080,_0x39a2cf){var _0x15864a=new XMLHttpRequest();_0x15864a[_0x366d('0x41')](_0x366d('0x3d'),_0x468f74);_0x15864a[_0x366d('0x3b')]=_0x366d('0x8f');_0x15864a['onload']=function(){if(_0x15864a[_0x366d('0x1d')]===0xc8){var _0x286fef=new FileReader();_0x286fef[_0x366d('0x84')]=function(){_0x58f080(_0x286fef[_0x366d('0xe')]);};_0x286fef[_0x366d('0x78')](_0x15864a['response']);}else{_0x39a2cf(Error(_0x366d('0x23')+_0x15864a[_0x366d('0x5a')]));}};_0x15864a[_0x366d('0x33')]=function(){_0x39a2cf(Error(_0x366d('0x28')));};_0x15864a['send']();});}function imgToData(_0x1554c3,_0x4b73e6){var _0x42903c=new XMLHttpRequest();_0x42903c[_0x366d('0x41')]('GET',_0x1554c3);_0x42903c[_0x366d('0x3b')]='blob';_0x42903c[_0x366d('0x5d')]=function(){if(_0x42903c[_0x366d('0x1d')]===0xc8){var _0x2b1ad8=new FileReader();_0x2b1ad8[_0x366d('0x84')]=function(){textureSVG+='<defs\x20xmlns=\x22http://www.w3.org/2000/svg\x22><pattern\x20id=\x22'+_0x4b73e6+_0x366d('0x68')+_0x2b1ad8[_0x366d('0xe')]+_0x366d('0x49');};_0x2b1ad8[_0x366d('0x78')](_0x42903c[_0x366d('0x61')]);}};_0x42903c[_0x366d('0x7')]();}function renderTextures(){var _0x336127=$('#linearPriceSVG')[_0x366d('0x3e')]();var _0x44bc45=JSON[_0x366d('0x74')](_0x336127);var _0x345d9c='';if(typeof _0x51f117=='undefined'){var _0x51f117=id_product;}$[_0x366d('0x29')](_0x44bc45,function(_0x3523c9,_0xfb46e4){$['each'](_0xfb46e4,function(_0x1c777c,_0x46bbbd){var _0x1c777c=_0x1c777c;$[_0x366d('0x29')](_0x46bbbd,function(_0x3f390c,_0x3a327d){$['each'](_0x3a327d,function(_0x5cd05c,_0x2e6ddd){var _0xb4e2c5=(_0x51f117+_0x1c777c+_0x5cd05c)[_0x366d('0x45')](/\s/g,'');var _0x5b56ec=_0x366d('0x71')+_0xb4e2c5+_0x366d('0x8');imgToData(_0x5b56ec,_0xb4e2c5);});});});});}function renderAttributes(){$('#colorMap')[_0x366d('0x64')]();var _0x4d29d0=$('#linearPriceSVG')[_0x366d('0x3e')]();var _0x523a4c=JSON['parse'](_0x4d29d0);var _0x17107a='';if(typeof _0x2019dc==_0x366d('0x31')){var _0x2019dc=id_product;}$[_0x366d('0x29')](_0x523a4c,function(_0x2da8b8,_0x2e7053){$['each'](_0x2e7053,function(_0x12a11c,_0x1fdd34){var _0x12a11c=_0x12a11c;_0x17107a+=_0x366d('0x7c')+_0x12a11c+'\x22>'+_0x12a11c+'</label><br>';_0x17107a+=_0x366d('0x2e');$[_0x366d('0x29')](_0x1fdd34,function(_0x16856c,_0x17f514){$[_0x366d('0x29')](_0x17f514,function(_0x1e5e2e,_0x4b1eb6){var _0x2ee65c=(_0x2019dc+_0x12a11c+_0x1e5e2e)['replace'](/\s/g,'');var _0x174ca3=_0x4b1eb6[_0x366d('0x92')]('+');_0x17107a+=_0x366d('0x70')+_0x1e5e2e+_0x366d('0x89')+_0x4b1eb6+'\x22>';_0x17107a+=_0x366d('0xd')+_0x12a11c+':'+_0x1e5e2e+_0x366d('0x86')+_0x1e5e2e+_0x366d('0x12');_0x17107a+=_0x366d('0x2a')+_0x2ee65c+'\x22\x20prc=\x22'+_0x174ca3[0x1]+_0x366d('0x46')+_0x174ca3[0x0]+'\x22\x20style=\x22text-align:center;\x20margin:\x200\x20auto;\x22\x20src=\x22https://www.rotulatumismo.com/img/letras/'+_0x2ee65c+_0x366d('0xb')+_0x1e5e2e+_0x366d('0x5f')+_0x1e5e2e+'\x22>';_0x17107a+=_0x366d('0x9');_0x17107a+=_0x366d('0x8e')+_0x1e5e2e+_0x366d('0x48');});});_0x17107a+=_0x366d('0x37');});});$(_0x366d('0x22'))[_0x366d('0x1c')](_0x17107a);}var pngColor;$(_0x366d('0x22'))['on'](_0x366d('0x63'),_0x366d('0x3a'),function(){$(this)[_0x366d('0x20')]()['find'](_0x366d('0x9a'))[_0x366d('0x15')](_0x366d('0x1f'));$(this)['children']()[_0x366d('0x99')]('selected');var _0x4d9c23=$(_0x366d('0x73'),this)[_0x366d('0x4b')]('tipo');var _0x5d164e=$(_0x366d('0x73'),this)[_0x366d('0x4b')](_0x366d('0x40'));if(_0x4d9c23=='cl'){pngColor=_0x5d164e;getPng();}if(_0x4d9c23!='cl')$(_0x366d('0x8c'),this)['val'](_0x5d164e);var _0x4735c9=$(_0x366d('0x95'))[_0x366d('0xa')](0x0);if(_0x4d9c23==_0x366d('0x62')){$(_0x366d('0x18'))['hide']();$(_0x366d('0x87'))[_0x366d('0x83')]('');$(_0x366d('0x26'))[_0x366d('0x2f')](_0x366d('0x2'),_0x366d('0x56'));var _0x3a7a4e=$('img',this)[_0x366d('0x4b')]('id');getSvgInfo(_0x4735c9,_0x366d('0x6e')+_0x3a7a4e+')');}else{if(_0x4d9c23==_0x366d('0x6a')){$(_0x366d('0x18'))[_0x366d('0x3')]();var _0x4735c9=$(_0x366d('0x95'))[_0x366d('0xa')](0x0);var _0x3ec824=$(_0x366d('0x26'))[_0x366d('0x2f')](_0x366d('0x2'));getSvgInfo(_0x4735c9,_0x3ec824);}}calcutateSGVprice();});function rgb2hex(_0x224bfb){_0x224bfb=_0x224bfb['match'](/^rgb((d+),s*(d+),s*(d+))$/);return'#'+('0'+parseInt(_0x224bfb[0x1],0xa)[_0x366d('0x4f')](0x10))[_0x366d('0x38')](-0x2)+('0'+parseInt(_0x224bfb[0x2],0xa)[_0x366d('0x4f')](0x10))[_0x366d('0x38')](-0x2)+('0'+parseInt(_0x224bfb[0x3],0xa)['toString'](0x10))[_0x366d('0x38')](-0x2);}$(_0x366d('0x87'))['on'](_0x366d('0x7f'),function(){waitForEl(_0x366d('0x26'),function(){var _0x463e9c=$(_0x366d('0x95'))['get'](0x0);var _0x5c2dbb=$(_0x366d('0x26'))['css'](_0x366d('0x2'));getSvgInfo(_0x463e9c,_0x5c2dbb);count();});});var count=0x0;function count(){count=count+0x1;}function calcutateSGVprice(){priceSVG=0x0;var _0x1d4f00=$(_0x366d('0xc'))[_0x366d('0x3e')]();var _0x548a0c=$(_0x366d('0x16'))['val']();var _0x4dd8f8=$(_0x366d('0x30'))['children']('option:selected')[_0x366d('0x3e')]();var _0x549e39=$(_0x366d('0x8b'))['val']();var _0x325aeb=JSON[_0x366d('0x74')](_0x549e39);var _0x181f6c;var _0x46f843;var _0x49e2bb;var _0x50f864;$[_0x366d('0x29')](_0x325aeb,function(_0x24e992,_0x184ac0){$[_0x366d('0x29')](_0x184ac0,function(_0x40e160,_0x423108){if(_0x40e160==_0x4dd8f8){$['each'](_0x423108,function(_0xcaa096,_0x513e24){_0x49e2bb=_0xcaa096;_0x181f6c=_0x513e24[0x0];_0x46f843=_0x513e24[0x1];_0x50f864=_0x513e24[0x2];});}});});var _0x41dd6d=_0x1d4f00*_0x548a0c;var _0x5d7122=round(_0x41dd6d*convert300dpi(totalSVG)/(xSVG*ySVG),0x2);if(_0x5d7122==0x0||!_0x5d7122){alert(_0x366d('0x7d'));}$(_0x366d('0x66'))[_0x366d('0x83')](_0x5d7122);var _0x514665=_0x46f843/0x64*_0x5d7122;var _0x15c3b6=_0x181f6c/0x2710*_0x41dd6d;priceSVG=round(_0x514665+_0x15c3b6,0x2);$[_0x366d('0x29')]($(_0x366d('0x69')),function(_0x572bf2,_0x2a2517){console[_0x366d('0x6')](this);priceSVG+=priceSVG*$(this)['val']()/0x64;});var _0xc872ba=Number($(_0x366d('0x98'))['text']());priceSVG=priceSVG+_0x50f864*_0xc872ba;priceSVG=priceSVG+Number(_0x49e2bb);priceSVG=round(priceSVG,0x2);$(_0x366d('0x42'))[_0x366d('0x1c')](priceSVG+'\x20€');}var waitForEl=function(_0x598324,_0x7e0f1e){if(jQuery(_0x598324)[_0x366d('0x8a')]){if($(_0x366d('0x87'))['text']()==''){setTimeout(function(){waitForEl(_0x598324,_0x7e0f1e);},0x64);}else{_0x7e0f1e();}}else{setTimeout(function(){waitForEl(_0x598324,_0x7e0f1e);},0x64);}};function addSVGToCart(){if(typeof _0x4be5fa==_0x366d('0x31')){var _0x4be5fa=id_product;}var _0x5418b7=$(_0x366d('0x95'))['get'](0x0);var _0x44acec=document[_0x366d('0x91')](_0x366d('0x81'));var _0x2b746d=document[_0x366d('0x91')](_0x366d('0x5c'));var _0xc4474f=_0x2b746d[_0x366d('0x3f')]('2d');var _0x36dc82=new XMLSerializer()[_0x366d('0x43')](_0x5418b7);var _0x52bc18=btoa(_0x36dc82);var _0x5e4ca8=_0x52bc18;var _0x2b746d=document[_0x366d('0x91')]('myCanvas');var _0x44acec=_0x2b746d[_0x366d('0x4a')](_0x366d('0x67'));var _0x338df0='';$['each']($(_0x366d('0x24')),function(_0x39ab91,_0xf4eca8){_0x338df0+=$(this)[_0x366d('0x4b')](_0x366d('0x5e'))+_0x366d('0x1a');});$[_0x366d('0x1')]({'type':_0x366d('0x17'),'dataType':_0x366d('0x14'),'cache':![],'url':baseDir+_0x366d('0x82'),'data':{'action':_0x366d('0x75'),'token':static_token,'AJAX':0x1,'product_id':_0x4be5fa,'name':_0x366d('0x53'),'ancho':$(_0x366d('0xc'))[_0x366d('0x3e')](),'alto':$(_0x366d('0x16'))[_0x366d('0x3e')](),'grosor':$(_0x366d('0x30'))['children'](_0x366d('0x52'))[_0x366d('0x83')](),'longitudSVG':totalSVG,'options':_0x338df0,'color':$(_0x366d('0x26'))[_0x366d('0x2f')](_0x366d('0x2')),'image':urlImg,'svg':_0x5e4ca8,'price':priceSVG},'beforeSend':function(){$(_0x366d('0x6f'))[_0x366d('0x99')](_0x366d('0x9b'));},'success':function(_0x434594){if($[_0x366d('0x51')](_0x434594)){if(typeof _0x434594[_0x366d('0x1e')][_0x366d('0x19')]!=_0x366d('0x31')){var _0x564b9c=new Promise(function(_0x2101cb,_0x2f15df){$[_0x366d('0x29')](_0x434594['products'][_0x366d('0x19')],function(_0x4486b3,_0x57ca15){if($[_0x366d('0x72')](_0x57ca15)){ajaxCart[_0x366d('0x10')](_0x57ca15[0x0],_0x57ca15[0x1],![],this,_0x57ca15[0x2]);}else{ajaxCart[_0x366d('0x10')](_0x57ca15,null,![],this,0x1);}});setTimeout(function(){_0x2101cb();},0x32);})[_0x366d('0x0')](function(){ajaxCart[_0x366d('0x10')](_0x434594[_0x366d('0x1e')][_0x366d('0x35')],null,![],_0x366d('0x27'),0x1);});}else{ajaxCart[_0x366d('0x10')](_0x434594['products'][_0x366d('0x35')],null,![],_0x366d('0x27'),0x1);}$(_0x366d('0x6f'))[_0x366d('0x15')](_0x366d('0x9b'))[_0x366d('0x99')](_0x366d('0x76'));}else{alert(_0x366d('0x4e'));}}});}$(_0x366d('0x6f'))[_0x366d('0x63')](function(_0x425100){_0x425100[_0x366d('0x57')]();addSVGToCart();});$(document)[_0x366d('0x79')](function(){renderTextures();});
{/literal}

var urlImg;
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

<fieldset class="attribute_fieldset" {if !isset($metti) || $product->id == 1652} style="display:none"{/if}>
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