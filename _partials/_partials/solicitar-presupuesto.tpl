<script type="text/javascript">
$(function(){
       $("#form-more-information").on("submit", function(e){
           e.preventDefault();
           var formData = new FormData(document.getElementById("form-more-information"));
           $.ajax({
               url: "https://www.rotulatumismo.com/includes/data/enviar-form-solicitar-presupuesto.php",
               type: "post",
               dataType: "html",
               data: formData,
               cache: false,
               contentType: false,
    	 	processData: false
           }).done(function(res){
                   $(".formMoreInfo").css("display", "none");
                   $("#respuesta").html(res);
               });
       });
       var estado = 0;
       $('#pedirinfomostrar').click(function(){
       	if (estado == 0){
       		$('.formMoreInfo').show(500);	
       		if (window.innerWidth <= 768){
       			$('.adaptContentRes').css('margin-top', '436px');
       		}
       		estado = 1;
       	} else {
       		if (window.innerWidth <= 768){
       			$('.adaptContentRes').css('margin-top', '100px');
       		}
       		$('.formMoreInfo').hide(500);
       		estado = 0;
       	}
       });
});

</script>
		<div class="adaptResponsive">
		
			<div id="pedirinfomostrar" style="float:right;margin-right: 33px;"></div>
			<div class="formMoreInfo" style="display: none;">

<body>


			
			
			
				<form data-parsley-validate class="form-solid-dark" name='formulario' id="form-more-information" method='post' action='{$base_dir_ssl}includes/data/enviar-form-solicitar-presupuesto.php' target='_self' enctype="multipart/form-data">
					<input type='text' name='nombre' id='nombre' data-parsley-required="true" placeholder="Nombre" class="textFormMoreInfo"><span class="icon-place"></span>

					<input type='text' name='email' id='email' data-parsley-required="true" placeholder="Email" class="textFormMoreInfo">

					<input type='text' name='telefono' id='asunto' data-parsley-required="true" placeholder="Teléfono" class="textFormMoreInfo"/>
					<textarea name="mensaje" cols="35" rows="10" id="mensaje" data-parsley-required="true" placeholder="Escribe aquí sus observaciones. Comentanos que altura, grosor, acabado quiere." class="areaFormMoreInfo"></textarea>
					<div id="archivospedirinfo" style="overflow: hidden;float: left;">
					<input type="file" class="file_input" name='archivo2' id='archivo2' />
		        	<input type="submit" name="Enviar" value="Enviar" class="btnEnviar">
					</div>

				</form>
			</div>
			<div class="contRespuesta"><h3 id="respuesta"></h3></div>			
		</div>