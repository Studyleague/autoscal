@include('partial.link')

<style>
    .owl-item{
        width: auto !important;
    }
</style>

<body>

@include('partial.header')

@include('partial.sub-header')

<!-- Navigation breadcrumb -->
<section class="my-3 ">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 navigation-breadcrumb">
                <strong><a href="index.html">Home</a></strong> <span class="color-main pt-1"> &gt; </span>
                <strong><a href="sub_category.html">Information Technology</a></strong>
                <strong> / <a href="service.html">Web Development</a></strong>
            </div>
        </div>
    </div>
</section>
<!--  -->

<!-- Service Providers -->
<section>
    <div class="container mt-5">
        <div class="row">
            <h2>Web Development</h2>
        </div>

        <div class="row mt-3">
            <div class="col-12">
                <p>{{ $service_providers->total() }} results found</p>
            </div>
        </div>

        <div class="row mt-4 justify-content-center">

            @forelse ($service_providers as $sp)

                <!-- Card start -->
                <div class="col-lg-3 col-md-6 col-sm-12 w-50">
                    <div class="card service-provider">
                        <a href="{{ route('service_details', Crypt::encrypt($sp->id)) }}"> <img src="{{ asset($sp->images[0]->image) }}" class="img-fluid sp-img" alt="allynce-tech-card-img-1"> </a>
                        <div class="card-body pb-0">
                            <div class="row service-card-brand">
                                <div class="col-lg-2 px-0">
                                    <a href="{{ route('service_details', Crypt::encrypt($sp->id)) }}">
                                        <img src="{{ asset($sp->vendorDetail->logo) }}" class="img-fluid" alt="">
                                    </a>
                                </div>
                                <div class="col-lg-10 px-0">
                                    <a href="{{ route('service_details', Crypt::encrypt($sp->id)) }}">
                                        <strong>{{ $sp->vendorDetail->name }}</strong>
                                        <p>{{ $sp->category->service_name }}</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body px-2 py-0">
                            <p class="card-bottom-text"> <a href="{{ route('service_details', Crypt::encrypt($sp->id)) }}"> {{ Str::limit( $sp->general_desc, 65 ) }} </a></p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <p class="text-left">
                                        <img src="img/star.svg" class="img-fluid d-inline" alt="">
                                        <span style="color: #FFB84F;">5.0</span>
                                        <span style="color: #B1B1B1;">(19)</span>
                                    </p>
                                </div>
                                <div class="col-lg-6">
                                    <p class="text-right">
                                        <!-- <label for="test_checkbox" class="heart-img-blank"><img src="img/heart-empty.svg" style="cursor: pointer;" class="img-fluid" alt=""></label>
                                        <input type="checkbox" class="d-none heart-img" id="test_checkbox">
                                        <img src="img/heart-filled.svg" class="d-none img-fluid" alt=""> -->
                                        <img src="{{ asset('img/heart-empty.svg') }}" style="cursor: pointer;" class="img-fluid d-inline" alt="">
                                        <!-- <img src="img/heart-filled.svg" class="img-fluid d-inline" alt=""> -->
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  -->

            @empty

                <div class="col-lg-8 col-md-12 align-self-center">
                    <p class="text-center">
                        <img src="{{ asset('img/no-service.svg') }}" class="img-fluid" alt="">
                    </p>
                </div>
                <div class="col-lg-8 col-md-12 align-self-center">
                    <h3 class="text-center">No Services Found For Your Search</h3>
                </div>

            @endforelse

        </div>

        <div class="row">
            <div class="offset-md-6 col-6">
                {{ $service_providers->links('vendor.pagination.bootstrap-4') }}
            </div>
        </div>
    </div>
</section>
<!--  -->

@include('partial.footer')


</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
