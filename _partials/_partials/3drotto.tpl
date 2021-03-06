<script src="https://api.rotulatumismo.com/3d/js/external/jquery-2.1.4.min.js"></script>
    <script src="https://api.rotulatumismo.com/3d/js/external/three.js"></script>
    <script src="https://api.rotulatumismo.com/3d/js/external/OrbitControls.js"></script>
    <script src="https://api.rotulatumismo.com/3d/js/external/d3-threeD.js"></script>
    <script src="https://api.rotulatumismo.com/3d/js/external/STLExporter.js"></script>
    <script src="https://api.rotulatumismo.com/3d/js/external/flatten.js"></script>
    <script src="https://api.rotulatumismo.com/3d/js/external/ThreeCSG.js"></script>
    <script src="https://api.rotulatumismo.com/3d/js/SVGtoSTL.js?asd=asdasda"></script>

	<div id="optionsDiv" class="optionsDiv" style="display:none">
        
        <!-- Start Formoid form-->
        <form class="formoid-solid-light-green" style="background-color:#FFFFFF;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:480px;min-width:150px" method="post">
          <div class="title"><h2>Options</h2></div>
          <div class="element-input">
            <label class="title" for="typeWidth">Image Size (mm)</label>
            <div class="item-cont">
              <input class="large" type="text" name="typeSize" id="typeSize" placeholder="Image Size (mm)" value="60"/>
              </label>
              <span class="icon-place"></span>
            </div>
          </div>
          <div class="element-input">
            <label class="title"></label>
            <label class="title" for="typeDepth">Depth of Type (mm)</label>
            <div class="item-cont">
              <input class="large" type="text" name="typeDepth" id="typeDepth" placeholder="Depth of Type (mm)" value="3"/>
              <span class="icon-place"></span>
            </div>
          </div>
          <div class="element-checkbox">
            <label class="title"></label>
            <div class="column column1">
              <label>
                <input type="checkbox" name="checkbox[]" id="invertType" value="Invert Type"/>
                <span>Invert Type</span>
              </label>
            </div>
            <span class="clearfix"></span>
          </div>
          <div class="element-checkbox">
            <label class="title"></label>
            <div class="column column1">
              <label>
                <input type="checkbox" name="checkbox[]" id="bevel" value="Flare Type"/>
                <span>Flare Type</span>
              </label>
            </div>
            <span class="clearfix"></span>
          </div>
          <div class="element-checkbox">
            <label class="title"></label>
            <div class="column column1">
              <label>
                <input type="checkbox" name="checkbox[]" id="reverseWO" value="Reverse Winding Order"/>
                <span>Reverse Winding-order</span>
              </label>
            </div>
            <span class="clearfix"></span>
          </div>
          <div class="element-checkbox">
            <label class="title"></label>
            <div class="column column1">
              <label>
                <input type="checkbox" name="checkbox[]" id="wantBasePlate" value="Use Base Plate" checked/>
                <span>Use Base Plate</span>
              </label>
            </div>
            <span class="clearfix"></span>
          </div>
          <div class="element-radio">
            <label class="title baseShape">Base Plate Shape</label>
            <div class="column column1">
              <label>
                <input type="radio" name="baseShape" value="Rectangular" checked/>
                <span>Rectangular</span>
              </label>
              <label>
                <input type="radio" name="baseShape" value="Circular"/>
                <span>Circular</span>
              </label>
            </div>
            <span class="clearfix"></span>
          </div>
          <div class="element-input">
            <label class="title"></label>
            <label class="title baseDepth" for="baseDepth">Depth of Base (mm)</label>
            <div class="item-cont">
              <input class="large" type="text" name="baseDepth" id="baseDepth" placeholder="Depth of Base (mm)" value="5"/>
              <span class="icon-place"></span>
            </div>
          </div>
          <div class="element-input">
            <label class="title"></label>
            <label class="title buffer" for="buffer">Buffer (mm)</label>
            <div class="item-cont">
              <input class="large" type="text" name="buffer" id="buffer" placeholder="Buffer (mm)" value="5"/>
              <span class="icon-place"></span>
            </div>
          </div>
          <div class="element-checkbox">
            <label class="title">Render Options</label>
            <div class="column column1">
              <label>
                <input type="checkbox" name="checkbox1[]" id="showWireFrame" value="Show Wire Frame"/>
                <span>Show Wire Frame</span>
              </label>
              <label>
                <input type="checkbox" name="checkbox1[]" id="showEdges" value="Show Edges" checked/>
                <span>Show Edges</span>
              </label>
              <label>
                <input type="checkbox" name="checkbox1[]" id="showNormals" value="Show Normals"/>
                <span>Show Normals</span>
              </label>
            </div>
            <span class="clearfix"></span>
          </div>
          <div class="element-input">
              <label class="title">Color</label>
              <input type="text" id="colorPicker"/>
          </div>
          <div class="submit">
            <input type="submit" value="Re-render"/>
          </div>
        </form>
        <script type="text/javascript" src="https://api.rotulatumismo.com/3d/js/form-green.js"></script>
        <!-- Stop Formoid form-->
      </div>

<script>
$(document).ready( function () {
		$( "#3d" ).click(function() {
			$('#myCanvas').hide();
			$("#leftProduct").append('<div id="stlCanvas" class="pb-left-column col-xs-12 col-sm-4 col-md-8"></div>');
			$("#stlCanvas").append(renderer.domElement);
  			do3d();
		});
        // When asked to upload an SVG file, use this handler
        $("#uploadText").on("change", handleFileSelect);
        // Initialize the color picker
        $("#colorPicker").spectrum({ color: "#5d9dea" });
        // Handler for form submit
        
        // Disable some options that don't apply when base plate is off
        $("input#wantBasePlate").change(function() {
            $("input[name=baseShape]").prop( "disabled", !this.checked );
            $("label.baseShape").toggleClass("disabled");
            $("input#bevel").prop( "disabled", !this.checked );
            $("input#baseDepth").prop( "disabled", !this.checked );
            $("label.baseDepth").toggleClass("disabled");
            $("input#buffer").prop( "disabled", !this.checked );
            $("label.buffer").toggleClass("disabled");
            $("input#basePlateShape").prop( "disabled", !this.checked );
            $("input#bevel").prop( "disabled", !this.checked );
        });
        // When asked to export 3D scene to STL file, do so,
        // using the uploaded filename with a changed extension
        $(".download").on("click", function(){ saveSTL(scene, fileName.replace(/\.[^\.]*$/, "")); });
    });
function do3d(){
            
            // Numeric validations would go here
            clearGroup(group);
            renderObject(svgPaths, scene, group, getFormSelections());
            return true;
        };   
    // Check for webgl support
    function webgl() {
        try {
            var canvas = document.createElement( 'canvas' ); return !! ( window.WebGLRenderingContext && ( canvas.getContext( 'webgl' ) || canvas.getContext( 'experimental-webgl' ) ) );
        } catch ( e ) {
            return false;
        }
    }

    // Check for FileReader API support
    function fileapi() {
        return window.File && window.FileReader && window.FileList && window.Blob;
    }

    // Message to be built if webgl/fileapi support isn't present
    function notSupportedMessage(element) {
        $(element).empty();    // Clear the element
        $(element).append($("<div class='container'><div class='notsupported'></div></div>"));
        $(".notsupported").append($("<p class='big'>NOPE.</p>"));
        $(".notsupported").append($("<p class='small'>Your browser doesn't seem to support WebGL and/or the FileReader API.</p>"));
        $(".notsupported").append($("<p class='small'>Try a recent browser like <a href='https://www.google.com/chrome/browser/desktop' target='_blank'>Chrome</a> or <a href='https://www.mozilla.org/en-US/firefox' target='_blank'>Firefox</a>.</p>"));
    }

    // First check if support is present for the functions we'll use
    if(!webgl() || !fileapi()) {
        // Print a message that the browser doesn't support what we need
        notSupportedMessage($("body")); 
    }
            
    // Remember the file name of the uploaded SVG
    // we'll re-use this with a ".stl" extension at download time
    var fileName;
    // The 'path' tags from the SVG are all we need to keep.
    var svgPaths = [];

    // Pull options from the form
    function getFormSelections() {
        return {
            typeSize: Math.abs(Number($("input#typeSize").val())),
            typeDepth: Number($("input#typeDepth").val()),
            wantInvertedType: $("input#invertType").prop("checked"),
            svgWindingIsCW: $("input#reverseWO").prop("checked"),
            bevelEnabled: $("input#bevel").prop("checked"),
            wantBasePlate: $("input#wantBasePlate").prop("checked"),
            basePlateShape: $("input[name=baseShape]:checked").val(),
            baseDepth: Math.abs(Number($("input#baseDepth").val())),
            baseBuffer: Math.abs(Number($("input#buffer").val())),
            wantWireFrame: $("input#showWireFrame").prop("checked"),
            wantEdges: $("input#showEdges").prop("checked"),
            wantNormals: $("input#showNormals").prop("checked"),
            objectColor: $("input#colorPicker").spectrum("get").toHexString()
        };
    }

    function handleFileSelect(evt) {
      var file = evt.target.files[0]; // FileList object

      // Only process image files.
      if (file.type!="image/svg+xml") {
        return;
      }

      // To render the SVG on-screen
      var readerURL = new FileReader();
      // To parse the xml within the SVG file
      var readerString = new FileReader();

      readerURL.onload = function (e) {
          //$('#uploadedSVG').attr('src', e.target.result);
          //$('#uploadedSVG').fadeIn();
      }

      // Closure to capture the file information.
      readerString.onload = (function(uploadedFile) {
        return function(e) {
          console.log("Parsing SVG paths...");
          // Get the paths out of the SVG
          var svgDoc = $.parseXML(e.target.result);
          // "Flatten" the SVG by applying all transforms to shapes and paths
          flatten(svgDoc.children[0]);
          // Write to global paths variable. Is there an easy way to return from a closure?
          svgPaths = $("path", svgDoc).map(function(){
			  return $(this).attr("d");
			}).get();
          // Store the file name in a global
          fileName = uploadedFile.name;
          // In case this is the second file uploaded.
          clearGroup(group);
		  //$('#myCanvas').hide();
		  //$('#stlCanvas').show();
          // Render the SVG for the first time
          renderObject(svgPaths, scene, group, getFormSelections());
        };
      })(file);

      // Read in the svg file (in-memory)
      console.log("Attempting to read file '"+file.name+"'...");

      // Reads the SVG contents into a string
      readerString.readAsText(evt.target.files[0]);
      // Reads the SVG as a blob, to be referenced via URL
      readerURL.readAsDataURL(evt.target.files[0]);
    };

var camera, scene, group, renderer, controls,light1, light2, light3, light4;
    var clock = new THREE.Clock();

    if(webgl()) {
		$("#leftProduct").append('<div id="stlCanvas"></div>');
        init();
		setTimeout(function(){ 
			
			$("#stlCanvas").append(renderer.domElement);
			
		}, 3000);

        
        animate();
    }

    function init() {
		
        var divWidth  = (window.innerWidth/2) ;
        var divHeight = (window.innerHeight) ;
        camera = new THREE.PerspectiveCamera( 50, divWidth/divHeight, 1, 1000 );
        camera.position.set( 0, -200, 200 );
        //var sphere = new THREE.SphereBufferGeometry( 0.5, 16, 8 );









        renderer = new THREE.WebGLRenderer( { antialias: true } );
        renderer.setClearColor( 0xe0e0e0 );
        renderer.setPixelRatio( window.devicePixelRatio );
        renderer.setSize( divWidth, divHeight );

        scene = new THREE.Scene();
		 scene.add( new THREE.AmbientLight( 0x222222 ) );

		 /// direct light
        var light = new THREE.DirectionalLight( 0x222222 );
        light.position.set( 0.75, 0.75, 1.0 ).normalize();
        scene.add( light );

        light = new THREE.PointLight( 0x222222 );
        light.position.copy( camera.position );
        scene.add( light );

/*
        light1 = new THREE.PointLight( 0xff0040, 2, 50 );
light1.add( new THREE.Mesh( sphere, new THREE.MeshBasicMaterial( { color: 0xffffff } ) ) );
scene.add( light1 );

light2 = new THREE.PointLight( 0x0040ff, 2, 50 );
light2.add( new THREE.Mesh( sphere, new THREE.MeshBasicMaterial( { color: 0x0040ff } ) ) );
scene.add( light2 );

light3 = new THREE.PointLight( 0x80ff80, 2, 50 );
light3.add( new THREE.Mesh( sphere, new THREE.MeshBasicMaterial( { color: 0x80ff80 } ) ) );
scene.add( light3 );

light4 = new THREE.PointLight( 0xffaa00, 2, 50 );
light4.add( new THREE.Mesh( sphere, new THREE.MeshBasicMaterial( { color: 0xffaa00 } ) ) );
scene.add( light4 );*/
        

      

        controls = new THREE.OrbitControls( camera, renderer.domElement );
        controls.minDistance = 50;
        controls.maxDistance = 200;

        

      

        /// backgroup grids
        //var helper = new THREE.GridHelper( 70, 10 );
        //helper.rotation.x = Math.PI / 2;
        //scene.add( helper );

        group= new THREE.Group();
        scene.add( group );


        window.addEventListener( 'resize', onWindowResize, false );
        function onWindowResize(){
            var divWidth  = (window.innerWidth/2)  ;
            var divHeight = (window.innerHeight);
            camera.aspect = divWidth / divHeight;
            camera.updateProjectionMatrix();
            renderer.setSize( divWidth, divHeight );
        }

        //stats = new THREE.Stats();
        //document.body.appendChild( stats.dom );

    }

    function animate() {
        requestAnimationFrame( animate );
        controls.update();
        render();
        //stats.update();
    }


    function render() {

var time = Date.now() * 0.0005;
var delta = clock.getDelta();

//if ( object ) object.rotation.y -= 0.5 * delta;
/*
light1.position.x = Math.sin( time * 0.7 ) * 30;
light1.position.y = Math.cos( time * 0.5 ) * 40;
light1.position.z = Math.cos( time * 0.3 ) * 30;

light2.position.x = Math.cos( time * 0.3 ) * 30;
light2.position.y = Math.sin( time * 0.5 ) * 40;
light2.position.z = Math.sin( time * 0.7 ) * 30;

light3.position.x = Math.sin( time * 0.7 ) * 30;
light3.position.y = Math.cos( time * 0.3 ) * 40;
light3.position.z = Math.sin( time * 0.5 ) * 30;

light4.position.x = Math.sin( time * 0.3 ) * 30;
light4.position.y = Math.cos( time * 0.7 ) * 40;
light4.position.z = Math.sin( time * 0.5 ) * 30;*/

renderer.render( scene, camera );

}

</script>