<!-- Hero Slider Begin -->

<section class="hero-slider">
    <div class="hero-items owl-carousel">
        @foreach($banners as $banner)
            <div class="single-slider-item set-bg" data-setbg="{{ asset($banner->image) }}">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>{{ $banner->title }}</h2>
                            <a href="{{ $banner->url }}" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach


    </div>

</section>
<!-- Hero Slider End -->

<!-- Features Section Begin -->

<!-- Features Section End -->
