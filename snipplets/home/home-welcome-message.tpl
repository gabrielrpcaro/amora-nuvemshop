{% if settings.welcome_message %}
    <section class="section-welcome-home">
        <div class="container">
            <div class="row">
                <div class="col textos-do-welcome">
                    <div class="espaco-welcome"></div>
                    <div class="welcome-title"><img class="lazyload" src="{{ "images/titulo.png" | static_url }}"></div>
                    {% if settings.welcome_text %}
                        <p class="welcome-text">{{ settings.welcome_text }}</p>
                        {% if settings.welcome_button %}
                        <a href="{{ store.url }}/produtos/"><button>{{ settings.welcome_button }}</button></a>
                        {% endif %}
                    {% endif %}
                </div>
                <div class="col stickers-do-welcome">
                    <img class="img-sticker-1 lazyload" src="{{ "images/sticker-1.png" | static_url }}">
                    <img class="img-sticker-2 lazyload" src="{{ "images/sticker-2.png" | static_url }}">
                    <img class="img-sticker-3 lazyload" src="{{ "images/sticker-3.png" | static_url }}">
                    <img class="img-sticker-4 lazyload" src="{{ "images/sticker-4.png" | static_url }}">
                    <img class="img-sticker-5 lazyload" src="{{ "images/sticker-5.png" | static_url }}">
                    <img class="img-sticker-6 lazyload" src="{{ "images/sticker-6.png" | static_url }}">
                    <div class="boxframe-1">
                        <div class="frame">
                            <img class="img-photo lazyloaded" src="{{ "home_03.png" | static_url }}">                             
                        </div>
                    </div>
                    <div class="boxframe-2">
                        <div class="frame">
                            <img class="img-photo lazyloaded" src="{{ "home_02.png" | static_url }}">                             
                        </div>
                    </div>
                    <div class="boxframe-3">
                        <div class="frame">
                            <img class="img-photo lazyloaded" src="{{ "home_01.png" | static_url }}">                             
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
{% endif %}