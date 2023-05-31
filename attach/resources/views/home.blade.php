@include('partial.link')
@livewireStyles
<body>
@include('partial.header')

{{-- Owl Carousel --}}
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="img/banner-bg.png" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="img/banner-bg.png" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="img/banner-bg.png" alt="Third slide">
        </div>
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


<!-- Trending services -->
<section class="mt-5 pt-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <h2>Trending Services</h2>
            </div>
        </div>
        <div class="row justify-content-center mt-4">

            <div class="col-lg-12">
                <div class="owl-carousel owl-theme" id="owl-carousel-services">
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="rounded-services m-auto">
                                <img src="img/services-1.png" alt="allyance-tech-srevice1">
                                <strong class="services-strong">Information <br> Technology</strong> <br>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="rounded-services m-auto">
                                <img src="img/services-2.png" alt="allyance-tech-srevice1">
                                <strong class="services-strong">Chartered <br> Accountancy</strong>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="rounded-services m-auto">
                                <img src="img/services-3.png" alt="allyance-tech-srevice1">
                                <strong class="services-strong">Legal <br> Support</strong>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-3">
                            <div class="rounded-services m-auto">
                                <img src="img/services-4.png" alt="allyance-tech-srevice1">
                                <strong class="services-strong">Multimedia</strong>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="rounded-services m-auto">
                                <img src="img/services-1.png" alt="allyance-tech-srevice1">
                                <strong class="services-strong">Information <br> Technology </strong>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- Our Services -->


<!-- Explore services -->
<section class="mt-5 pt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Explore Our Services</h2>
            </div>
        </div>
        <div class="row">
            @foreach ($explore_services as $service)

                <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                    <a href="{{ route('sub_category', Crypt::encrypt($service->id)) }}">
                        <div class="explore-services text-center mx-2">
                            <img src="{{ asset($service->logo) }}" alt="" class="img-fluid">
                            <p>{{ $service->service_name }}</p>
                        </div>
                    </a>
                </div>

            @endforeach
            {{-- <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-2.svg" alt="" class="img-fluid">
                    <p>Chartered Accountancy</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-3.svg" alt="" class="img-fluid">
                    <p>Legal Support</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-4.svg" alt="" class="img-fluid">
                    <p>Multimedia</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-5.svg" alt="" class="img-fluid">
                    <p>Branding</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-6.svg" alt="" class="img-fluid">
                    <p>Import Export</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-7.svg" alt="" class="img-fluid">
                    <p>Registration</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-8.svg" alt="" class="img-fluid">
                    <p>Logistic</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-9.svg" alt="" class="img-fluid">
                    <p>Insurance</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-10.svg" alt="" class="img-fluid">
                    <p>Digital Marketing</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-11.svg" alt="" class="img-fluid">
                    <p>Tours/Travels</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-12.svg" alt="" class="img-fluid">
                    <p>Catering</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-13.svg" alt="" class="img-fluid">
                    <p>Society/Office Management</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-14.svg" alt="" class="img-fluid">
                    <p>Education/Training</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-15.svg" alt="" class="img-fluid">
                    <p>Human Resources</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-16.svg" alt="" class="img-fluid">
                    <p>Architecture Design</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-17.svg" alt="" class="img-fluid">
                    <p>Real Estate</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-18.svg" alt="" class="img-fluid">
                    <p>Rentals</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-19.svg" alt="" class="img-fluid">
                    <p>Event Management</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-20.svg" alt="" class="img-fluid">
                    <p>Financial Services</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-21.svg" alt="" class="img-fluid">
                    <p>Consulting</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 w-50">
                <div class="explore-services text-center mx-2">
                    <img src="img/services/service-22.svg" alt="" class="img-fluid">
                    <p>Mass Media</p>
                </div>
            </div> --}}

        </div>
    </div>
</section>
<!-- Explore services -->


<!-- Whole world -->
<section class="mt-5 pt-5 background-color pb-5">
    <div class="container">
        <div class="row video-section">
            <div class="col-lg-6 order-md-1">
                <h2 class="color-main">A whole world of freelance talent at your fingertips</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elit sapien consectetur aliquam sit egestas nullam. Dolor mauris gravida sed sem malesuada ac
                    augue urna, parturient. Id at proin nam velit libero sodales auctor. Amet orci bibendum eu lectus egestas sit senectus.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elit sapien consectetur aliquam sit egestas nullam. Dolor mauris gravida sed sem malesuada ac
                    augue urna, parturient. Id at proin nam velit libero sodales auctor. Amet orci bibendum eu lectus egestas sit senectus.</p>
            </div>
            <div class="col-lg-6 order-md-2">
                <div class="video-container h-100">
                    <img src="img/video_image.png" alt="" class="img-fluid video-image">
                    <span class="play-button">
                        <img src="img/play-button.png" class="img-fluid" alt="">
                    </span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Whole world -->

@include('partial.footer')

</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- Our Srevices owl carousel -->
<script>
    $('#owl-carousel-services').owlCarousel({
        autoplay: true,
        // center: true,
        autoplayTimeout: 4000,
        lazyLoad: true,
        autoplayHoverPause:true,
        loop: true,
        margin: 10,
        dots:false,
        nav: true,
        smartSpeed: 800,
        navText: ["<div class='nav-button owl-prev navigation-arrow'> <img src='img/arrow-left.png'> </div>", "<div class='nav-button owl-next navigation-arrow'><img src='img/arrow-right.png'></div>"],
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 2
            },
            1000: {
                items: 4
            }
        }
    });

</script>
<!-- Script for Scroll header -->
<script>
    $(function ()
    {
        $(document).scroll(function ()
        {
            var $nav = $("#top-nav");
            $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
        });
    });
</script>
@livewireScripts
</html>
