<div class="utilities-container">
	{% if not store.is_catalog %}    
	<div class="utilities-item">
		<div id="ajax-cart" class="cart-summary">
		    <a {% if settings.ajax_cart and template != 'cart' %}href="#" class="js-modal-open js-fullscreen-modal-open js-toggle-cart" data-toggle="#modal-cart" data-modal-url="modal-fullscreen-cart"{% else %}href="{{ store.cart_url }}"{% endif %}>
		    	{% include "snipplets/svg/shopping-bag.tpl" with {svg_custom_class: "icon-inline icon-w-14 svg-icon-text"} %}
		    	<span class="js-cart-widget-amount cart-widget-amount">{{ "{1}" | translate(cart.items_count ) }}</span>
		    </a>
		</div>
	</div>
	{% endif %}
</div>