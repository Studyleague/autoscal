@include('partial.link')

<style>
    .owl-item{
        width: auto !important;
    }
</style>

@livewireStyles()

<body>

@include('partial.header')

@include('partial.sub-header')

<!-- Navigation breadcrumb -->
<section class="my-3 ">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 navigation-breadcrumb">
                <strong><a href="{{ route('home') }}">Home</a></strong> <span class="color-main pt-1"> &gt; </span>
                <strong><a href="sub_category.html">Information Technology</a></strong>
                <strong> / <a href="service.html">Web Development</a></strong>
                <strong> / <a href="service_provider.html">Service Providers</a></strong>
            </div>
        </div>
    </div>
</section>
<!--  -->

<section class="mt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12" id="service-provider-carousel">
                <!-- Service provider carousel starts here -->
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        @foreach ($service_provider_info->images as $images)
                            <li data-target="#carouselExampleIndicators" data-slide-to="{{ $loop->index }}" class=" {{ $loop->first ? 'active' : '' }}"></li>
                        @endforeach
                    </ol>
                    <div class="carousel-inner">
                        @foreach ($service_provider_info->images as $images)
                            <div class="carousel-item {{ $loop->first ? 'active' : '' }} h-100">
                                <img class="d-block w-100 h-100" src="{{ asset($images->image) }}" alt="slide {{ $loop->iteration }}">
                            </div>
                        @endforeach
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <!--  -->
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="row service-provider-heading">
                    <div class="col-lg-2">
                        <img src="{{ asset($service_provider_info->vendorDetail->logo) }}" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-10 align-self-center">
                        <h3>{{ $service_provider_info->vendorDetail->name }}</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 my-3">
                        <strong>Main Category : </strong> <span>{{ $service_provider_info->category->service_name }}</span>
                    </div>
                    <div class="col-lg-12 my-3">
                        <strong>Sub category : </strong> <span>{{ $service_provider_info->subcategory->sub_service_name }}</span>
                    </div>
                    <div class="col-lg-12 my-3">
                        <i class="color-main fas fa-map-marker-alt"></i> <span>{{ $service_provider_info->vendorDetail->location }}</span>
                    </div>
                    <div class="col-lg-12 align-self-center">
                        @guest
                            <button class="btn btn-custom w-100" data-toggle="modal" data-target="#loginModal" style="height: 35px;">Contact Service Provider</button>
                        @else
                            <button class="btn btn-custom w-100" style="height: 35px;">Contact Service Provider</button>
                        @endguest
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- About section -->
<section class="mt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h4>About The Service Provider</h4>
            </div>
            <div class="col-lg-12 my-2">
                <strong>General Description</strong>
                <p class="ml-2">{{ $service_provider_info->general_desc }}</p>
            </div>
            <div class="col-lg-12 my-2">
                <strong>Technical Description</strong>
                <p class="ml-2">{{ $service_provider_info->tech_desc }}</p>
            </div>
        </div>
    </div>
</section>
<!--  -->

@livewire('review', ['vendor_service_id' => $vendor_service_id])
{{-- @livewire('review', ['vendor_service_id' => $vendor_service_id, key( Crypt::encrypt($vendor_service_id) ) ]) --}}

@include('partial.footer')


</body>

@livewireScripts()
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="{{ asset('js/otp2.js') }}"></script>

<!-- Our Srevices owl carousel -->
<script>
    $('#services-header').owlCarousel({
        autoplay: false,
        center: true,
        autoplayTimeout: 4000,
        lazyLoad: true,
        autoplayHoverPause:true,
        loop: true,
        margin: 25,
        dots:false,
        nav: true,
        smartSpeed: 800,
        navText: ["<div class='nav-button owl-prev navigation-arrow'> <img src='{{ asset('img/arrow-left.png') }}'> </div>", "<div class='nav-button owl-next navigation-arrow'><img src='{{ asset('img/arrow-right.png') }}'></div>"],
        responsive: {
            0: {
                items: 3
            },
            600: {
                items: 6
            },
            1000: {
                items: 7
            }
        }
    });
</script>
<!-- Script for Scroll header -->

</html>
