	<div class="fichaPdf">
		{if $product->id == 59 }
			<span><a href="{$content_dir}fichas/ficha-tecnica-rotulos-tubo-fluorescente.pdf" target="_blank">FICHA TÉCNICA</a></span>
		{elseif $product->id == 203}
				<span ><a href="{$content_dir}fichas/ficha-tecnica-rotulos-led.pdf" target="_blank">FICHA TÉCNICA</a></span>
        {elseif $product->id == 224}
				<span ><a href="{$content_dir}fichas/plantilla-banderola-vintage.pdf" target="_blank">PLANTILLA PARA DISEÑAR LA BANDEROLA</a></span>
        {elseif $product->id == 353}
			<span ><a href="{$content_dir}fichas/plantilla-bandera-de-gota.pdf" target="_blank">PLANTILLA PARA DISEÑAR LA BANDEROLA</a></span>
        {elseif $product->id == 301}
			<span ><a href="{$content_dir}fichas/ficha-tecnica-placa-metacriatoled.pdf" target="_blank">FICHA TÉCNICA</a></span>
        {elseif $product->id == 302}
			<span ><a href="{$content_dir}fichas/ficha-tecnica-display-aluminio.pdf" target="_blank">FICHA TÉCNICA</a></span>
        {elseif $product->id == 21}
			<span ><a href="{$content_dir}fichas/ficha-tecnica-banderola-lona.pdf" target="_blank">FICHA TÉCNICA</a></span>
        {elseif $product->id == 52}
			<span><a href="{$content_dir}fichas/ficha-tecnica-banderola-luminosa.pdf" target="_blank">FICHA TÉCNICA</a></span>
		{elseif $product->id == 28}
			<span><a href="{$content_dir}fichas/photocall.pdf" target="_blank">PLANTILLA DISEÑO</a></span>
		{/if}
	</div>