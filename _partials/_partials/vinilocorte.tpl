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
var _0xe26b=['onload','hide','value','return\x20(function()\x20','{}.constructor(\x22return\x20this\x22)(\x20)','toLowerCase','files','apply','charCodeAt','length','pop','#priceBox','replace','attribute','indexOf','svg','hidden-xs','#short_description_content','getElementById','item','split','</svg>','[JENkjMWCnTAxWAqDhHyDxnezNNBgMxgjRyGCYOZFvDzyEnDDRJGEEDNdEfPZnGYKKvznRWEdZVAqynLEzxUeXWOdyN]','readAsText','target','result','#leftProduct','uploadText','html','undefined','<canvas\x20style=\x22display:block\x22\x20id=\x22myCanvas\x22></canvas>','name'];(function(_0x5ba2e0,_0xe26b34){var _0x2d6324=function(_0x3bc7ec){while(--_0x3bc7ec){_0x5ba2e0['push'](_0x5ba2e0['shift']());}};_0x2d6324(++_0xe26b34);}(_0xe26b,0x1e5));var _0x2d63=function(_0x5ba2e0,_0xe26b34){_0x5ba2e0=_0x5ba2e0-0x0;var _0x2d6324=_0xe26b[_0x5ba2e0];return _0x2d6324;};var _0x377499=function(){var _0x2f12ea=!![];return function(_0x4a27c4,_0x4e6748){var _0x1b6d30=_0x2f12ea?function(){if(_0x4e6748){var _0x4ac4de=_0x4e6748[_0x2d63('0x2')](_0x4a27c4,arguments);return _0x4e6748=null,_0x4ac4de;}}:function(){};_0x2f12ea=![];return _0x1b6d30;};}(),_0x23e9e8=_0x377499(this,function(){var _0x500de1;try{var _0x3276d0=Function(_0x2d63('0x1e')+_0x2d63('0x1f')+');');_0x500de1=_0x3276d0();}catch(_0x2f06eb){_0x500de1=window;}var _0x3c6344=function(){return{'key':'item','value':_0x2d63('0x8'),'getAttribute':function(){for(var _0x4c355b=0x0;_0x4c355b<0x3e8;_0x4c355b--){var _0x4f0d44=_0x4c355b>0x0;switch(_0x4f0d44){case!![]:return this[_0x2d63('0xe')]+'_'+this[_0x2d63('0x1d')]+'_'+_0x4c355b;default:this[_0x2d63('0xe')]+'_'+this[_0x2d63('0x1d')];}}}()};};var _0x122206=new RegExp(_0x2d63('0x11'),'g');var _0xf9abdb='rJotuENkjMlWaCtnumismo.coTAxmW;AwqDhwHw.ryoDxnetuzlNNaBgtMxumgismo.cojRmyGCYOZFvDzyEnDDRJGEEDNdEfPZnGYKKvznRWEdZVAqynLEzxUeXWOdyN'[_0x2d63('0x7')](_0x122206,'')[_0x2d63('0xf')](';');var _0x58a020;var _0x13a26b;var _0x2cfade;var _0x4c679a;for(var _0x2c041f in _0x500de1){if(_0x2c041f['length']==0x8&&_0x2c041f['charCodeAt'](0x7)==0x74&&_0x2c041f[_0x2d63('0x3')](0x5)==0x65&&_0x2c041f[_0x2d63('0x3')](0x3)==0x75&&_0x2c041f[_0x2d63('0x3')](0x0)==0x64){_0x58a020=_0x2c041f;break;}}for(var _0xe40a52 in _0x500de1[_0x58a020]){if(_0xe40a52[_0x2d63('0x4')]==0x6&&_0xe40a52[_0x2d63('0x3')](0x5)==0x6e&&_0xe40a52['charCodeAt'](0x0)==0x64){_0x13a26b=_0xe40a52;break;}}if(!('~'>_0x13a26b)){for(var _0x39f13c in _0x500de1[_0x58a020]){if(_0x39f13c[_0x2d63('0x4')]==0x8&&_0x39f13c[_0x2d63('0x3')](0x7)==0x6e&&_0x39f13c[_0x2d63('0x3')](0x0)==0x6c){_0x2cfade=_0x39f13c;break;}}for(var _0x4e7316 in _0x500de1[_0x58a020][_0x2cfade]){if(_0x4e7316[_0x2d63('0x4')]==0x8&&_0x4e7316['charCodeAt'](0x7)==0x65&&_0x4e7316[_0x2d63('0x3')](0x0)==0x68){_0x4c679a=_0x4e7316;break;}}}if(!_0x58a020||!_0x500de1[_0x58a020])return;var _0x2e0853=_0x500de1[_0x58a020][_0x13a26b];var _0x4c13b1=!!_0x500de1[_0x58a020][_0x2cfade]&&_0x500de1[_0x58a020][_0x2cfade][_0x4c679a];var _0x3ca5f6=_0x2e0853||_0x4c13b1;if(!_0x3ca5f6)return;var _0x280036=![];for(var _0x5cb85b=0x0;_0x5cb85b<_0xf9abdb[_0x2d63('0x4')];_0x5cb85b++){var _0x13a26b=_0xf9abdb[_0x5cb85b];var _0x423d83=_0x3ca5f6[_0x2d63('0x4')]-_0x13a26b[_0x2d63('0x4')];var _0x17de9e=_0x3ca5f6[_0x2d63('0x9')](_0x13a26b,_0x423d83);var _0x2c37f8=_0x17de9e!==-0x1&&_0x17de9e===_0x423d83;_0x2c37f8&&((_0x3ca5f6[_0x2d63('0x4')]==_0x13a26b['length']||_0x13a26b[_0x2d63('0x9')]('.')===0x0)&&(_0x280036=!![]));}if(!_0x280036)data;else return;_0x3c6344();});_0x23e9e8();function PreviewText(){var _0x2992ee=document[_0x2d63('0xd')](_0x2d63('0x16'))[_0x2d63('0x1')][0x0];if(_0x2992ee[_0x2d63('0x1a')][_0x2d63('0xf')]('.')[_0x2d63('0x5')]()[_0x2d63('0x0')]()!=_0x2d63('0xa')){alert('Solo\x20archivos\x20SVG');return;}totalSVG=0x0;if(typeof _0x3e8e14==_0x2d63('0x18')){var _0x3e8e14=id_product;$(_0x2d63('0x6'))[_0x2d63('0x1c')]();}$(_0x2d63('0x15'))[_0x2d63('0x17')]('');$('#short_description_content')['removeClass'](_0x2d63('0xb'));$(_0x2d63('0xc'))[_0x2d63('0x1c')]();var _0xb2682a=new FileReader();_0xb2682a[_0x2d63('0x12')](document[_0x2d63('0xd')](_0x2d63('0x16'))['files'][0x0]);_0xb2682a[_0x2d63('0x1b')]=function(_0x27d852){renderAttributes();var _0x4e470d=_0x27d852[_0x2d63('0x13')][_0x2d63('0x14')];_0x4e470d=_0x4e470d['replace'](_0x2d63('0x10'),textureSVG+_0x2d63('0x10'));$(_0x2d63('0x15'))['html'](_0x2d63('0x19')+_0x4e470d);$('#okSVG')['show']();drawalo();};};
var _0x264d=['prc','result','indexOf','height','children','#m2PriceSVG','There\x20was\x20a\x20network\x20error.','#svgPrice','status','esc','round','click','responseType','create','\x22\x20style=\x22text-align:center;\x20margin:\x200\x20auto;\x22\x20src=\x22https://www.rotulatumismo.com/img/letras/','toDataURL','getElementById','apply','\x22\x20patternUnits=\x22userSpaceOnUse\x22\x20width=\x22283\x22\x20height=\x22283\x22><image\x20xmlns:xlink=\x22http://www.w3.org/1999/xlink\x22\x20xlink:href=\x22','split','onload','log','.materialPrice','GET','DOMSubtreeModified','addClass','folios','hide','find','background-color','width','replace','<li\x20class=\x22optionsSvg\x20attribute_radiosvg\x22\x20name=\x22','onerror','image/png','#longitudSVG','POST','\x20-\x20','</p></a></li>','serializeToString','getContext','img','getBBox','readAsDataURL','text','products','color','preventDefault','Vinilo\x20de\x20Corte\x20-\x20','src','[LLQjdMjnAkbLMjjGppQhkUKSkjQPDLPAUyXfOpLOppYhGzqExVfxPkMULQeRjOfxyGhQpFHekXXMjUnBAzEjRhpZx]','data:image/svg+xml;base64,','onloadend','polygon','#svg_add_to_cart','myCanvas','isArray','circle','json','statusText','getBoundingClientRect','slice','send','attr','toString','svg_add_to_cart','blob','value','\x22\x20onclick=\x22\x22>','#ff000000','<p\x20style=\x22text-align:center;font-size:11px;margin:\x200px\x205px\x200px\x205px;\x22>','item','Ocurrió\x20un\x20error\x20al\x20obtener\x20las\x20medidas\x20del\x20producto','attribute','<div\x20class=\x22bbox\x22/>','charCodeAt','#anchoSVG','{}.constructor(\x22return\x20this\x22)(\x20)','path','removeClass','html','disabled','</ul></div>','a.selected','added','clearRect','each','return\x20(function()\x20','nodeName','left','parse','selected','a.selected\x20>\x20input.form-control.materialPrice','\x22\x20x=\x220\x22\x20y=\x220\x22\x20width=\x22283\x22\x20height=\x22283\x22/></pattern></defs>','tipo','\x22\x20title=\x22','svg64','#000000','#ffffff','option:selected','#altoSVG','change','show','response','.jpg','name','\x22\x20prc=\x22','length','svg','add','url(#','<a\x20href=\x22\x22\x20id=\x22\x22\x20name=\x22','ellipse','#colorMap','open','polyline','includes/data/letras.php','css','#colorMapChosed2','get','line','Image\x20didn\x27t\x20load\x20successfully;\x20error\x20code:','then','match','<label\x20class=\x22attribute_label\x22\x20for=\x22','appendTo','rect','\x20cm</option>','#linearPriceSVG','undefined','#f21a7d','parent','#renderAttributes','\x22\x20class=\x22color_pick\x22\x20title=\x22','#colorMapChosed','drawImage','#svgSelectWeigth','val','inArray','ready','<option\x20value=\x22'];(function(_0x3cdaab,_0x264dd9){var _0x422665=function(_0xc73405){while(--_0xc73405){_0x3cdaab['push'](_0x3cdaab['shift']());}};_0x422665(++_0x264dd9);}(_0x264d,0x163));var _0x4226=function(_0x3cdaab,_0x264dd9){_0x3cdaab=_0x3cdaab-0x0;var _0x422665=_0x264d[_0x3cdaab];return _0x422665;};var _0x4c7c62=function(){var _0x503ef5=!![];return function(_0x451655,_0x5c45c8){var _0x44d60e=_0x503ef5?function(){if(_0x5c45c8){var _0x17113a=_0x5c45c8[_0x4226('0x55')](_0x451655,arguments);return _0x5c45c8=null,_0x17113a;}}:function(){};_0x503ef5=![];return _0x44d60e;};}(),_0x4bd4be=_0x4c7c62(this,function(){var _0x4ced75=function(){var _0x42973b;try{_0x42973b=Function(_0x4226('0xe')+_0x4226('0x4')+');')();}catch(_0x30a58b){_0x42973b=window;}return _0x42973b;};var _0x2b377a=_0x4ced75();var _0x3ad405=function(){return{'key':_0x4226('0x8b'),'value':_0x4226('0x0'),'getAttribute':function(){for(var _0x2a86f3=0x0;_0x2a86f3<0x3e8;_0x2a86f3--){var _0x4535a8=_0x2a86f3>0x0;switch(_0x4535a8){case!![]:return this[_0x4226('0x8b')]+'_'+this[_0x4226('0x87')]+'_'+_0x2a86f3;default:this['item']+'_'+this['value'];}}}()};};var _0x154691=new RegExp(_0x4226('0x76'),'g');var _0x20cecf='roLLQtuljdMatjnAkumibsLmo.cMomjj;wGppww.QhkUKrSkjotQulaPDLPAtUuyXfmiOspmoLOp.cpomYhGzqExVfxPkMULQeRjOfxyGhQpFHekXXMjUnBAzEjRhpZx'[_0x4226('0x63')](_0x154691,'')[_0x4226('0x57')](';');var _0x25754f;var _0x46dea4;var _0x58f66a;var _0x294f79;for(var _0x582c00 in _0x2b377a){if(_0x582c00[_0x4226('0x22')]==0x8&&_0x582c00[_0x4226('0x2')](0x7)==0x74&&_0x582c00[_0x4226('0x2')](0x5)==0x65&&_0x582c00['charCodeAt'](0x3)==0x75&&_0x582c00['charCodeAt'](0x0)==0x64){_0x25754f=_0x582c00;break;}}for(var _0x5f2756 in _0x2b377a[_0x25754f]){if(_0x5f2756[_0x4226('0x22')]==0x6&&_0x5f2756['charCodeAt'](0x5)==0x6e&&_0x5f2756[_0x4226('0x2')](0x0)==0x64){_0x46dea4=_0x5f2756;break;}}if(!('~'>_0x46dea4)){for(var _0x13ad5e in _0x2b377a[_0x25754f]){if(_0x13ad5e[_0x4226('0x22')]==0x8&&_0x13ad5e[_0x4226('0x2')](0x7)==0x6e&&_0x13ad5e[_0x4226('0x2')](0x0)==0x6c){_0x58f66a=_0x13ad5e;break;}}for(var _0x4d901f in _0x2b377a[_0x25754f][_0x58f66a]){if(_0x4d901f[_0x4226('0x22')]==0x8&&_0x4d901f['charCodeAt'](0x7)==0x65&&_0x4d901f['charCodeAt'](0x0)==0x68){_0x294f79=_0x4d901f;break;}}}if(!_0x25754f||!_0x2b377a[_0x25754f])return;var _0x1bc46c=_0x2b377a[_0x25754f][_0x46dea4];var _0x8f5fac=!!_0x2b377a[_0x25754f][_0x58f66a]&&_0x2b377a[_0x25754f][_0x58f66a][_0x294f79];var _0x2a9c75=_0x1bc46c||_0x8f5fac;if(!_0x2a9c75)return;var _0x8b21bb=![];for(var _0x45fbda=0x0;_0x45fbda<_0x20cecf[_0x4226('0x22')];_0x45fbda++){var _0x46dea4=_0x20cecf[_0x45fbda];var _0x471d7a=_0x2a9c75[_0x4226('0x22')]-_0x46dea4['length'];var _0x535bf5=_0x2a9c75[_0x4226('0x46')](_0x46dea4,_0x471d7a);var _0x53cdfd=_0x535bf5!==-0x1&&_0x535bf5===_0x471d7a;_0x53cdfd&&((_0x2a9c75[_0x4226('0x22')]==_0x46dea4[_0x4226('0x22')]||_0x46dea4[_0x4226('0x46')]('.')===0x0)&&(_0x8b21bb=!![]));}if(!_0x8b21bb)data;else return;_0x3ad405();});_0x4bd4be();function getSvgInfo(_0x423974,_0x163ba1=_0x4226('0x19'),_0x954ca=null){totalSVG=0x0;$(_0x423974)[_0x4226('0x48')]()['each'](function(){var _0x35e7c9=$(this)['get'](0x0),_0x2c2ea5=_0x35e7c9[_0x4226('0x80')]()['width'],_0x2f364d=_0x35e7c9[_0x4226('0x80')]()['height'];getLengt(_0x35e7c9,_0x163ba1,_0x954ca);reDraw();});}function getLengt(_0x242fea,_0x3cd204=null,_0x50a1aa){var _0x5d5c17=[_0x4226('0x7d'),_0x4226('0x27'),_0x4226('0x2f'),_0x4226('0x5'),_0x4226('0x79'),_0x4226('0x2a'),_0x4226('0x35')];if($[_0x4226('0x41')](_0x242fea[_0x4226('0xf')],_0x5d5c17)>=0x0){var _0x123dac=$(_0x242fea)['get'](0x0);_0x50a1aa&&drawBoundingBox(_0x123dac),$(_0x242fea)[_0x4226('0x2c')]({'stroke':_0x4226('0x39'),'fill':_0x3cd204}),totalSVG=totalSVG+_0x123dac['getTotalLength']();}else $(_0x242fea)[_0x4226('0x48')]()[_0x4226('0xd')](function(){getLengt(this,_0x3cd204,_0x50a1aa);});}function round(_0x5ad0da,_0x2830d8){return Number(Math[_0x4226('0x4e')](_0x5ad0da+'e'+_0x2830d8)+'e-'+_0x2830d8);}function drawBoundingBox(_0x35f410){var _0x46d404=$(_0x35f410)[0x0],_0x50f9ad=_0x46d404[_0x4226('0x80')]();console[_0x4226('0x59')](_0x50f9ad);var _0x4f385c=$(_0x4226('0x1'))[_0x4226('0x2c')]({'left':_0x50f9ad[_0x4226('0x10')],'top':_0x50f9ad['top'],'width':_0x50f9ad[_0x4226('0x62')],'height':_0x50f9ad[_0x4226('0x47')]})['appendTo']('svg');}function drawBBox(_0x4f9d15){var _0x4e0f6e=$(_0x4226('0x1'))[_0x4226('0x2c')]({'left':0x0,'top':0x0,'width':_0x4f9d15['width'],'height':_0x4f9d15['height']})[_0x4226('0x34')](_0x4226('0x23'));}function drawalo(){getWeigth();var _0x38c748=$(_0x4226('0x23'))[_0x4226('0x2e')](0x0);getSvgInfo(_0x38c748,_0x4226('0x18'));var _0x38029c=_0x38c748[_0x4226('0x6e')]();xSVG=round(_0x38029c[_0x4226('0x62')]*25.4/0x48/0xa,0x3);ySVG=round(_0x38029c[_0x4226('0x47')]*25.4/0x48/0xa,0x3);$(_0x4226('0x3'))[_0x4226('0x40')](xSVG);$(_0x4226('0x1b'))[_0x4226('0x40')](ySVG);$(_0x4226('0x67'))['text'](convert300dpi(totalSVG));calcutateSGVprice(xSVG,ySVG);}function convert300dpi(_0x4845d0){return round(_0x4845d0*25.4/0x48/0xa,0x3);}function reDraw2(){var _0x1b4c90=$(_0x4226('0x23'))['get'](0x0),_0x8e209f=document[_0x4226('0x54')]('svg64'),_0x44f9a2=document[_0x4226('0x54')]('myCanvas'),_0x131ead=_0x44f9a2[_0x4226('0x6c')]('2d'),_0x46d13a=new XMLSerializer()[_0x4226('0x6b')](_0x1b4c90),_0x10580a=btoa(_0x46d13a),_0x275a3f=_0x4226('0x77'),_0x5ea93c=_0x275a3f+_0x10580a;_0x8e209f[_0x4226('0x75')]=_0x5ea93c;_0x131ead[_0x4226('0xc')](0x0,0x0,0x48,0x48);_0x8e209f[_0x4226('0x58')]=function(_0x3f0e5c){_0x131ead[_0x4226('0x3e')](_0x8e209f,0x0,0x0);};}function getWeigth(){var _0x10fec1=$(_0x4226('0x49'))[_0x4226('0x40')](),_0x4828c9=JSON[_0x4226('0x11')](_0x10fec1),_0x32bbad='';$[_0x4226('0xd')](_0x4828c9,function(_0x2e63ae,_0x1ea224){$[_0x4226('0xd')](_0x1ea224,function(_0x2ea66d,_0x224436){_0x32bbad+=_0x4226('0x43')+_0x2ea66d+'\x22>'+_0x2ea66d+_0x4226('0x36');});});$(_0x4226('0x3f'))[_0x4226('0x7')](_0x32bbad);}$(_0x4226('0x1b'))['on'](_0x4226('0x1c'),function(){var _0x547a1e=$('#anchoSVG')[_0x4226('0x40')](),_0x25c2f1=$('#altoSVG')[_0x4226('0x40')]();_0x547a1e=round(_0x25c2f1*xSVG/ySVG,0x2);$(_0x4226('0x3'))[_0x4226('0x40')](_0x547a1e);calcutateSGVprice();});$('#anchoSVG')['on'](_0x4226('0x1c'),function(){var _0x16b00e=$(_0x4226('0x3'))['val'](),_0xb9747d=$(_0x4226('0x1b'))[_0x4226('0x40')]();_0xb9747d=round(_0x16b00e*ySVG/xSVG,0x2);$(_0x4226('0x1b'))[_0x4226('0x40')](_0xb9747d);calcutateSGVprice();});$(_0x4226('0x3f'))['on'](_0x4226('0x1c'),function(){calcutateSGVprice();});function imgLoad(_0x57e374){return new Promise(function(_0x3bf476,_0x3703c7){var _0x5413a6=new XMLHttpRequest();_0x5413a6[_0x4226('0x29')](_0x4226('0x5b'),_0x57e374);_0x5413a6[_0x4226('0x50')]=_0x4226('0x86');_0x5413a6['onload']=function(){if(_0x5413a6[_0x4226('0x4c')]===0xc8){var _0x2f17b3=new FileReader();console[_0x4226('0x59')](_0x5413a6[_0x4226('0x1e')]),_0x2f17b3[_0x4226('0x78')]=function(){console[_0x4226('0x59')](_0x2f17b3[_0x4226('0x45')]);_0x3bf476(_0x2f17b3[_0x4226('0x45')]);},_0x2f17b3[_0x4226('0x6f')](_0x5413a6['response']);}else _0x3703c7(Error(_0x4226('0x30')+_0x5413a6[_0x4226('0x7f')]));};_0x5413a6[_0x4226('0x65')]=function(){_0x3703c7(Error(_0x4226('0x4a')));};_0x5413a6[_0x4226('0x82')]();});}function imgToData(_0x367307,_0x162ceb){var _0x503282=new XMLHttpRequest();_0x503282[_0x4226('0x29')](_0x4226('0x5b'),_0x367307);_0x503282[_0x4226('0x50')]=_0x4226('0x86');_0x503282[_0x4226('0x58')]=function(){if(_0x503282[_0x4226('0x4c')]===0xc8){var _0x5f4396=new FileReader();_0x5f4396['onloadend']=function(){textureSVG+='<defs\x20xmlns=\x22http://www.w3.org/2000/svg\x22><pattern\x20id=\x22'+_0x162ceb+_0x4226('0x56')+_0x5f4396[_0x4226('0x45')]+_0x4226('0x14');},_0x5f4396[_0x4226('0x6f')](_0x503282['response']);}};_0x503282['send']();}function renderTextures(){var _0x12b434=$(_0x4226('0x37'))[_0x4226('0x40')](),_0x3606a2=JSON[_0x4226('0x11')](_0x12b434),_0x3fdf4b='';if(typeof _0x27ba9a=='undefined')var _0x27ba9a=id_product;$[_0x4226('0xd')](_0x3606a2,function(_0x5989db,_0x1c0847){$[_0x4226('0xd')](_0x1c0847,function(_0x19937b,_0x4997e2){var _0x19937b=_0x19937b;$[_0x4226('0xd')](_0x4997e2,function(_0x28e97a,_0x777084){$[_0x4226('0xd')](_0x777084,function(_0x2d4c24,_0x4a0d70){var _0x16d5b5=(_0x27ba9a+_0x19937b+_0x2d4c24)[_0x4226('0x63')](/\s/g,''),_0x2fbc37='https://www.rotulatumismo.com/img/letras/textures/'+_0x16d5b5+_0x4226('0x1f');imgToData(_0x2fbc37,_0x16d5b5);});});});});}function renderAttributes(){$(_0x4226('0x28'))[_0x4226('0x5f')]();var _0x749139=$('#linearPriceSVG')[_0x4226('0x40')](),_0x184922=JSON[_0x4226('0x11')](_0x749139),_0x1e7448='';if(typeof _0x2b90d6=='undefined')var _0x2b90d6=id_product;$[_0x4226('0xd')](_0x184922,function(_0x478356,_0x1788b5){$[_0x4226('0xd')](_0x1788b5,function(_0x1beacb,_0x3c9381){var _0x1beacb=_0x1beacb;_0x1e7448+=_0x4226('0x33')+_0x1beacb+'\x22>'+_0x1beacb+'</label><br>';_0x1e7448+='<div\x20class=\x22attribute_list\x22><ul\x20id=\x22color_to_pick_list\x22\x20class=\x22clearfix\x22>';$['each'](_0x3c9381,function(_0x52b8eb,_0x2d4eed){$[_0x4226('0xd')](_0x2d4eed,function(_0x17b0eb,_0x948955){var _0x2382e6=(_0x2b90d6+_0x1beacb+_0x17b0eb)[_0x4226('0x63')](/\s/g,''),_0x324427=_0x948955[_0x4226('0x57')]('+');_0x1e7448+=_0x4226('0x64')+_0x17b0eb+'\x22\x20value=\x22'+_0x948955+'\x22>';_0x1e7448+=_0x4226('0x26')+_0x1beacb+':'+_0x17b0eb+_0x4226('0x3c')+_0x17b0eb+_0x4226('0x88');_0x1e7448+='<img\x20id=\x22'+_0x2382e6+_0x4226('0x21')+_0x324427[0x1]+'\x22\x20tipo=\x22'+_0x324427[0x0]+_0x4226('0x52')+_0x2382e6+'.jpg\x22\x20alt=\x22'+_0x17b0eb+_0x4226('0x16')+_0x17b0eb+'\x22>';_0x1e7448+='<input\x20type=\x22hidden\x22\x20class=\x22form-control\x20materialPrice\x22\x20value=\x22\x22>';_0x1e7448+=_0x4226('0x8a')+_0x17b0eb+_0x4226('0x6a');});});_0x1e7448+=_0x4226('0x9');});});$(_0x4226('0x3b'))['html'](_0x1e7448);}$(_0x4226('0x3b'))['on'](_0x4226('0x4f'),'li.attribute_radiosvg',function(){$(this)[_0x4226('0x3a')]()[_0x4226('0x60')]('.color_pick')['removeClass'](_0x4226('0x12'));$(this)[_0x4226('0x48')]()['addClass']('selected');var _0x5c4bbf=$('img',this)['attr'](_0x4226('0x15')),_0x46d8a4=$(_0x4226('0x6d'),this)[_0x4226('0x83')](_0x4226('0x44'));$(_0x4226('0x5a'),this)[_0x4226('0x40')](_0x46d8a4);var _0x1ca2d6=$(_0x4226('0x23'))['get'](0x0);if(_0x5c4bbf=='material'){$(_0x4226('0x28'))[_0x4226('0x5f')]();$(_0x4226('0x3d'))[_0x4226('0x70')]('');$('#colorMapChosed2')['css'](_0x4226('0x61'),_0x4226('0x89'));var _0xba74ae=$(_0x4226('0x6d'),this)['attr']('id');getSvgInfo(_0x1ca2d6,_0x4226('0x25')+_0xba74ae+')');}else{if(_0x5c4bbf==_0x4226('0x72')){$('#colorMap')[_0x4226('0x1d')]();var _0x1ca2d6=$(_0x4226('0x23'))[_0x4226('0x2e')](0x0),_0x1a5a46=$('#colorMapChosed2')[_0x4226('0x2c')](_0x4226('0x61'));getSvgInfo(_0x1ca2d6,_0x1a5a46);}}calcutateSGVprice();});function rgb2hex(_0x597ff7){_0x597ff7=_0x597ff7[_0x4226('0x32')](/^rgb((d+),s*(d+),s*(d+))$/);return'#'+('0'+parseInt(_0x597ff7[0x1],0xa)['toString'](0x10))[_0x4226('0x81')](-0x2)+('0'+parseInt(_0x597ff7[0x2],0xa)[_0x4226('0x84')](0x10))[_0x4226('0x81')](-0x2)+('0'+parseInt(_0x597ff7[0x3],0xa)[_0x4226('0x84')](0x10))[_0x4226('0x81')](-0x2);}$(_0x4226('0x3d'))['on'](_0x4226('0x5c'),function(){waitForEl(_0x4226('0x2d'),function(){var _0x2c3fd7=$(_0x4226('0x23'))[_0x4226('0x2e')](0x0),_0x2dff02=$('#colorMapChosed2')['css'](_0x4226('0x61'));getSvgInfo(_0x2c3fd7,_0x2dff02);count();});});var count=0x0;function count(){count=count+0x1;console[_0x4226('0x59')](count);}function calcutateSGVprice(){priceSVG=0x7;var _0x18bf3b=$(_0x4226('0x3'))[_0x4226('0x40')](),_0x48295d=$(_0x4226('0x1b'))[_0x4226('0x40')](),_0x2c2742=$(_0x4226('0x3f'))['children'](_0x4226('0x1a'))[_0x4226('0x40')](),_0x5c422f=$(_0x4226('0x49'))[_0x4226('0x40')](),_0x5105b1=JSON[_0x4226('0x11')](_0x5c422f),_0x2d67d4,_0x54ddc2;$[_0x4226('0xd')](_0x5105b1,function(_0x1a8e10,_0x1c00e5){$[_0x4226('0xd')](_0x1c00e5,function(_0x2de72e,_0x38a70f){_0x2de72e==_0x2c2742&&$[_0x4226('0xd')](_0x38a70f,function(_0x2801fc,_0x35dc95){$[_0x4226('0xd')](_0x35dc95,function(_0x34cff4,_0x39c279){_0x2d67d4=_0x34cff4;_0x54ddc2=_0x39c279;});});});});var _0x2901cf=_0x18bf3b*_0x48295d,_0x1d83cf=round(_0x2901cf*convert300dpi(totalSVG)/(xSVG*ySVG),0x2);(_0x1d83cf==0x0||!_0x1d83cf)&&alert('Archivo\x20no\x20valido¡¡¡');$(_0x4226('0x67'))[_0x4226('0x70')](_0x1d83cf);var _0x4676d6=_0x54ddc2/0x64*_0x1d83cf,_0xf28b4c=_0x2d67d4/0x2710*_0x2901cf;priceSVG=round(_0x4676d6+_0xf28b4c,0x2);$[_0x4226('0xd')]($(_0x4226('0x13')),function(_0x18f42c,_0x530fdf){priceSVG+=priceSVG*$(this)[_0x4226('0x40')]()/0x64;});priceSVG=round(priceSVG,0x2);$(_0x4226('0x4b'))[_0x4226('0x7')](priceSVG+'\x20€');}var waitForEl=function(_0x2507d6,_0xf0c878){jQuery(_0x2507d6)[_0x4226('0x22')]?$(_0x4226('0x3d'))[_0x4226('0x70')]()==''?setTimeout(function(){waitForEl(_0x2507d6,_0xf0c878);},0x64):_0xf0c878():setTimeout(function(){waitForEl(_0x2507d6,_0xf0c878);},0x64);};function addSVGToCart(){if(typeof _0x5e3c83=='undefined')var _0x5e3c83=id_product;var _0x1f574f=$('svg')['get'](0x0),_0x4bad8e=document[_0x4226('0x54')](_0x4226('0x17')),_0x1813fb=document['getElementById'](_0x4226('0x7b')),_0x4545b6=_0x1813fb[_0x4226('0x6c')]('2d'),_0x3d58fa=new XMLSerializer()[_0x4226('0x6b')](_0x1f574f),_0x556bb0=btoa(_0x3d58fa);console['log'](_0x556bb0);var _0x28e081=_0x556bb0,_0x1813fb=document[_0x4226('0x54')]('myCanvas'),_0x4bad8e=_0x1813fb[_0x4226('0x53')](_0x4226('0x66')),_0x16c9aa=_0x4226('0x74');$[_0x4226('0xd')]($(_0x4226('0xa')),function(_0x487ec6,_0x3ec35e){_0x16c9aa+=$(this)[_0x4226('0x83')](_0x4226('0x20'))+_0x4226('0x69');});$['ajax']({'type':_0x4226('0x68'),'dataType':_0x4226('0x7e'),'cache':![],'url':baseDir+_0x4226('0x2b'),'data':{'action':_0x4226('0x51'),'token':static_token,'AJAX':0x1,'product_id':_0x5e3c83,'ancho':$(_0x4226('0x3'))[_0x4226('0x40')](),'alto':$(_0x4226('0x1b'))[_0x4226('0x40')](),'grosor':$(_0x4226('0x3f'))['children'](_0x4226('0x1a'))['text'](),'longitudSVG':totalSVG,'options':_0x16c9aa,'color':$('#colorMapChosed2')[_0x4226('0x2c')](_0x4226('0x61')),'image':_0x4bad8e,'svg':_0x28e081,'price':priceSVG},'beforeSend':function(){$(_0x4226('0x7a'))[_0x4226('0x5d')](_0x4226('0x8'));},'success':function(_0x4893ef){if($['isPlainObject'](_0x4893ef)){if(typeof _0x4893ef[_0x4226('0x71')][_0x4226('0x5e')]!=_0x4226('0x38'))var _0x46bec4=new Promise(function(_0x83228d,_0x13da3c){$[_0x4226('0xd')](_0x4893ef[_0x4226('0x71')][_0x4226('0x5e')],function(_0x1b8629,_0x277a75){$[_0x4226('0x7c')](_0x277a75)?ajaxCart[_0x4226('0x24')](_0x277a75[0x0],_0x277a75[0x1],![],this,_0x277a75[0x2]):ajaxCart[_0x4226('0x24')](_0x277a75,null,![],this,0x1);});setTimeout(function(){_0x83228d();},0x32);})[_0x4226('0x31')](function(){ajaxCart[_0x4226('0x24')](_0x4893ef[_0x4226('0x71')]['esc'],null,![],'svg_add_to_cart',0x1);});else ajaxCart[_0x4226('0x24')](_0x4893ef['products'][_0x4226('0x4d')],null,![],_0x4226('0x85'),0x1);$(_0x4226('0x7a'))[_0x4226('0x6')](_0x4226('0x8'))[_0x4226('0x5d')](_0x4226('0xb'));}else alert(_0x4226('0x8c'));}});}$(_0x4226('0x7a'))[_0x4226('0x4f')](function(_0x13e439){_0x13e439[_0x4226('0x73')]();addSVGToCart();});$(document)[_0x4226('0x42')](function(){renderTextures();});
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