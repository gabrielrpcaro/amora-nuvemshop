<section class="section-home-modules">
    <div class="container{% if settings.modules_full %}-fluid p-0{% endif %}">
        {% set num_modules = 0 %}
        {% for module in ['module_01', 'module_02'] %}
            {% set module_show = attribute(settings,"#{module}_show") %}
            {% set module_title = attribute(settings,"#{module}_title") %}
            {% set module_button_text = attribute(settings,"#{module}_button") %}
            {% set has_module =  module_show and (module_title or module_description or "#{module}.jpg" | has_custom_image) %}
            {% if has_module %}
                {% set num_modules = num_modules + 1 %}
            {% endif %}
        {% endfor %}

        <div class="row sem-margem">

        {% for module in ['module_01', 'module_02'] %}
            {% set module_show = attribute(settings,"#{module}_show") %}
            {% set module_align = attribute(settings,"#{module}_align") %}
            {% set module_title = attribute(settings,"#{module}_title") %}
            {% set module_description = attribute(settings,"#{module}_description") %}
            {% set module_button_text = attribute(settings,"#{module}_button") %}
            {% set module_url = attribute(settings,"#{module}_url") %}
            {% set module_cortexto = attribute(settings,"#{module}_cortexto") %}
            {% set module_corbotao = attribute(settings,"#{module}_corbotao") %}
            {% set module_cortexto_botao = attribute(settings,"#{module}_cortexto_botao") %}
            {% set has_module =  module_show and (module_title or module_description or "#{module}.jpg" | has_custom_image) %}
            {% set has_module_text =  module_title or module_description or module_button_text %}
            {% if has_module %}
                {% if module_url %}
                    <a class="module-with-text-link" href="{{ module_url }}"{% if module_title %} title="{{ module_title }}" aria-label="{{ module_title }}"{% else %} title="{{ 'Módulo de' | translate }} {{ store.name }}" aria-label="{{ 'Módulo de' | translate }} {{ store.name }}"{% endif %}>
                {% endif %}

                <div class="modulo-home">
                    <div class="textbanner">
                            <div class="textbanner-image{% if has_banner_text and textoverimage %} overlay{% endif %}">
                                <img class="textbanner-image-background lazyautosizes lazyload fade-in" src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{ "#{module}.jpg" | static_url | settings_image_url('large') }} 480w, {{ "#{module}.jpg" | static_url | settings_image_url('huge') }} 640w' data-sizes="auto" {% if module_title %}alt="{{ module_title }}"{% else %}alt="{{ 'Módulo de' | translate }} {{ store.name }}"{% endif %} data-expand="-10"/>
                            </div>
                            <div class="textbanner-text" {% if module_cortexto %}style="color: {{ module_cortexto }};"{% endif %}>
                                {% if module_title %}
                                    <div class="h1 textbanner-title">{{ module_title }}</div>
                                {% endif %}
                                {% if module_description %}
                                    <div class="textbanner-paragraph">{{ module_description }}</div>
                                {% endif %}
                                {% if module_url and module_button_text %}
                                    <button class="btn btn-primary btn-small" {% if module_corbotao %}style="background-color: {{ module_corbotao }}; color: {{ module_cortexto_botao }}; fill: {{ module_cortexto_botao }};"{% endif %}>{{ module_button_text }}</button>
                                {% endif %}
                            </div>
                    </div>
                    
                </div>
                {% if module_url %}
                    </a>
                {% endif %}
            {% endif %}
        {% endfor %}
        </div>
    </div>
</section>