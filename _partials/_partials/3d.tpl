<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<link rel="stylesheet" type="text/css" href="https://api.rotulatumismo.com/neon2/jquery.fontselect.css?asd">
<script src="{$base_dir_ssl}/js/jquery.fontselect.js?asd"></script>        
<script src="{$base_dir_ssl}/3dNow/build/three.min.js"></script>
<script src="{$base_dir_ssl}/3dNow/js/controls/OrbitControls.js"></script>


<script src="https://api.rotulatumismo.com/3dNow/nJs/SVGLoader.js?ssasd"></script>
<script src="{$base_dir_ssl}/3dNow/js/renderers/Projector.js"></script>
<script src="{$base_dir_ssl}/3dNow/js/objects/Sky.js"></script>
<script src="{$base_dir_ssl}/3dNow/js/objects/Water.js"></script>



<style>
canvas{
	cursor:pointer;
}
.sizeAncho{
	display:none;
}
.fancybox-content{
	height: 100% !important;
}#svg{
	height: 0px;
    width : 0px;
    visibility: hidden;
}
.dnow{
	visibility: hidden
}

#myMat, #myTextur, .materials{
	display: none;
}
.attribute_list .color_to_pick_list {
    display: inline-block;
    list-style-type: none;
}
.attribute_list .color_to_pick_list li {
    float: left;
    margin-top: 5px;
    padding: 1px;
    border: 1px solid #d9d9d9;
    border-radius: 15px;
    clear: none;
}
.attribute_list .color_to_pick_list li a.color_pick2 img {
    display: block;
    width: 80px;
    border-radius: 10px;
}
.attribute_list .color_to_pick_list li.selected {
    border: 1px solid #007ab7;
}
#svgSelectWeigth{
	width: 43%;
	margin-bottom: 20px;
}
.color_to_pick_list a.selected {
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
#colorsPalete{
	display: none;
	text-align: left;
    margin-left: 15px;
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
	height: 204vh;
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
    display: flex; 
    height: 0;
    display: flex;
    justify-content: center;
    align-items: center; 
    top: 90vh;
    position: absolute;
    text-align: center;
	width: 100%;
}
@keyframes sp-anime {
	100% { 
		transform: rotate(360deg); 
	}
}
.is-hide{
	display:none;
}
.swal2-popup.swal2-modal.swal2-show {
    width: 515px;
    font-size: 14px;
}
</style>
<div id="svg" class="col-lg-6">
	<svg width="200px" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="-750 -750 3373.49 2461.38" xml:space="preserve">
		<path class="st0" tot="1" d="M464.87,617.74c-1.08-6.26-2.75-12.09-5.02-17.49c-2.29-5.53-5.19-10.62-8.72-15.25&#10;&#9;&#9;c-6.9-9.05-15.74-15.52-26.52-19.41c-9.35-3.45-18.33-5.17-26.95-5.17c-14.81,0-28.06,4.38-39.78,13.15&#10;&#9;&#9;c-3.85,2.89-7.31,6.1-10.38,9.64c0.27-0.11,0.54-0.22,0.81-0.33c-6.59,7.37-11.43,16.18-14.51,26.45l-32.77,111.66l-32.54-111.66&#10;&#9;&#9;c-1.01-3.68-2.27-7.18-3.77-10.49c-4.46-10.06-11.13-18.45-20.02-25.15c-11.72-8.85-25.05-13.26-39.99-13.26&#10;&#9;&#9;c-8.77,0-17.75,1.72-26.95,5.17c-10.1,3.69-18.59,9.77-25.52,18.18c0.24-0.09,0.47-0.19,0.71-0.29c-0.56,0.66-1.11,1.33-1.64,2.02&#10;&#9;&#9;c-7.11,9.13-11.59,19.87-13.47,32.24l-36.22,211.9c-0.29,3.45-0.42,9.05-0.42,16.82c1.28,12.36,6.75,22.63,16.38,30.82&#10;&#9;&#9;c9.62,8.19,20.76,12.29,33.41,12.29c5.46,0,11.06-0.86,16.81-2.59c9.2-3.3,16.82-8.62,22.85-15.95c6.04-7.33,9.55-15.67,10.57-25&#10;&#9;&#9;l15.08-128.05l41.18,134.09c3.74,13.08,9.27,22.99,16.6,29.75c7.33,6.75,15.87,10.13,25.65,10.13c4.75,0,10.64-1.22,17.68-3.66&#10;&#9;&#9;c6.61-2.16,12.11-6,16.49-11.54c4.38-5.53,8.16-13.76,11.32-24.68l40.52-134.09l15.53,128.05c1,9.34,4.52,17.68,10.57,25&#10;&#9;&#9;c6.03,7.33,13.71,12.65,23.05,15.95c5.61,1.73,11.21,2.59,16.82,2.59c12.79,0,23.96-4.09,33.52-12.29&#10;&#9;&#9;c9.55-8.19,14.98-18.46,16.27-30.82c0-7.76-0.28-13.37-0.86-16.82L464.87,617.74z" Author="Andrea Iodice" id="4ea4c18423383234ba5ddf033175dd1d"/>
		<path class="st0" tot="2" d="M207.95,527.31c5.06,0,9.64-1.2,13.71-3.63c4.07-2.42,7.32-5.66,9.73-9.73c2.42-4.07,3.64-8.63,3.64-13.71&#10;&#9;&#9;v-40.31l35.24,52.29c6.83,10.44,15.16,15.66,24.99,15.66c5.44,0,10.63-1.76,15.55-5.3c3.76-2.76,6.62-6.09,8.58-9.96&#10;&#9;&#9;c1.95-3.87,2.93-7.93,2.93-12.15c0-6.37-1.96-12.13-5.87-17.27l-13.86-18.4c-0.01-0.07-0.02-0.14-0.02-0.21l-6.07-8.06l3.25-2.47&#10;&#9;&#9;l5.41-4.26l0.93-1.03c10.67-9.37,16.01-21.93,16.01-37.66c0-4.38-0.62-9.33-1.85-14.86c-0.79-3.44-1.83-6.69-3.09-9.74&#10;&#9;&#9;c-2.06-5.08-4.77-9.63-8.13-13.65c-5.3-6.33-12.1-11.17-20.39-14.51c-8.3-3.34-17.86-5.01-28.68-5.01h-51.71&#10;&#9;&#9;c-5.77,0-10.68,1.13-14.75,3.4c-4.07,2.27-7.23,5.57-9.5,9.91c-0.73,1.41-1.33,2.92-1.83,4.5c0.1,0,0.2,0,0.3-0.01&#10;&#9;&#9;c-1.12,3.4-1.69,7.19-1.69,11.41v117.01c0,7.52,2.67,14,8,19.41C194.1,524.38,200.49,527.15,207.95,527.31z M235.25,401.42h23.61&#10;&#9;&#9;c2.22,0,4.21,0.89,5.98,2.66c1.77,1.76,2.68,3.95,2.77,6.56c0,3.3-0.95,6.01-2.82,8.12c-1.89,2.11-4.17,3.17-6.86,3.17h-17.28&#10;&#9;&#9;c-0.12-0.14-0.23-0.27-0.36-0.4h-5.04V401.42z" Author="Andrea Iodice" id="62ee974fa5587e679f3a0191166eb859"/>
		<path class="st0" tot="1" d="M671.65,500.3c5.68,6.57,12.85,12.02,21.47,16.35c8.64,4.34,18.64,7.43,30.01,9.28&#10;&#9;&#9;c4.14,0.77,9.1,1.15,14.86,1.15c5.98,0,10.94-0.39,14.86-1.15c11.44-1.85,21.48-4.93,30.11-9.28c8.64-4.33,15.86-9.78,21.66-16.35&#10;&#9;&#9;c5.8-6.56,10.15-14.22,13.07-22.97c2.92-8.75,4.38-18.43,4.38-29.03v-68.64c0-3.69-0.74-7.32-2.18-10.89&#10;&#9;&#9;c-0.19-0.47-0.39-0.92-0.6-1.37c-1.41-3.14-3.22-5.8-5.45-7.96c-5.22-5.45-11.68-8.17-19.36-8.17c-7.45,0-13.74,2.57-18.88,7.71&#10;&#9;&#9;c-3.03,3.03-5.21,6.41-6.58,10.09c0.1-0.01,0.2-0.01,0.3-0.02c-1.23,3.14-1.85,6.52-1.85,10.14v70.83c0,5.37-0.92,10.14-2.77,14.28&#10;&#9;&#9;c-1.84,4.14-4.49,7.52-7.94,10.14c-3.46,2.61-7.71,4.38-12.79,5.3c-1.25,0.15-2.34,0.26-3.27,0.34c0.05-0.15,0.11-0.29,0.16-0.44&#10;&#9;&#9;c-1.15,0.1-2.11,0.16-2.81,0.16c-1.31,0-3.27-0.15-5.87-0.46c-5.07-0.92-9.35-2.71-12.85-5.36c-3.46-2.63-6.1-5.97-7.95-10.02&#10;&#9;&#9;c-1.76-4.04-2.65-8.68-2.65-13.94V379.2c0-3.94-0.71-7.59-2.12-10.94c-1.36-3.39-3.44-6.49-6.23-9.28&#10;&#9;&#9;c-5.14-5.14-11.44-7.71-18.88-7.71c-7.6,0-14.13,2.73-19.58,8.17c-2.77,2.89-4.78,6.11-6.08,9.64c0.1,0,0.2-0.01,0.3-0.02&#10;&#9;&#9;c-1.26,3.25-1.89,6.78-1.89,10.59v68.64c0,10.45,1.48,20.09,4.44,28.9C661.64,486.04,665.96,493.74,671.65,500.3z" Author="Andrea Iodice" id="60084ce452d2a36ff24243ef74a04865"/>
		<path class="st0" tot="2" d="M487.85,385.05c0.02-0.04,0.03-0.08,0.05-0.12c-3.18-4.06-6.69-7.81-10.55-11.2&#10;&#9;&#9;c-5.42-4.76-11.4-8.85-17.97-12.27c-6.56-3.41-13.44-6-20.61-7.77c-7.19-1.76-14.46-2.65-21.83-2.65c-9.83,0-19.41,1.56-28.73,4.67&#10;&#9;&#9;c-9.33,3.1-17.91,7.58-25.74,13.41c-3.77,2.81-7.26,5.88-10.5,9.2c0.37-0.18,0.74-0.35,1.11-0.53c-3.85,3.84-7.35,8.02-10.47,12.57&#10;&#9;&#9;c-3.38,4.84-6.27,10.04-8.65,15.61c-2.38,5.57-4.16,11.16-5.36,16.77c-1.19,5.6-1.78,11.17-1.78,16.7c0,5.68,0.59,11.31,1.78,16.87&#10;&#9;&#9;c1.19,5.57,2.96,11.1,5.3,16.59c2.35,5.49,5.24,10.7,8.71,15.61c5.44,8.07,12.11,15.05,19.97,20.96&#10;&#9;&#9;c7.87,5.92,16.47,10.4,25.79,13.47c9.34,3.07,18.91,4.61,28.74,4.61c7.38,0,14.75-0.94,22.11-2.82c7.38-1.88,14.16-4.44,20.34-7.66&#10;&#9;&#9;c6.17-3.22,12.06-7.31,17.67-12.26c5.6-4.95,10.44-10.39,14.51-16.3c5.14-7.37,9.05-15.22,11.75-23.55&#10;&#9;&#9;c2.69-8.33,4.03-16.84,4.03-25.51c0-17.51-5.26-33.86-15.78-49.07C490.5,388.53,489.2,386.76,487.85,385.05z M451.55,453.66&#10;&#9;&#9;c-1.46,4.34-3.57,8.27-6.29,11.8c-2.73,3.54-5.86,6.45-9.39,8.76c-3.53,2.3-7.49,3.92-11.86,4.84c-0.32,0.06-0.64,0.1-0.96,0.16&#10;&#9;&#9;c0.1-0.16,0.19-0.32,0.29-0.47c-2.27,0.4-4.49,0.6-6.64,0.6c-6.53,0-12.54-1.7-18.02-5.12c-5.49-3.41-9.86-8.24-13.13-14.45&#10;&#9;&#9;c-0.57-1.09-1.09-2.2-1.56-3.33c-2.11-5.22-3.16-10.88-3.16-16.99c0-7.52,1.61-14.4,4.84-20.62c3.22-6.22,7.6-11.04,13.13-14.45&#10;&#9;&#9;s11.63-5.12,18.31-5.12c5.99,0,11.52,1.38,16.6,4.14c5.06,2.77,9.27,6.57,12.6,11.4c3.35,4.84,5.59,10.6,6.74,17.27&#10;&#9;&#9;c0.46,2.69,0.7,5.23,0.7,7.61C453.73,444.66,453,449.32,451.55,453.66z" Author="Andrea Iodice" id="0ea0e6f01531c4eba1f0a9b176078fbf"/>
		<path class="st0" tot="2" d="M864.21,525.24h66.11c6.29,0,11.69-2.26,16.18-6.79c1.13-1.15,2.14-2.37,2.99-3.65&#10;&#9;&#9;c0.23,0.35,0.45,0.71,0.69,1.07c2.88,4.1,6.96,7.31,12.27,9.61c3.69,1.62,7.45,2.42,11.29,2.42c5.6,0,10.72-1.76,15.37-5.3&#10;&#9;&#9;c4.65-3.53,8-8.29,10.08-14.28l2.88-7.83h57.24l2.65,7.83c2.23,6.15,5.67,10.94,10.31,14.4c4.64,3.45,9.69,5.18,15.14,5.18&#10;&#9;&#9;c3.85,0,7.61-0.8,11.29-2.42c5.31-2.3,9.39-5.51,12.27-9.61c2.88-4.11,4.32-8.86,4.32-14.23c0-3.68-1.03-8.56-3.11-14.63&#10;&#9;&#9;l-40.53-104.69c-0.26-0.66-0.53-1.31-0.81-1.95c-3.74-8.84-8.99-15.72-15.78-20.63c-7.18-5.18-15.42-7.77-24.7-7.77&#10;&#9;&#9;c-9.22,0-17.41,2.6-24.59,7.77c-4.19,3.03-7.78,6.83-10.8,11.35c0.16-0.04,0.32-0.08,0.48-0.12c-2.3,3.36-4.28,7.14-5.93,11.34&#10;&#9;&#9;L948.99,487c-0.06,0.14-0.1,0.27-0.15,0.4c-1.84-2.64-4.11-4.8-6.84-6.44c-2.33-1.41-4.84-2.34-7.52-2.81l0.13-0.35&#10;&#9;&#9;c-1.44-0.27-2.92-0.41-4.47-0.41h-39.68v-97.73c0-3.91-0.72-7.54-2.16-10.89c-1.38-3.39-3.48-6.5-6.31-9.33&#10;&#9;&#9;c-2.38-2.61-5.24-4.59-8.58-5.93c-3.34-1.34-6.85-2.01-10.54-2.01c-7.6,0-14.05,2.65-19.35,7.94c-2.54,2.54-4.51,5.53-5.93,8.99&#10;&#9;&#9;c-0.12,0.29-0.2,0.58-0.32,0.88c0.1,0,0.2-0.01,0.31-0.02c-1.3,3.3-1.95,6.69-1.95,10.14v116.09c0,8.68,2.73,15.8,8.18,21.37&#10;&#9;&#9;C849.28,522.46,856.07,525.24,864.21,525.24z M1030.52,407.3l12.79,45.72h-25.45L1030.52,407.3z" Author="Andrea Iodice" id="b48ef3e6d589eb6624c074c17c46d587"/>
		<path class="st0" tot="2" d="M1633.76,633.28c-7.62-11.35-16.49-21.49-26.61-30.4c-10.15-8.91-21.35-16.56-33.64-22.96&#10;&#9;&#9;c-12.28-6.4-25.15-11.25-38.59-14.56c-13.44-3.3-27.05-4.95-40.84-4.95c-18.4,0-36.34,2.91-53.79,8.73&#10;&#9;&#9;c-17.46,5.82-33.52,14.2-48.18,25.11c-3.5,2.61-6.87,5.35-10.13,8.19c0.63-0.38,1.28-0.74,1.92-1.11&#10;&#9;&#9;c-11.1,9.44-20.81,20.22-29.13,32.34c-6.32,9.05-11.71,18.8-16.17,29.21c-4.46,10.42-7.8,20.88-10.02,31.37&#10;&#9;&#9;c-2.23,10.49-3.34,20.91-3.34,31.25c0,10.64,1.12,21.17,3.34,31.59c2.23,10.42,5.53,20.76,9.91,31.04&#10;&#9;&#9;c4.39,10.27,9.81,20.02,16.28,29.21c10.21,15.09,22.67,28.17,37.4,39.23c14.73,11.07,30.83,19.47,48.29,25.23&#10;&#9;&#9;c17.46,5.74,35.39,8.62,53.78,8.62c13.81,0,27.6-1.76,41.39-5.29c13.8-3.52,26.48-8.3,38.06-14.33&#10;&#9;&#9;c11.56-6.04,22.6-13.69,33.09-22.96c10.48-9.27,19.54-19.44,27.15-30.51c9.63-13.8,16.96-28.49,21.99-44.08&#10;&#9;&#9;c5.04-15.59,7.55-31.51,7.55-47.75c0-20.56-3.88-40.27-11.63-59.13C1647.21,655.04,1641.18,644.01,1633.76,633.28z M1558.69,752.14&#10;&#9;&#9;c-2.73,8.12-6.65,15.49-11.75,22.1c-5.11,6.61-10.95,12.07-17.56,16.38c-3.48,2.27-7.17,4.16-11.08,5.72&#10;&#9;&#9;c0.23-0.25,0.46-0.49,0.68-0.75c-3.78,1.56-7.78,2.79-11.98,3.68c-4.61,0.87-9.06,1.3-13.37,1.3c-12.22,0-23.46-3.2-33.74-9.6&#10;&#9;&#9;c-10.27-6.39-18.47-15.42-24.57-27.06c-1.13-2.15-2.15-4.34-3.06-6.57c-3.95-9.77-5.93-20.38-5.93-31.83&#10;&#9;&#9;c0-14.08,3.02-26.94,9.05-38.58c6.04-11.64,14.23-20.66,24.57-27.06c10.36-6.39,21.77-9.6,34.27-9.6c11.21,0,21.57,2.59,31.05,7.76&#10;&#9;&#9;c9.48,5.18,17.35,12.29,23.6,21.34c6.26,9.05,10.46,19.84,12.61,32.34c0.86,5.03,1.3,9.78,1.3,14.23&#10;&#9;&#9;C1562.79,735.29,1561.42,744.03,1558.69,752.14z" Author="Andrea Iodice" id="2c7a73430737423b5ef136a0581f4d48"/>
		<path class="st0" tot="1" d="M1275.22,617.74c-1.09-6.32-2.79-12.2-5.09-17.64c-2.28-5.48-5.17-10.52-8.67-15.11&#10;&#9;&#9;c-6.9-9.05-15.73-15.52-26.51-19.41c-9.34-3.45-18.32-5.17-26.95-5.17c-14.81,0-28.06,4.38-39.78,13.15&#10;&#9;&#9;c-3.85,2.89-7.31,6.1-10.38,9.64c0.27-0.11,0.54-0.22,0.81-0.33c-6.59,7.37-11.43,16.18-14.52,26.45l-32.77,111.66l-32.55-111.66&#10;&#9;&#9;c-0.78-2.83-1.7-5.54-2.76-8.15c-4.44-11.11-11.44-20.28-21.02-27.5c-11.71-8.85-25.04-13.26-39.98-13.26&#10;&#9;&#9;c-8.77,0-17.76,1.72-26.96,5.17c-10.1,3.69-18.59,9.77-25.51,18.18c0.24-0.09,0.47-0.19,0.7-0.28c-0.56,0.66-1.11,1.32-1.64,2.01&#10;&#9;&#9;c-7.11,9.13-11.61,19.87-13.46,32.24l-36.22,211.9c-0.29,3.45-0.44,9.05-0.44,16.82c1.3,12.36,6.76,22.63,16.39,30.82&#10;&#9;&#9;c9.62,8.19,20.76,12.29,33.41,12.29c5.46,0,11.07-0.86,16.81-2.59c9.2-3.3,16.82-8.62,22.85-15.95c6.04-7.33,9.56-15.67,10.57-25&#10;&#9;&#9;l15.09-128.05l41.17,134.09c3.74,13.08,9.27,22.99,16.6,29.75c7.34,6.75,15.88,10.13,25.65,10.13c4.76,0,10.64-1.22,17.68-3.66&#10;&#9;&#9;c6.61-2.16,12.11-6,16.49-11.54c4.38-5.53,8.16-13.76,11.32-24.68l40.52-134.09l15.53,128.05c1,9.34,4.52,17.68,10.56,25&#10;&#9;&#9;c6.04,7.33,13.72,12.65,23.06,15.95c5.61,1.73,11.21,2.59,16.82,2.59c12.79,0,23.96-4.09,33.52-12.29&#10;&#9;&#9;c9.55-8.19,14.99-18.46,16.28-30.82c0-7.76-0.29-13.37-0.86-16.82L1275.22,617.74z" Author="Andrea Iodice" id="fa483050a5b37f117952fc78b5d9d45b"/>
		<path class="st0" tot="3" d="M1812.45,173.08c-0.66-3.43-12.38-5.96-26.18-8.34c-11.16-1.92-18.04-3.45-19.67-6.31&#10;&#9;&#9;c-0.67-2.58,2.39-6.19,9.77-11.86c2.95-2.26,3.73-3.86,2.91-4.95c-0.57-4.3-19.97-2.76-38-1.57c-0.86,0.29-1.75,0.59-2.65,0.88&#10;&#9;&#9;c-7.69,0.48-14.91,0.84-20.05,0.56c-20.58-1.1-18.74-11.78-12.07-36.3c6.67-24.51-32.05-5.52-41.37-1.02&#10;&#9;&#9;c-9.34,4.5-25.01,10.35-37.13-18.62c-12.12-28.98-15.02-5.04-25.01,10.35c-9.98,15.4-37.2-3.97-37.2-3.97&#10;&#9;&#9;c-33.6-30.73-23.13,3.93-18.14,17.72c-0.02-0.01-0.03-0.03-0.05-0.04c1,2.72,1.73,4.51,1.73,4.51c0.01,0.02,0.02,0.03,0.03,0.05&#10;&#9;&#9;c0.17,0.42,0.26,0.65,0.26,0.65c16.1,25.64,34.29,44.31,53.36,57.68c-522.39-138.8-439.03,297.8-439.03,297.8&#10;&#9;&#9;c0.19,0.06,0.38,0.12,0.56,0.18c0.09,0.51,0.14,0.78,0.14,0.78c661.44,210.54,556.18-260.47,556.18-260.47&#10;&#9;&#9;c-7.65-2.8-15.19-5.5-22.63-8.1c57.44,1.25,104.11-22.31,104.11-22.31C1811.12,177.5,1813.78,175.13,1812.45,173.08z&#10;&#9;&#9; M1433.92,281.95c-0.16,2.65-0.68,5.34-1.56,8.07c-0.89,2.73-2.16,5.35-3.81,7.85c-1.66,2.5-3.52,4.79-5.55,6.84&#10;&#9;&#9;c-7.54,6.7-16.19,9.95-25.98,9.74l-12.83-0.75l-5.44,94.01c-0.68,11.81-5.36,21.58-14.02,29.29c-8.19,7.64-18.05,11.12-29.63,10.45&#10;&#9;&#9;c-11.33-0.65-20.8-5.25-28.4-13.8c-7.7-9.03-11.22-19.39-10.54-31.08l5.46-94.36l-12.89-0.75c-10.36-0.59-19.07-4.85-26.11-12.75&#10;&#9;&#9;c-6.02-6.76-8.77-14.6-8.25-23.52c0.57-9.76,4.6-17.82,12.1-24.15c7.48-5.98,16.1-8.68,25.87-8.12l13.6,0.79l1.05-17.9&#10;&#9;&#9;c0.65-11.33,5.31-21.03,14.01-29.11c8.42-7.5,18.23-10.92,29.43-10.27c11.33,0.65,20.86,5.32,28.58,13.99&#10;&#9;&#9;c7.68,9.4,11.19,19.76,10.54,31.08l-0.99,16.99l12.48,0.72c9.41,0.55,17.35,4.33,23.83,11.36&#10;&#9;&#9;C1431.45,263.97,1434.46,272.42,1433.92,281.95z M1612.27,323.98l-3.51,60.43c-0.92,15.96-4.18,29.27-9.76,39.94&#10;&#9;&#9;c-5.58,10.68-13.76,18.86-24.51,24.57c-10.77,5.71-24.24,9-40.39,9.9c-6.19,0.35-11.48,0.4-15.81,0.15&#10;&#9;&#9;c-4.65-0.27-10.03-0.93-16.15-2c-23.68-4.1-40.88-12.92-51.59-26.47c-10.71-13.54-15.38-32.22-14.01-56.05l3.5-60.44&#10;&#9;&#9;c0.37-6.47,2.27-12.23,5.71-17.3c3.43-5.07,7.89-8.98,13.37-11.76c5.48-2.78,11.4-3.98,17.76-3.61&#10;&#9;&#9;c9.48,0.55,17.39,4.43,23.71,11.63c6.32,7.21,9.2,15.75,8.62,25.65l-3.44,59.53c-0.34,5.86,0.77,10.28,3.34,13.27&#10;&#9;&#9;c2.16,2.96,5.23,5.01,9.22,6.16c7.47,0.43,12.88-1.13,16.22-4.69c2.78-2.48,4.35-6.74,4.7-12.8l3.45-59.53&#10;&#9;&#9;c0.36-6.36,2.27-12.14,5.71-17.36c3.44-5.23,7.91-9.28,13.4-12.15c5.49-2.87,11.41-4.13,17.76-3.76&#10;&#9;&#9;c6.47,0.37,12.23,2.25,17.31,5.63c5.07,3.39,8.99,7.79,11.77,13.22C1611.43,311.56,1612.64,317.51,1612.27,323.98z" Author="Andrea Iodice" id="bff245fdb91b90b6f1fd1e9f5e263096"/>
		<path class="st0" tot="1" d="M649.29,378.04c0-3.49-0.67-6.78-1.99-9.86c-0.37-0.92-0.79-1.82-1.29-2.7c-2.07-3.72-4.87-6.68-8.41-8.87&#10;&#9;&#9;c-3.53-2.19-7.48-3.28-11.87-3.28h-92.25c-4.14,0-7.99,1.01-11.5,3.05c-3.54,2.04-6.35,4.83-8.42,8.41&#10;&#9;&#9;c-1.15,1.97-1.99,4.08-2.55,6.3h0.27c-0.51,1.91-0.81,3.92-0.89,6.02c0,6.53,2.24,12.13,6.73,16.82c4.5,4.68,9.92,7.02,16.3,7.02&#10;&#9;&#9;h18.66v98.82c0,4.91,1.2,9.48,3.64,13.71c2.41,4.22,5.67,7.54,9.78,9.97c4.11,2.42,8.7,3.63,13.76,3.63c4.99,0,9.5-1.21,13.53-3.63&#10;&#9;&#9;c4.03-2.42,7.27-5.65,9.67-9.68c2.43-4.02,3.63-8.54,3.63-13.53v-98.82h19.81c6.14,0,11.52-2.26,16.12-6.79&#10;&#9;&#9;C646.65,390.1,649.06,384.57,649.29,378.04z" Author="Andrea Iodice" id="ac08eca5a058351e98b837af8c681118"/>
		<path class="st0" tot="1" d="M895.17,745.05c-1.6-3.76-3.48-7.45-5.67-11.09c-4.25-7.04-9.42-13.4-15.53-19.08&#10;&#9;&#9;c-6.1-5.68-13.12-10.53-21.02-14.56c-10.33-5.31-23.14-10.2-38.37-14.66l-6.86-1.98c-0.63-0.06-1.27-0.13-1.91-0.2l-20.16-5.83&#10;&#9;&#9;l-14.66-3.45l-8.84-2.15l-3.01-0.87l-8.41-2.36c-3.16-0.87-5.54-1.87-7.12-3.03c-1.72-1.29-2.58-2.87-2.58-4.74&#10;&#9;&#9;c0-2.87,1.29-5.39,3.88-7.55c3.02-2.44,8.62-3.66,16.81-3.66c1.44,0,2.55,0.04,3.34,0.11c0.78,0.08,1.62,0.18,2.48,0.32l4.32,0.87&#10;&#9;&#9;l6.25,1.5l12.29,3.02l5.39,1.3l12.72,4.09l3.45,1.29c10.21,2.88,19.33,4.32,27.38,4.32c7.62,0,14.2-1.51,19.72-4.53&#10;&#9;&#9;c5.54-3.02,10.46-7.69,14.77-14.01c4.74-6.61,7.11-14.51,7.11-23.71c0-4.6-0.72-9.78-2.16-15.53c-0.53-1.81-1.16-3.56-1.89-5.26&#10;&#9;&#9;c-3.04-7.22-7.88-13.4-14.55-18.53c-8.12-6.25-20.52-11.89-37.19-16.92c-15.09-4.31-30.82-6.47-47.21-6.47&#10;&#9;&#9;c-7.9,0-15.6,0.43-23.06,1.3c-18.97,2.3-35.93,7.04-50.88,14.22c-12.46,5.99-23.03,13.19-31.79,21.57&#10;&#9;&#9;c0.42-0.23,0.86-0.46,1.28-0.69c-2.17,2.02-4.24,4.1-6.19,6.25c-8.62,9.35-15.12,19.76-19.51,31.25&#10;&#9;&#9;c-4.38,11.5-6.58,23.07-6.58,34.71c0,14.51,3.27,27.88,9.81,40.1c6.53,12.21,15.77,22.2,27.7,29.96&#10;&#9;&#9;c11.06,6.9,24.57,12.51,40.52,16.82l29.11,8.41l4.52,0.86l23.5,5.82l5.61,1.73l8.41,3.02c1.73,0.58,2.87,1.01,3.45,1.29&#10;&#9;&#9;c3.02,1.87,4.52,4.38,4.52,7.55c0,2.87-1.36,5.38-4.09,7.54c-1.87,1.58-5.38,3.16-10.56,4.75c-3.15,1.13-6.68,1.76-10.61,1.91&#10;&#9;&#9;c-0.06-0.15-0.11-0.29-0.18-0.43c-0.56,0.03-1.1,0.06-1.68,0.06c-4.45,0-9.63-0.5-15.52-1.5c-1.87-0.43-4.38-0.86-7.55-1.29&#10;&#9;&#9;l-4.74-1.3l-12.71-3.02l-17.69-4.52l-19.41-5.18c-5.17-1.15-10.34-1.73-15.52-1.73c-12.61,0-23.07,6.15-31.38,18.42&#10;&#9;&#9;c0.17-0.03,0.34-0.06,0.51-0.09c-0.14,0.21-0.29,0.4-0.43,0.61c-4.45,6.76-6.9,14.95-7.33,24.58c0,10.49,2.06,19.11,6.15,25.86&#10;&#9;&#9;c4.1,6.76,11.75,13.59,22.96,20.48c16.82,10.06,42.7,16.1,77.61,18.11c8.91,0.58,15.24,0.86,18.98,0.86&#10;&#9;&#9;c49.43,0,86.8-15.3,112.1-45.91c16.53-19.54,24.8-41.03,24.8-64.45c0-8.19-1.02-16.03-3.02-23.5&#10;&#9;&#9;C898.03,752.39,896.74,748.69,895.17,745.05z" Author="Andrea Iodice" id="c18fdbc23c8c8975db4dc99db1c3c98d"/>
		<path class="st0" tot="1" d="M613.77,587.15c-4.52-7.91-10.7-14.12-18.54-18.65c-7.83-4.53-16.28-6.79-25.33-6.79&#10;&#9;&#9;c-14.22,0-26.34,4.93-36.32,14.76c-1.82,1.8-3.48,3.67-4.97,5.62c0.21-0.07,0.43-0.13,0.65-0.2c-6.99,8.86-10.5,19.29-10.5,31.31&#10;&#9;&#9;v224.84c0,14.66,5.03,27.02,15.09,37.08c9.48,9.92,21.56,14.87,36.22,14.87c13.79,0,25.72-4.82,35.79-14.44&#10;&#9;&#9;c4.88-4.88,8.58-10.52,11.09-16.92c2.52-6.39,3.77-12.97,3.77-19.72V613.63c0-7.73-1.5-14.94-4.51-21.62&#10;&#9;&#9;C615.49,590.36,614.68,588.74,613.77,587.15z" Author="Andrea Iodice" id="a5cfcc15efc3d23fe487618c03879396"/>
	</svg>
</div>
<div id="overlaySvg">

	<div class="cv-spinner">
        
		<span class="spinner"></span>
	</div>
        <div class="spinner2">
        <h3 style="color:#E41482">{l s='Espera estamos elaborando tu diseño' mod='3dAndrea'}</h3>    
    </div>
</div>
    <div id="svgSettings" class="">
	
			
	
	
		<div class="form-inline">
			
			<input style="display:none" id="text" type="text"  class="form-control"/> 


			<div class="materials form-group col-lg-6"> 
				
				<select class="form-control slectors" id="myMat" onchange="chMat()">
				</select>

				<select class="form-control slectors" id="myTextur" onchange="chTex()">
				</select>
			</div>
			

		</div>

		
		<div class="form-inline">


			<div id="depth" class="form-group col-lg-12">
				<label for="myGross">{l s='Grosor mm'}</label> 
				<select class="form-control slectors" id="myGross" onchange="chGross()"></select>
				
			</div>

			<div class="form-group col-lg-12">
				<div id="selectors"></div>
			</div>
			
			
			
			
			
			<div id="priceSVG300"> 
				<span id="svgPrice" class="" itemprop="price"></span>
				

			</div>
			
			<div class="product_attributes clearfix">

			
			</div>

			<div id="colorMap" class="row attribute_list" style="display: none;">
        	    <label class="attribute_label">{l s='Elige el color'}</label>
                <div id="colorMapChosed" style=""></div>
        	    <div id="colorMapChosed2" style="display:none;margin-left:5px;width:15px;height:15px;background-color:#f6f6f6"></div>
	    	        <br>
        	    <ul class="color_to_pick_list" class="clearfix">
        	        <li id="Pantone" class="attribute_radio pointer" name="" value="" style="display:none">
        	            <a href="{$base_dir_ssl}/3dNow/color-maps/pantone.html"  name="Pantone" class="color_pick2 iframe" title="Pantone" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://cdn3.rotulatumismo.com/img/co/pantone.png" alt="Pantone" title="Pantone"></a>
        	        </li>
        	        <li id="Ncs" class="attribute_radio pointer" name="" value="" style="display:none">
        	            <a href="{$base_dir_ssl}/3dNow/color-maps/ncs.html"  name="Ncs" class="color_pick2 iframe" title="Ncs" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://cdn3.rotulatumismo.com/img/co/ncs.png" alt="Ncs" title="Ncs"></a>
        	        </li>
        	        <li  id="Ral" class="attribute_radio pointer" name="" value="" style="display:none">
        	            <a href="{$base_dir_ssl}/3dNow/color-maps/ral.html"  name="Ral" class="color_pick2 iframe" title="Ral" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://cdn3.rotulatumismo.com/img/co/ral.png" alt="Ral" title="Ral"></a>
        	        </li>
        	        <li id="Oracal" class="attribute_radio pointer" name="" value="" style="display:none">
        	            <a href="{$base_dir_ssl}/3dNow/color-maps/oracal.html"  name="oracal" class="color_pick2 iframe" title="Oracal" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://cdn3.rotulatumismo.com/img/co/oracal.png" alt="Oracal" title="Oracal"></a>
        	        </li>
					<li id="Colores" class="attribute_radio pointer" name="" value="" style="display:none">
        	            <a href="{$base_dir_ssl}/3dNow/color-maps/Colores.html"  name="Colores" class="color_pick2 iframe" title="Colores" onclick=""> <img style="text-align:center; margin: 0 auto;" src="https://www.rotulatumismo.com/img/co/colores.png" alt="Colores" title="Colores"></a>
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

        	    
        	    
        	</div>



		</div>
		{if $product->id == 618 || $product->id == 388}

		<div id="archivos2" class="archivos2" style="display:block;margin-top: -28px;display:none;">
											
								<p style="margin-left: 17px;">{l s='Tamaño de la barra en cm:'}</p> <input type="text" id="descripcionproducto"  maxlength="20" style="border: 1px solid #f21a7d;border-radius: 7px;margin-left: 7px;margin-bottom: 20px;margin-top: 5px;width: 18%;height: 30px;padding: 7px;"></input>

								<script type="text/javascript">
										function actualizarTexto()
										{
											var descProd = document.getElementById("descripcionproducto").value;
											var productAttribute = document.getElementById('idCombination').value;
											{literal}var url = "{/literal}{$content_base}{literal}includes/data/comentarios.php?idcart={/literal}{$cart->id}&idproduct={$product->id|intval}&idaddress={$cart->id_address_delivery}&cajaTexto=" + descProd + "&id_guest={$cart->id_guest|intval}&prodAttr=" + productAttribute;
											$.get(url);
										}
								</script>
					
		</div>

		{/if}		

		{if $product->id != 174}

		<div style="width:40%;margin:0 auto"><p style="font-family:opensans_light;float:left;margin-right: 10px;margin-top: 9px;font-size: 17px; padding-bottom:3px; margin-left:7px;"> <img src="{$content_base}info/tiempo.png" style="margin-left:-8px;margin-right:5px;" alt="{l s='Time'}"><span style="margin-top:7px; float:right;">{l s='Cómpralo ahora y lo tendrás el:'}</span>	

				{Ia::getFechaOne($lang_iso,$product->production_days)}</div>

		{/if}

		
		
	</div>

 
<script>
var totalSVG = 0;
var xSVG;
var ySVG;
var colorChosed;
var Author = 'QW5kcmVhSW9kaWNl';
var nxash = '3203974713930D0F4C680A700C6B2DEC';
var url = "{$base_dir_ssl}/3dNow/";
var cubeBox = '{$base_dir_ssl}/3dNow/textures/cube/skyboxsun25deg/';
var texturePath = "{$base_dir_ssl}/3dNow/texture/";

var urlIcon = "{$base_dir_ssl}/3dNow/icons/";
var urlTexture = "https://api.rotulatumismo.com/3dNow/texture/";


var priceSVG = 0;
var price;
var invertType = false;
var gross = 60;
var typeSize = 350;
var nElements = 1;

var treeD = document.getElementById('leftProduct');
var renderer,scene,camera,controls,pointLight, pointLightB, light1, light2, light3, light4;
var divWidth  = $(treeD).width();
var divHeight = divWidth; 
var allColors = false;
var materials, lettersTexutre; 
var isFile = false;
var myMat = document.getElementById('myMat');
var singletonSvg;
var firstLetter = true;
var permalink, hex, textMesh1 ;

THREE.Cache.enabled = true;

height = 0,
size = 0,
hover = 30,
curveSegments = 0,
bevelThickness = 0,
bevelSize = 0,
bevelEnabled = false,
font = undefined,
fontName = "droid/droid_sans", // helvetiker, optimer, gentilis, droid sans, droid serif

fontWeight = "regular"; // normal bold
var fontMap = {
	"helvetiker": 0,
	"optimer": 1,
	"gentilis": 2,
	"droid/droid_sans": 3,
	"droid/droid_serif": 4
};

var weightMap = {
	"regular": 0,
	"bold": 1
};
var fontIndex = 1;
var mirror = false;

var reverseFontMap = [];
var reverseWeightMap = [];
for ( var i in fontMap ) reverseFontMap[ fontMap[ i ] ] = i;
for ( var i in weightMap ) reverseWeightMap[ weightMap[ i ] ] = i;


var materialIndex;
var materialIndexTexture = null;
var arrayMaterialType;

var lines = [{ size: 0.01, scale: 100.0, label: "10mm" }];


var svgMarkup = document.querySelector('svg').outerHTML;
var updateOption;

{literal}
    var fontSvg;        
    var loadGfont;

    $(function(){

		$('#tuTexto').change(function() {
        	if(this.checked) {
            	var element = $('#okSVG').detach();
				$('#creaSvg').prepend(element);
				$('#okSVG').show();
				$('#inputNeon').show();
				$('#myTextur').val('Tipo');
				
				$('.noOnText').hide();
				$("#myGross").html('');
				var element = $('#depth').detach();
				$('#theGroz').prepend(element);
				renderAttributes();
            
        	}else{
				$('.noOnText').show();
				var element = $('#depth').detach();
				$('#inputNeon').hide();
				$('.noOnText').prepend(element);
			}
        
    	});
		
		
		if (typeof(fuente) != "undefined"){
			applyFont('MuseoSansRound');

			var fuentefinal = ['MuseoSansRound'];

		}else{
			applyFont('Bulo');

			 var fuentefinal = ['Nickainley', 'Bulo', 'Bauer', 'Bubble', 'ActionMan', 'ArialBold', 'Salome','Cubano', 'Hipstelvetica','Intro','Akzidenzgrotesk','Sensei', 'Abrahamlincoln', 'Abrilfatface', 'Leaguegothic','ComicSansBold','Lavandery','AristaBold','AdageScript','Morganite','Milkshake','CenturyGothic','Peace','Amatic','rockwell','Shrikhand','Bodoni','Pacifico','Colus','Bruselas','Porcenalosa','Sign','Pronib','Bauhaus','Arial-black','Quacker','Recon','Display','Globe'];

		}

        $('#font').fontselect({
					systemFonts: [],
					localFonts: fuentefinal,
					googleFonts: [],
					localFontsUrl: '/fonts/neon/' // End with a slash!
				})
				.on('change', function() {
                    console.log(this.value);
					applyFont(this.value);
				});

        $('#testo').change(function(){
            
            
           // getNeon()
            //drawalo()
            //getPng()
        });
        $('#getPng').click(function(){
            
            
            getNeon()
            //drawalo()
            //getPng()
        });
		$('#escribo').click(function(){
			var element = $('#okSVG').detach();
			$('#creaSvg').prepend(element);
			$('#okSVG').show();
			$('#inputNeon').show();
			$('#myTextur').val('Tipo');
			renderAttributes();
			$('.noOnText').hide();
			//$('#theGroz').html('');
			$("#myGross").html('');
			var element = $('#depth').detach();
			$('#theGroz').prepend(element);
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
        
        //getNeon()
        


		// Set selected font on paragraphs
		//$('p').css({fontFamily:"'"+fontFamily+"'", fontWeight:fontWeight});
	}
	var fH = 0;

    function getNeon(){
        
		var theRealSize = $('#size').val()* 28.3464567;
		var txt = "'"+$('#testo').val()+"'";
		if(txt == "''"){
			swal({
					title: "Introduce tu texto",
					text: "Para poder fabricar las letras",
					type: "warning",
					showCancelButton: false,
					confirmButtonColor: '#e73b81'
				});

				return;
		
		}
		
		/* Julia: comprobar la altura minima del producto para que no deje escribir alturas mas pequeñas */
		if (typeof(Alturaminima) != "undefined"){

			var alturacliente = $('#size').val();

			if(alturacliente < Alturaminima){

				swal({
					title: "Altura no permitida",
					text: "Para poder fabricar las letras su mínimo de altura tendría que ser " + Alturaminima + " cm ",
					type: "warning",
					showCancelButton: false,
					confirmButtonColor: '#e73b81'
				});

				return;
			}

		}

		/* Julia: comprobar la altura máxima del producto para que no deje escribir alturas mas pequeñas */
		if (typeof(Alturamaxima) != "undefined"){

			var alturacliente = $('#size').val();

			if(alturacliente > Alturamaxima){

				swal({
					title: "Altura no permitida",
					text: "Para poder fabricar las letras su máximo de altura tendría que ser " + Alturamaxima + " cm ",
					type: "warning",
					showCancelButton: false,
					confirmButtonColor: '#e73b81'
				});

				return;
			}

		}


        $('#neonSvg').html('');
		$('#svg').html('');
		totalSVG = 0;
		console.log('colorChosed');
		console.log(colorChosed);
		$("#overlaySvg").fadeIn(100);　
        $.post( "https://api.rotulatumismo.com/neon2/neon2.php", { testo: txt, font: fontSvg, size: theRealSize, color: "ffffff" } ).done(function( data ) {
            //alert( "Data Loaded: " + data );
            if(data != 'undefined'){
                $('#svg').html(data);
                drawalo();
				
				$('#sizeAncho').val($('#anchoSVG').val());
				$('.sizeAncho').show();
				
					
                
					//getPng2();
					
					$('#svg').html(data);
					setTimeout(function(){
		  				if(scene.getObjectByName("userSVG")){
							destroy();
			  			}
					},
            		10);
		  
		  	//$('#svg').hide();
			  		if(isFile == false){

						start3d();  
					}
		  	//destroy();
		  			svgMarkup = data;
					//drawalo();
					setTimeout(function(){  
						isFile = true;
		  				invertType = true;
						calculatePrice();
            		    drawSvg(svgMarkup);

					},200);
					setTimeout(function(){
						adaptIt();
						$.each( $("#selectors").find('.selected') , function (key, data) {
							//needUpdate(data);
						});
					},200);
					//invertUpdate();
					var element = $('canvas').detach();
					$('#okSVG').prepend(element);
					$([document.documentElement, document.body]).animate({
        				scrollTop: $("canvas").offset().top
    				}, 2000);
					$("#overlaySvg").fadeOut(100);
					
					
					
				
            }
        });
		
    }
	
	
{/literal}
</script>
<script src="{$base_dir_ssl}/3dNow/prd/{$product->price_square}.js?asd"></script>

<script src="{$base_dir_ssl}/3dNow/build/threed.min.js"></script>
			


<link href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.8.0/sweetalert2.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.8.0/sweetalert2.min.js"></script>

