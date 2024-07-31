{# Payments details #}
<div id="single-product" class="js-has-new-shipping js-product-detail js-product-container js-shipping-calculator-container" data-variants="{{product.variants_object | json_encode }}">
    <div class="container">
        <div class="mostrar">{% include 'snipplets/breadcrumbs.tpl' %}</div>
        <div class="row section-single-product">
            <div class="col-md-6 lado-imagem" data-store="product-image-{{ product.id }}">
            	{% include 'snipplets/product/product-image.tpl' %}
            </div>
            <div class="col-md-6 lado-texto" data-store="product-info-{{ product.id }}">
            	{% include 'snipplets/product/product-form.tpl' %}
            </div>
        </div>
        {% if settings.show_product_fb_comment_box %}
            <div class="fb-comments section-fb-comments" data-href="{{ product.social_url }}" data-num-posts="5" data-width="100%"></div>
        {% endif %}
        <div id="reviewsapp"></div>
    </div>  
</div>

{# Related products #}
{% include 'snipplets/product/product-related.tpl' %}
