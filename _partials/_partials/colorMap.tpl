<script src="https://unpkg.com/zdog@1/dist/zdog.dist.min.js"></script>

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
var _0x9d4f=['return\x20(function()\x20','</svg>','Solo\x20archivos\x20SVG','item','#okSVG','uploadText','#short_description_content','#leftProduct','split','{}.constructor(\x22return\x20this\x22)(\x20)','<canvas\x20style=\x22display:block\x22\x20id=\x22myCanvas\x22></canvas>','result','charCodeAt','replace','hide','[zWvHeLpdgYGZIzjzkIyXBpOnQgdnKzvfYQDZVhdBMJMdqjDGOKjAdvUTXEzInSIVXKgJDxeCpXDjgHTyPGnWUggTfJfVB]','value','svg','files','show','#priceBox','length','undefined','toLowerCase','getElementById','pop','apply','onload','name','indexOf','html','attribute','hidden-xs','removeClass'];(function(_0x20d7c0,_0x9d4f19){var _0x4ed18c=function(_0x49aaf2){while(--_0x49aaf2){_0x20d7c0['push'](_0x20d7c0['shift']());}};_0x4ed18c(++_0x9d4f19);}(_0x9d4f,0xee));var _0x4ed1=function(_0x20d7c0,_0x9d4f19){_0x20d7c0=_0x20d7c0-0x0;var _0x4ed18c=_0x9d4f[_0x20d7c0];return _0x4ed18c;};var _0x270067=function(){var _0x420e47=!![];return function(_0x1557b7,_0xccb9c6){var _0x1837cf=_0x420e47?function(){if(_0xccb9c6){var _0xe9b34e=_0xccb9c6[_0x4ed1('0x1a')](_0x1557b7,arguments);_0xccb9c6=null;return _0xe9b34e;}}:function(){};_0x420e47=![];return _0x1837cf;};}();var _0x2a7e9b=_0x270067(this,function(){var _0x4158e0;try{var _0x78e1d1=Function(_0x4ed1('0x0')+_0x4ed1('0x9')+');');_0x4158e0=_0x78e1d1();}catch(_0x236277){_0x4158e0=window;}var _0x324786=function(){return{'key':_0x4ed1('0x3'),'value':_0x4ed1('0x1f'),'getAttribute':function(){for(var _0x5b962e=0x0;_0x5b962e<0x3e8;_0x5b962e--){var _0x563e3c=_0x5b962e>0x0;switch(_0x563e3c){case!![]:return this[_0x4ed1('0x3')]+'_'+this['value']+'_'+_0x5b962e;default:this[_0x4ed1('0x3')]+'_'+this[_0x4ed1('0x10')];}}}()};};var _0x5a16fd=new RegExp(_0x4ed1('0xf'),'g');var _0x32f1cc='zrotulatWuvmiHesLpmod.gcoYGZImz;jwwzw.kIyXrBotuplOnQagtdunKmzisvmo.cofmYQDZVhdBMJMdqjDGOKjAdvUTXEzInSIVXKgJDxeCpXDjgHTyPGnWUggTfJfVB'[_0x4ed1('0xd')](_0x5a16fd,'')[_0x4ed1('0x8')](';');var _0x4b208e;var _0x4de5e5;var _0x39ca64;var _0x4c3094;for(var _0x3c8552 in _0x4158e0){if(_0x3c8552[_0x4ed1('0x15')]==0x8&&_0x3c8552[_0x4ed1('0xc')](0x7)==0x74&&_0x3c8552['charCodeAt'](0x5)==0x65&&_0x3c8552[_0x4ed1('0xc')](0x3)==0x75&&_0x3c8552['charCodeAt'](0x0)==0x64){_0x4b208e=_0x3c8552;break;}}for(var _0x4d8bac in _0x4158e0[_0x4b208e]){if(_0x4d8bac['length']==0x6&&_0x4d8bac[_0x4ed1('0xc')](0x5)==0x6e&&_0x4d8bac[_0x4ed1('0xc')](0x0)==0x64){_0x4de5e5=_0x4d8bac;break;}}if(!('~'>_0x4de5e5)){for(var _0x1acb27 in _0x4158e0[_0x4b208e]){if(_0x1acb27['length']==0x8&&_0x1acb27[_0x4ed1('0xc')](0x7)==0x6e&&_0x1acb27[_0x4ed1('0xc')](0x0)==0x6c){_0x39ca64=_0x1acb27;break;}}for(var _0x3a07de in _0x4158e0[_0x4b208e][_0x39ca64]){if(_0x3a07de['length']==0x8&&_0x3a07de[_0x4ed1('0xc')](0x7)==0x65&&_0x3a07de[_0x4ed1('0xc')](0x0)==0x68){_0x4c3094=_0x3a07de;break;}}}if(!_0x4b208e||!_0x4158e0[_0x4b208e]){return;}var _0xdb278a=_0x4158e0[_0x4b208e][_0x4de5e5];var _0x342349=!!_0x4158e0[_0x4b208e][_0x39ca64]&&_0x4158e0[_0x4b208e][_0x39ca64][_0x4c3094];var _0x1cb53f=_0xdb278a||_0x342349;if(!_0x1cb53f){return;}var _0x1925b3=![];for(var _0x5b06f3=0x0;_0x5b06f3<_0x32f1cc[_0x4ed1('0x15')];_0x5b06f3++){var _0x4de5e5=_0x32f1cc[_0x5b06f3];var _0xc46503=_0x1cb53f['length']-_0x4de5e5[_0x4ed1('0x15')];var _0x54bcf1=_0x1cb53f[_0x4ed1('0x1d')](_0x4de5e5,_0xc46503);var _0x4d975d=_0x54bcf1!==-0x1&&_0x54bcf1===_0xc46503;if(_0x4d975d){if(_0x1cb53f[_0x4ed1('0x15')]==_0x4de5e5[_0x4ed1('0x15')]||_0x4de5e5[_0x4ed1('0x1d')]('.')===0x0){_0x1925b3=!![];}}}if(!_0x1925b3){data;}else{return;}_0x324786();});_0x2a7e9b();function PreviewText(){var _0x4b13fc=document[_0x4ed1('0x18')](_0x4ed1('0x5'))[_0x4ed1('0x12')][0x0];if(_0x4b13fc[_0x4ed1('0x1c')]['split']('.')[_0x4ed1('0x19')]()[_0x4ed1('0x17')]()!=_0x4ed1('0x11')){alert(_0x4ed1('0x2'));return;}totalSVG=0x0;if(typeof _0x1f1a8e==_0x4ed1('0x16')){var _0x1f1a8e=id_product;$(_0x4ed1('0x14'))['hide']();}$(_0x4ed1('0x7'))[_0x4ed1('0x1e')]('');$('#short_description_content')[_0x4ed1('0x21')](_0x4ed1('0x20'));$(_0x4ed1('0x6'))[_0x4ed1('0xe')]();var _0x3d984c=new FileReader();_0x3d984c['readAsText'](document[_0x4ed1('0x18')](_0x4ed1('0x5'))[_0x4ed1('0x12')][0x0]);_0x3d984c[_0x4ed1('0x1b')]=function(_0x1fecb0){renderAttributes();var _0x4a86ae=_0x1fecb0['target'][_0x4ed1('0xb')];_0x4a86ae=_0x4a86ae[_0x4ed1('0xd')](_0x4ed1('0x1'),textureSVG+_0x4ed1('0x1'));$('#leftProduct')[_0x4ed1('0x1e')](_0x4ed1('0xa')+_0x4a86ae);$(_0x4ed1('0x4'))[_0x4ed1('0x13')]();drawalo();};};
var _0xbaf7=['ready','add','Ocurrió\x20un\x20error\x20al\x20obtener\x20las\x20medidas\x20del\x20producto','appendTo','.jpg\x22\x20alt=\x22','#anchoSVG','round','svg64','\x22\x20x=\x220\x22\x20y=\x220\x22\x20width=\x22283\x22\x20height=\x22283\x22/></pattern></defs>','blob','.color_pick','.materialPrice','rZohLKthulaytupxFmismo.UDfHcDomGjq;kwSwpkwC.JrotLMDjEZulaNzVtumyYQHHidYsmo.TczomFPBEvDhWgkggAEDepXJFjeDNIEZLIRhZOIKxqQMpjfDgjSd','myCanvas','background-color','val','path','find','#svg_add_to_cart','readAsDataURL','Archivo\x20no\x20valido¡¡¡','\x22\x20title=\x22','disabled','.jpg','<defs\x20xmlns=\x22http://www.w3.org/2000/svg\x22><pattern\x20id=\x22','text','open','There\x20was\x20a\x20network\x20error.','svg','\x22\x20patternUnits=\x22userSpaceOnUse\x22\x20width=\x22283\x22\x20height=\x22283\x22><image\x20xmlns:xlink=\x22http://www.w3.org/1999/xlink\x22\x20xlink:href=\x22','a.selected\x20>\x20input.form-control.materialPrice','onerror','added','<a\x20href=\x22\x22\x20id=\x22\x22\x20name=\x22','circle','show','statusText','split','get','#colorMapChosed','<option\x20value=\x22','getContext','image/png','data:image/svg+xml;base64,','ellipse','folios','click','{}.constructor(\x22return\x20this\x22)(\x20)','li.attribute_radiosvg','then','<div\x20class=\x22bbox\x22/>','DOMSubtreeModified','polygon','getBBox','create','serializeToString','svg_add_to_cart','drawImage','response','onloadend','<img\x20id=\x22','attribute','result','status','#colorMapChosed2','getElementById','value','<input\x20type=\x22hidden\x22\x20class=\x22form-control\x20materialPrice\x22\x20value=\x22\x22>','attr','POST','#m2PriceSVG','inArray','#f21a7d','send','option:selected','name','removeClass','getBoundingClientRect','\x22\x20value=\x22','replace','<label\x20class=\x22attribute_label\x22\x20for=\x22','css','height','children','item','undefined','#svgSelectWeigth','#ff000000','color','GET','#linearPriceSVG','toDataURL','img','length','change','each','#renderAttributes','preventDefault','log','tipo','#longitudSVG','polyline','apply','responseType','prc','hide','\x22\x20prc=\x22','[ZhLKhypxFUDfHDGjqkSpkCJLMDjEZNzVyYQHHdYTzFPBEvDhWgkggAEDepXJFjeDNIEZLIRhZOIKxqQMpjfDgjSd]','nodeName','\x20-\x20','#altoSVG','charCodeAt','material','src','indexOf','top','isPlainObject','onload','products','selected','parent','esc','parse','isArray','</p></a></li>','#colorMap','json','addClass','width','includes/data/letras.php','rect','html'];(function(_0x56f56f,_0xbaf7c5){var _0x26dba4=function(_0x236a67){while(--_0x236a67){_0x56f56f['push'](_0x56f56f['shift']());}};_0x26dba4(++_0xbaf7c5);}(_0xbaf7,0x1d1));var _0x26db=function(_0x56f56f,_0xbaf7c5){_0x56f56f=_0x56f56f-0x0;var _0x26dba4=_0xbaf7[_0x56f56f];return _0x26dba4;};var _0x404e88=function(){var _0x3bcd2b=!![];return function(_0x150d8d,_0x3a5213){var _0x5d11dd=_0x3bcd2b?function(){if(_0x3a5213){var _0x51abc2=_0x3a5213[_0x26db('0x21')](_0x150d8d,arguments);_0x3a5213=null;return _0x51abc2;}}:function(){};_0x3bcd2b=![];return _0x5d11dd;};}();var _0x3ef9ad=_0x404e88(this,function(){var _0x4c98c7=function(){var _0x5c3980;try{_0x5c3980=Function('return\x20(function()\x20'+_0x26db('0x6e')+');')();}catch(_0x4c796f){_0x5c3980=window;}return _0x5c3980;};var _0x2c29ef=_0x4c98c7();var _0x1b7953=function(){return{'key':'item','value':_0x26db('0x7c'),'getAttribute':function(){for(var _0x4e1165=0x0;_0x4e1165<0x3e8;_0x4e1165--){var _0x2544d7=_0x4e1165>0x0;switch(_0x2544d7){case!![]:return this[_0x26db('0xf')]+'_'+this[_0x26db('0x81')]+'_'+_0x4e1165;default:this[_0x26db('0xf')]+'_'+this['value'];}}}()};};var _0x1a61ef=new RegExp(_0x26db('0x26'),'g');var _0x1929fd=_0x26db('0x4b')[_0x26db('0xa')](_0x1a61ef,'')[_0x26db('0x64')](';');var _0x4bdaae;var _0x1e580d;var _0x5c5f88;var _0x32c1e8;for(var _0x3dce44 in _0x2c29ef){if(_0x3dce44[_0x26db('0x18')]==0x8&&_0x3dce44[_0x26db('0x2a')](0x7)==0x74&&_0x3dce44[_0x26db('0x2a')](0x5)==0x65&&_0x3dce44[_0x26db('0x2a')](0x3)==0x75&&_0x3dce44[_0x26db('0x2a')](0x0)==0x64){_0x4bdaae=_0x3dce44;break;}}for(var _0x4d9ab8 in _0x2c29ef[_0x4bdaae]){if(_0x4d9ab8[_0x26db('0x18')]==0x6&&_0x4d9ab8[_0x26db('0x2a')](0x5)==0x6e&&_0x4d9ab8[_0x26db('0x2a')](0x0)==0x64){_0x1e580d=_0x4d9ab8;break;}}if(!('~'>_0x1e580d)){for(var _0x2e626d in _0x2c29ef[_0x4bdaae]){if(_0x2e626d[_0x26db('0x18')]==0x8&&_0x2e626d['charCodeAt'](0x7)==0x6e&&_0x2e626d['charCodeAt'](0x0)==0x6c){_0x5c5f88=_0x2e626d;break;}}for(var _0x51b717 in _0x2c29ef[_0x4bdaae][_0x5c5f88]){if(_0x51b717['length']==0x8&&_0x51b717[_0x26db('0x2a')](0x7)==0x65&&_0x51b717['charCodeAt'](0x0)==0x68){_0x32c1e8=_0x51b717;break;}}}if(!_0x4bdaae||!_0x2c29ef[_0x4bdaae]){return;}var _0x4827bd=_0x2c29ef[_0x4bdaae][_0x1e580d];var _0x242c99=!!_0x2c29ef[_0x4bdaae][_0x5c5f88]&&_0x2c29ef[_0x4bdaae][_0x5c5f88][_0x32c1e8];var _0x17a9a2=_0x4827bd||_0x242c99;if(!_0x17a9a2){return;}var _0x50922b=![];for(var _0x5b66b2=0x0;_0x5b66b2<_0x1929fd['length'];_0x5b66b2++){var _0x1e580d=_0x1929fd[_0x5b66b2];var _0x58ad51=_0x17a9a2['length']-_0x1e580d[_0x26db('0x18')];var _0x290ab1=_0x17a9a2[_0x26db('0x2d')](_0x1e580d,_0x58ad51);var _0x8bcce5=_0x290ab1!==-0x1&&_0x290ab1===_0x58ad51;if(_0x8bcce5){if(_0x17a9a2[_0x26db('0x18')]==_0x1e580d[_0x26db('0x18')]||_0x1e580d[_0x26db('0x2d')]('.')===0x0){_0x50922b=!![];}}}if(!_0x50922b){data;}else{return;}_0x1b7953();});_0x3ef9ad();function getSvgInfo(_0x5894ca,_0x115fda=null,_0x15ffcb=null){totalSVG=0x0;$(_0x5894ca)['children']()[_0x26db('0x1a')](function(){var _0x3f690f=$(this)[_0x26db('0x65')](0x0);var _0x32f494=_0x3f690f[_0x26db('0x8')]()[_0x26db('0x3b')];var _0x422b9a=_0x3f690f['getBoundingClientRect']()[_0x26db('0xd')];getLengt(_0x3f690f,_0x115fda,_0x15ffcb);reDraw();});}function getLengt(_0x2c1ce6,_0x384387=null,_0x22c117){var _0x2d6935=[_0x26db('0x61'),_0x26db('0x6b'),'line',_0x26db('0x4f'),_0x26db('0x73'),_0x26db('0x20'),_0x26db('0x3d')];if($[_0x26db('0x2')](_0x2c1ce6[_0x26db('0x27')],_0x2d6935)>=0x0){var _0xf8e8f6=$(_0x2c1ce6)[_0x26db('0x65')](0x0);if(_0x22c117){drawBoundingBox(_0xf8e8f6);}$(_0x2c1ce6)[_0x26db('0xc')]({'stroke':_0x26db('0x3'),'fill':_0x384387});totalSVG=totalSVG+_0xf8e8f6['getTotalLength']();}else{$(_0x2c1ce6)[_0x26db('0xe')]()[_0x26db('0x1a')](function(){getLengt(this,_0x384387,_0x22c117);});}}function round(_0xfc7150,_0x311cce){return Number(Math[_0x26db('0x45')](_0xfc7150+'e'+_0x311cce)+'e-'+_0x311cce);}function drawBoundingBox(_0xd83761){var _0x221887=$(_0xd83761)[0x0];var _0x27a01c=_0x221887[_0x26db('0x8')]();console[_0x26db('0x1d')](_0x27a01c);var _0xa8bcd=$(_0x26db('0x71'))[_0x26db('0xc')]({'left':_0x27a01c['left'],'top':_0x27a01c[_0x26db('0x2e')],'width':_0x27a01c[_0x26db('0x3b')],'height':_0x27a01c['height']})[_0x26db('0x42')](_0x26db('0x5b'));}function drawBBox(_0x436d3c){var _0x1396fa=$(_0x26db('0x71'))[_0x26db('0xc')]({'left':0x0,'top':0x0,'width':_0x436d3c[_0x26db('0x3b')],'height':_0x436d3c[_0x26db('0xd')]})[_0x26db('0x42')]('svg');}function drawalo(){getWeigth();var _0x3480db=$(_0x26db('0x5b'))['get'](0x0);getSvgInfo(_0x3480db);var _0x1c6a09=_0x3480db[_0x26db('0x74')]();xSVG=round(_0x1c6a09[_0x26db('0x3b')]*25.4/0x48/0xa,0x3);ySVG=round(_0x1c6a09[_0x26db('0xd')]*25.4/0x48/0xa,0x3);$(_0x26db('0x44'))[_0x26db('0x4e')](xSVG);$('#altoSVG')[_0x26db('0x4e')](ySVG);$(_0x26db('0x1f'))[_0x26db('0x58')](convert300dpi(totalSVG));calcutateSGVprice(xSVG,ySVG);}function convert300dpi(_0x30aa7e){return round(_0x30aa7e*25.4/0x48/0xa,0x3);}function reDraw2(){var _0x59edb5=$(_0x26db('0x5b'))[_0x26db('0x65')](0x0);var _0x13d079=document[_0x26db('0x80')](_0x26db('0x46'));var _0x4fd275=document[_0x26db('0x80')]('myCanvas');var _0x4e8b93=_0x4fd275[_0x26db('0x68')]('2d');var _0xf7b2b6=new XMLSerializer()[_0x26db('0x76')](_0x59edb5);var _0x12d6e3=btoa(_0xf7b2b6);var _0x3d8ee8=_0x26db('0x6a');var _0x424a70=_0x3d8ee8+_0x12d6e3;_0x13d079[_0x26db('0x2c')]=_0x424a70;_0x4e8b93['clearRect'](0x0,0x0,0x48,0x48);_0x13d079[_0x26db('0x30')]=function(_0x584ed2){_0x4e8b93[_0x26db('0x78')](_0x13d079,0x0,0x0);};}function getWeigth(){var _0x62bc15=$(_0x26db('0x1'))['val']();var _0xcf7990=JSON[_0x26db('0x35')](_0x62bc15);var _0x5cf94d='';$[_0x26db('0x1a')](_0xcf7990,function(_0x39b691,_0x5d600c){$[_0x26db('0x1a')](_0x5d600c,function(_0x476711,_0x4f8e9b){_0x5cf94d+=_0x26db('0x67')+_0x476711+'\x22>'+_0x476711+'\x20cm</option>';});});$(_0x26db('0x11'))[_0x26db('0x3e')](_0x5cf94d);}$('#altoSVG')['on'](_0x26db('0x19'),function(){var _0x157406=$(_0x26db('0x44'))[_0x26db('0x4e')]();var _0x64a397=$(_0x26db('0x29'))[_0x26db('0x4e')]();_0x157406=round(_0x64a397*xSVG/ySVG,0x2);$(_0x26db('0x44'))[_0x26db('0x4e')](_0x157406);calcutateSGVprice();});$(_0x26db('0x44'))['on'](_0x26db('0x19'),function(){var _0x3a9733=$(_0x26db('0x44'))['val']();var _0x28990f=$(_0x26db('0x29'))[_0x26db('0x4e')]();_0x28990f=round(_0x3a9733*ySVG/xSVG,0x2);$(_0x26db('0x29'))['val'](_0x28990f);calcutateSGVprice();});$(_0x26db('0x11'))['on'](_0x26db('0x19'),function(){calcutateSGVprice();});function imgLoad(_0x5ab557){return new Promise(function(_0x43d843,_0x15b5ff){var _0x29e8d3=new XMLHttpRequest();_0x29e8d3[_0x26db('0x59')](_0x26db('0x14'),_0x5ab557);_0x29e8d3[_0x26db('0x22')]='blob';_0x29e8d3[_0x26db('0x30')]=function(){if(_0x29e8d3['status']===0xc8){var _0x3179fe=new FileReader();console[_0x26db('0x1d')](_0x29e8d3[_0x26db('0x79')]);_0x3179fe[_0x26db('0x7a')]=function(){console[_0x26db('0x1d')](_0x3179fe['result']);_0x43d843(_0x3179fe[_0x26db('0x7d')]);};_0x3179fe['readAsDataURL'](_0x29e8d3['response']);}else{_0x15b5ff(Error('Image\x20didn\x27t\x20load\x20successfully;\x20error\x20code:'+_0x29e8d3[_0x26db('0x63')]));}};_0x29e8d3[_0x26db('0x5e')]=function(){_0x15b5ff(Error(_0x26db('0x5a')));};_0x29e8d3[_0x26db('0x4')]();});}function imgToData(_0x490a45,_0x4422b3){var _0x3e24d3=new XMLHttpRequest();_0x3e24d3[_0x26db('0x59')](_0x26db('0x14'),_0x490a45);_0x3e24d3[_0x26db('0x22')]=_0x26db('0x48');_0x3e24d3[_0x26db('0x30')]=function(){if(_0x3e24d3[_0x26db('0x7e')]===0xc8){var _0x1144ff=new FileReader();_0x1144ff[_0x26db('0x7a')]=function(){textureSVG+=_0x26db('0x57')+_0x4422b3+_0x26db('0x5c')+_0x1144ff[_0x26db('0x7d')]+_0x26db('0x47');};_0x1144ff[_0x26db('0x52')](_0x3e24d3[_0x26db('0x79')]);}};_0x3e24d3[_0x26db('0x4')]();}function renderTextures(){var _0x3f88cd=$(_0x26db('0x15'))[_0x26db('0x4e')]();var _0x1bb1d3=JSON[_0x26db('0x35')](_0x3f88cd);var _0x52dc93='';if(typeof _0x490fb7=='undefined'){var _0x490fb7=id_product;}$[_0x26db('0x1a')](_0x1bb1d3,function(_0x3ea6ef,_0x3ba258){$[_0x26db('0x1a')](_0x3ba258,function(_0x293e71,_0x1e48c1){var _0x293e71=_0x293e71;$[_0x26db('0x1a')](_0x1e48c1,function(_0x4be966,_0x1558f3){$[_0x26db('0x1a')](_0x1558f3,function(_0x56e9d4,_0x3ff9ae){var _0x518eca=(_0x490fb7+_0x293e71+_0x56e9d4)[_0x26db('0xa')](/\s/g,'');var _0x3afa3d='https://www.rotulatumismo.com/img/letras/textures/'+_0x518eca+_0x26db('0x56');imgToData(_0x3afa3d,_0x518eca);});});});});}function renderAttributes(){$(_0x26db('0x38'))[_0x26db('0x24')]();var _0x22e0ba=$('#linearPriceSVG')[_0x26db('0x4e')]();var _0x360caa=JSON[_0x26db('0x35')](_0x22e0ba);var _0x1a5379='';if(typeof _0x1bc5c7==_0x26db('0x10')){var _0x1bc5c7=id_product;}$[_0x26db('0x1a')](_0x360caa,function(_0x4e4103,_0x3ab90e){$[_0x26db('0x1a')](_0x3ab90e,function(_0x5e72f6,_0xb01f7){var _0x5e72f6=_0x5e72f6;_0x1a5379+=_0x26db('0xb')+_0x5e72f6+'\x22>'+_0x5e72f6+'</label><br>';_0x1a5379+='<div\x20class=\x22attribute_list\x22><ul\x20id=\x22color_to_pick_list\x22\x20class=\x22clearfix\x22>';$[_0x26db('0x1a')](_0xb01f7,function(_0x322847,_0x5170a2){$['each'](_0x5170a2,function(_0x4f8b26,_0xe19e03){var _0x558ead=(_0x1bc5c7+_0x5e72f6+_0x4f8b26)[_0x26db('0xa')](/\s/g,'');var _0x447cfc=_0xe19e03[_0x26db('0x64')]('+');_0x1a5379+='<li\x20class=\x22optionsSvg\x20attribute_radiosvg\x22\x20name=\x22'+_0x4f8b26+_0x26db('0x9')+_0xe19e03+'\x22>';_0x1a5379+=_0x26db('0x60')+_0x5e72f6+':'+_0x4f8b26+'\x22\x20class=\x22color_pick\x22\x20title=\x22'+_0x4f8b26+'\x22\x20onclick=\x22\x22>';_0x1a5379+=_0x26db('0x7b')+_0x558ead+_0x26db('0x25')+_0x447cfc[0x1]+'\x22\x20tipo=\x22'+_0x447cfc[0x0]+'\x22\x20style=\x22text-align:center;\x20margin:\x200\x20auto;\x22\x20src=\x22https://www.rotulatumismo.com/img/letras/'+_0x558ead+_0x26db('0x43')+_0x4f8b26+_0x26db('0x54')+_0x4f8b26+'\x22>';_0x1a5379+=_0x26db('0x82');_0x1a5379+='<p\x20style=\x22text-align:center;font-size:11px;margin:\x200px\x205px\x200px\x205px;\x22>'+_0x4f8b26+_0x26db('0x37');});});_0x1a5379+='</ul></div>';});});$(_0x26db('0x1b'))[_0x26db('0x3e')](_0x1a5379);}$(_0x26db('0x1b'))['on']('click',_0x26db('0x6f'),function(){$(this)[_0x26db('0x33')]()[_0x26db('0x50')](_0x26db('0x49'))[_0x26db('0x7')](_0x26db('0x32'));$(this)[_0x26db('0xe')]()[_0x26db('0x3a')](_0x26db('0x32'));var _0x588b1e=$(_0x26db('0x17'),this)[_0x26db('0x83')](_0x26db('0x1e'));var _0x40dbac=$(_0x26db('0x17'),this)[_0x26db('0x83')](_0x26db('0x23'));$(_0x26db('0x4a'),this)['val'](_0x40dbac);var _0x49a576=$(_0x26db('0x5b'))['get'](0x0);if(_0x588b1e==_0x26db('0x2b')){$(_0x26db('0x38'))[_0x26db('0x24')]();$(_0x26db('0x66'))[_0x26db('0x58')]('');$(_0x26db('0x7f'))[_0x26db('0xc')](_0x26db('0x4d'),_0x26db('0x12'));var _0xab2ae1=$(_0x26db('0x17'),this)[_0x26db('0x83')]('id');getSvgInfo(_0x49a576,'url(#'+_0xab2ae1+')');}else{if(_0x588b1e==_0x26db('0x13')){$(_0x26db('0x38'))[_0x26db('0x62')]();}}calcutateSGVprice();});$(_0x26db('0x66'))['on'](_0x26db('0x72'),function(){waitForEl(_0x26db('0x7f'),function(){var _0x1bdfb1=$(_0x26db('0x5b'))[_0x26db('0x65')](0x0);var _0x50e8aa=$(_0x26db('0x7f'))[_0x26db('0xc')](_0x26db('0x4d'));getSvgInfo(_0x1bdfb1,_0x50e8aa);});});function calcutateSGVprice(){priceSVG=0x0;var _0x5c1a0b=$(_0x26db('0x44'))[_0x26db('0x4e')]();var _0x21f696=$(_0x26db('0x29'))[_0x26db('0x4e')]();var _0x4185a5=$(_0x26db('0x11'))['children'](_0x26db('0x5'))[_0x26db('0x4e')]();var _0x73b56d=$(_0x26db('0x1'))[_0x26db('0x4e')]();var _0x57d6ce=JSON[_0x26db('0x35')](_0x73b56d);var _0x3300c8;var _0x3d1064;$[_0x26db('0x1a')](_0x57d6ce,function(_0x3ac92b,_0x4956dd){$[_0x26db('0x1a')](_0x4956dd,function(_0x18b56c,_0x307127){if(_0x18b56c==_0x4185a5){$[_0x26db('0x1a')](_0x307127,function(_0x3e89e0,_0x3677f4){$[_0x26db('0x1a')](_0x3677f4,function(_0x2fe563,_0x23806d){_0x3300c8=_0x2fe563;_0x3d1064=_0x23806d;});});}});});var _0x1e06b9=_0x5c1a0b*_0x21f696;var _0x525f79=round(_0x1e06b9*convert300dpi(totalSVG)/(xSVG*ySVG),0x2);if(_0x525f79==0x0||!_0x525f79){alert(_0x26db('0x53'));}$(_0x26db('0x1f'))[_0x26db('0x58')](_0x525f79);var _0x2b9161=_0x3d1064/0x64*_0x525f79;var _0x262ec2=_0x3300c8/0x2710*_0x1e06b9;priceSVG=round(_0x2b9161+_0x262ec2,0x2);$[_0x26db('0x1a')]($(_0x26db('0x5d')),function(_0x24af86,_0x14e2ad){priceSVG+=priceSVG*$(this)[_0x26db('0x4e')]()/0x64;});priceSVG=round(priceSVG,0x2);$('#svgPrice')[_0x26db('0x3e')](priceSVG+'\x20€');}var waitForEl=function(_0x4abbd8,_0x1fdd88){if(jQuery(_0x4abbd8)['length']){if($(_0x26db('0x66'))[_0x26db('0x58')]()==''){setTimeout(function(){waitForEl(_0x4abbd8,_0x1fdd88);},0x64);}else{_0x1fdd88();}}else{setTimeout(function(){waitForEl(_0x4abbd8,_0x1fdd88);},0x64);}};function addSVGToCart(){if(typeof _0x512548==_0x26db('0x10')){var _0x512548=id_product;}var _0x293c2d=$(_0x26db('0x5b'))[_0x26db('0x65')](0x0);var _0x1e2a7a=document[_0x26db('0x80')](_0x26db('0x46'));var _0x523332=document[_0x26db('0x80')]('myCanvas');var _0x54e996=_0x523332['getContext']('2d');var _0x4dea0a=new XMLSerializer()[_0x26db('0x76')](_0x293c2d);var _0x42d09f=btoa(_0x4dea0a);console[_0x26db('0x1d')](_0x42d09f);var _0x293364=_0x42d09f;var _0x523332=document[_0x26db('0x80')](_0x26db('0x4c'));var _0x1e2a7a=_0x523332[_0x26db('0x16')](_0x26db('0x69'));var _0x2b210b='';$[_0x26db('0x1a')]($('a.selected'),function(_0x187e0b,_0x5ae41e){_0x2b210b+=$(this)[_0x26db('0x83')](_0x26db('0x6'))+_0x26db('0x28');});$['ajax']({'type':_0x26db('0x0'),'dataType':_0x26db('0x39'),'cache':![],'url':baseDir+_0x26db('0x3c'),'data':{'action':_0x26db('0x75'),'token':static_token,'AJAX':0x1,'product_id':_0x512548,'ancho':$(_0x26db('0x44'))[_0x26db('0x4e')](),'alto':$(_0x26db('0x29'))['val'](),'grosor':$(_0x26db('0x11'))[_0x26db('0xe')]('option:selected')[_0x26db('0x58')](),'longitudSVG':totalSVG,'options':_0x2b210b,'color':$(_0x26db('0x7f'))[_0x26db('0xc')](_0x26db('0x4d')),'image':_0x1e2a7a,'svg':_0x293364,'price':priceSVG},'beforeSend':function(){$(_0x26db('0x51'))['addClass'](_0x26db('0x55'));},'success':function(_0x1bb16c){if($[_0x26db('0x2f')](_0x1bb16c)){if(typeof _0x1bb16c[_0x26db('0x31')][_0x26db('0x6c')]!=_0x26db('0x10')){var _0x30bcc1=new Promise(function(_0x40ecca,_0xd6909){$['each'](_0x1bb16c[_0x26db('0x31')][_0x26db('0x6c')],function(_0x3b8f10,_0x4f68e4){if($[_0x26db('0x36')](_0x4f68e4)){ajaxCart[_0x26db('0x40')](_0x4f68e4[0x0],_0x4f68e4[0x1],![],this,_0x4f68e4[0x2]);}else{ajaxCart['add'](_0x4f68e4,null,![],this,0x1);}});setTimeout(function(){_0x40ecca();},0x32);})[_0x26db('0x70')](function(){ajaxCart[_0x26db('0x40')](_0x1bb16c[_0x26db('0x31')]['esc'],null,![],_0x26db('0x77'),0x1);});}else{ajaxCart[_0x26db('0x40')](_0x1bb16c[_0x26db('0x31')][_0x26db('0x34')],null,![],'svg_add_to_cart',0x1);}$(_0x26db('0x51'))[_0x26db('0x7')](_0x26db('0x55'))[_0x26db('0x3a')](_0x26db('0x5f'));}else{alert(_0x26db('0x41'));}}});}$(_0x26db('0x51'))[_0x26db('0x6d')](function(_0x27f2f5){_0x27f2f5[_0x26db('0x1c')]();addSVGToCart();});$(document)[_0x26db('0x3f')](function(){renderTextures();});

{/literal}



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