{% set has_footer_contact_info = store.phone or store.email or store.blog or store.address %}    
{% set has_social_network = store.facebook or store.twitter or store.pinterest or store.instagram %}      

{% set has_footer_menu = settings.footer_menu %}
{% set has_payment_logos = settings.payments %}
{% set has_shipping_logos = settings.shipping %}
{% set has_shipping_payment_logos = has_payment_logos or has_shipping_logos %}
<footer class="js-hide-footer-while-scrolling display-when-content-ready" data-store="footer">

	<div id="album-footer">
	</div>

	    {% if store.instagram %}
	    {{ 'js/InstagramFeed.min.js' | static_url | script_tag }}
        <script>
            (function(){
                new InstagramFeed({
                    'username': 'amoraprint',
                    'container': document.getElementById("album-footer"),
                    'display_profile': false,
                    'display_biography': false,
                    'display_gallery': true,
                    'display_captions': false,
                    'callback': null,
                    'styling': true,
                    'items': 8,
                    'items_per_row': 4,
                    'margin': 0 
                });
            })();
        </script>
        {% endif %}



<div class="footer">
	<div class="container">  

		<div class="row">
			
			<div class="logo-rodape element-footer">
	    		<a href="{{ store.url }}"><img id="logo-rodape" src="{{ "images/amora-rodape.png" | static_url }}"></a>
			</div>

			<div class="texto-footer element-footer">
				<p>{{ settings.textinho_rodape }}</p>
				<h1>photoparty</h1>
			</div>

			{# Foot Nav and Social #}
			{% if has_footer_menu %}
			<div class="element-footer soci-footer">
	 			<div class="menu-footer">{% include "snipplets/navigation/navigation-foot.tpl" %}</div>
	 			{% if has_social_network %}
	 			<div class="social-footer">{% include "snipplets/social/social-links.tpl" %}</div>
	 			{% endif %}
			</div>
			{% endif %}

			<div class="element-footer stickers">
                    <img class="rodape-sticker-1" src="{{ "images/rodape_sticker_1.png" | static_url }}">
                    <img class="rodape-sticker-2" src="{{ "images/rodape_sticker_2.png" | static_url }}">
                    <img class="rodape-sticker-3" src="{{ "images/rodape_sticker_3.png" | static_url }}">
			</div>

			<div class="beyoung">
					<a href="https://www.facebook.com/youngdogstudio" target="_blank"><img src="{{ "images/beyoung.png" | static_url }}"></a>
			</div>
		</div>	

		{# Logos Payments and Shipping #}
 		{% if has_shipping_payment_logos %}
 			<div class="row element-footer footer-payments-shipping-logos">
 				{% if has_payment_logos %}
 					<div class="col text-center">{% include "snipplets/logos-icons.tpl" with {'payments': true} %}</div>
				{% endif %}
 				<div class="w-100 my-2"></div>
 				{% if has_shipping_logos %}
 					<div class="col text-center">{% include "snipplets/logos-icons.tpl" with {'shipping': true} %}</div>
 				{% endif %}
			</div>
		{% endif %}

		<div class="row pag-extras">
			<ul class="footer-menu m-0 p-0">
				{% for item in menus[settings.footer_extra_menu] %}
					<li class="footer-menu-item my-4">
				        <a class="footer-menu-link" href="{{ item.url }}" {% if item.url | is_external %}target="_blank"{% endif %}>{{ item.name }}</a>
					</li>
				{% endfor %}
			</ul>
		</div>

		<div class="row element-footer">
			<div class="col-md-6 text-center text-md-left">
                {#
                La leyenda que aparece debajo de esta linea de código debe mantenerse
                con las mismas palabras y con su apropiado link a Tienda Nube;
                como especifican nuestros términos de uso: http://www.tiendanube.com/terminos-de-uso .
                Si quieres puedes modificar el estilo y posición de la leyenda para que se adapte a
                tu sitio. Pero debe mantenerse visible para los visitantes y con el link funcional.
                Os créditos que aparece debaixo da linha de código deverá ser mantida com as mesmas
                palavras e com seu link para Nuvem Shop; como especificam nossos Termos de Uso:
                http://www.nuvemshop.com.br/termos-de-uso. Se você quiser poderá alterar o estilo
                e a posição dos créditos para que ele se adque ao seu site. Porém você precisa
                manter visivél e com um link funcionando.
                #}
                {{ new_powered_by_link }}
            </div>
            <div class="col-md-6 copyright text-center text-md-right pt-4 pt-md-0">
                {{ "Copyright {1} - {2}. Todos los derechos reservados." | translate( (store.business_name ? store.business_name : store.name) ~ (store.business_id ? ' - ' ~ store.business_id : ''), "now" | date('Y') ) }}
            </div>
        </div>

	</div>
</div>
</footer>