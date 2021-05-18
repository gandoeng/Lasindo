
// For responsive
var mq1024 = window.matchMedia( "(max-width: 1024px)" );
 
if (mq1024.matches){
    $('.brands').toggleClass('m-brands');
    $('#category-lg').addClass('d-none');
}
$(document).ready(function () {
    $(window).on('scroll',function () {
        
        if($(this).scrollTop() > 100) { 
            $('.navbar').addClass('navbar-scrolled');
            $('.img-brand').removeClass('img-brand');
            $('.navbar-brand img').addClass('img-shrink');
        } else {
            $('.navbar').removeClass('navbar-scrolled');
            $('.img-shrink').removeClass('img-shrink');
            $('.navbar-brand img').addClass('img-brand');
        }

        $(".navbar-brand").toggleClass("navbar-brand-shrink", $(this).scrollTop() > 100);
    });

});

//Mobile-menu
$('.mobile-menu .m-toggle').on('click', function(){
    $('.mobile-menu').toggleClass('opened');
});

// Slick
$(document).ready(function(){
    $('#partner').slick({
      slidesToShow: 4,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 3500,
      focusOnSelect: true,
      prevArrow: "<img class='slick-prev slick-arrow' src='/maintheme/assets/img/icons/arr-prev.png' style='width:30px;height:30px;'>",
      nextArrow: "<img class='slick-next slick-arrow' src='/maintheme/assets/img/icons/arr-next.png' style='width:30px;height:30px;'>",
      
      responsive: [
          {
              breakpoint: 1025,
              settings: {
                  slidesToShow: 4,
                  slidesToScroll: 1
              }
          },
          {
              breakpoint: 961,
              settings: {
                  slidesToShow: 4,
                  slidesToScroll: 1
              }
          },
          {
              breakpoint: 769,
              settings: {
                  slidesToShow: 2,
                  slidesToScroll: 1
              }
          },
          {
              breakpoint: 481,
              settings: {
                  slidesToShow: 1,
                  slidesToScroll: 1
              }
          }
      ]
    });
    $('#about-photos').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 2000,
      focusOnSelect: false,
    });

    $('.cat-sm').slick({
      vertical: true,
      verticalSwiping: true,
      centerMode: true,
      autoplay: false,
      swipeToSlide: true,
      prevArrow: "<img class='slick-prev slick-arrow' src='/maintheme/assets/img/icons/ic-left.svg' style='width:20px;height:20px;'>",
      nextArrow: "<img class='slick-next slick-arrow' src='/maintheme/assets/img/icons/ic-right.svg' style='width:20px;height:20px;'>",
      focusOnSelect: false,
    });

    $('.m-brands').slick({
        autoplay: false,
        focusOnSelect: false,
        responsive: [
            {
                breakpoint: 1025,
                settings: {
                    prevArrow: "<img class='slick-prev slick-arrow' src='/maintheme/assets/img/icons/arr-prev.png' style='width:30px;height:30px;'>",
                    nextArrow: "<img class='slick-next slick-arrow' src='/maintheme/assets/img/icons/arr-next.png' style='width:30px;height:30px;'>",
                    slidesToShow: 3,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 769,
                settings: {
                    prevArrow: "<img class='slick-prev slick-arrow' src='/maintheme/assets/img/icons/arr-prev.png' style='width:30px;height:30px;'>",
                    nextArrow: "<img class='slick-next slick-arrow' src='/maintheme/assets/img/icons/arr-next.png' style='width:30px;height:30px;'>",
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 481,
                settings: {
                    prevArrow: "<img class='slick-prev slick-arrow' src='/maintheme/assets/img/icons/arr-prev.png' style='width:30px;height:30px;'>",
                    nextArrow: "<img class='slick-next slick-arrow' src='/maintheme/assets/img/icons/arr-next.png' style='width:30px;height:30px;'>",
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });
});

// Category swap and active class
$(document).ready(function(){
    $('li.cat').on('click', function(){
        $('li.cat.active').removeClass('active');
        $(this).addClass('active');
    });
    $('.cat-sm .slick-prev,.cat-sm .slick-next').on('click', function(){
        $('.cat-sm a.active').removeClass('active');
        $('.cat-sm a.slick-current').addClass('active');
    });
});

// Brand isotope and filter
$(document).ready(function(){
    var brandIsotope = $('#brand-products').isotope({
        itemSelector: '.brand-name,.brand-desc,.to-be-filtered',
        layoutMode: 'vertical'
    });
             
    if (mq1024.matches){
        $(".brands .slick-track").addClass("d-flex");
        $(".brands .cat-brand.slick-slide").addClass("m-auto");
        
        $(document).on('click','.slick-next, .slick-prev', function() {
            $(".brands .cat-brand").removeClass('active');
            $(".brands .cat-brand.slick-current").addClass('active');

            brandIsotope.isotope({
                filter: $('.brands .cat-brand.active').data('filter')
            });
        });
    } else {
        brandIsotope.isotope({
            filter: $('.brands .cat-brand.active').data('filter')
        });
    }
    $(document).on('click','.brands .cat-brand', function() {            
        if (mq1024.matches){
            $("brands .cat-brand").removeClass('active');
            $("brands .cat-brand.slick-current").addClass('active');
        
            brandIsotope.isotope({
                filter: $(this).data('filter')
            });
        } else {
            $(".brands .cat-brand").removeClass('active');
            $(this).addClass('active');
        
            brandIsotope.isotope({
                filter: $(this).data('filter')
            });
        }
    });
    
});

$(document).ready(function(){
    var brandIsotope = $('#brand-label').isotope({
        itemSelector: '.brand-name-label,.brand-desc-label,.to-be-filtered-label',
        layoutMode: 'vertical'
    });
             
    if (mq1024.matches){
        $(".brands-label .slick-track-label").addClass("d-flex");
        $(".brands-label .cat-brand-label.slick-slide-label").addClass("m-auto");
        
        $(document).on('click','.slick-next-label, .slick-prev-label', function() {
            $(".brands-label .cat-brand-label").removeClass('active');
            $(".brands-label .cat-brand-label.slick-current-label").addClass('active');

            brandIsotope.isotope({
                filter: $('.brands-label .cat-brand-label.active').data('filter')
            });
        });
    } else {
        brandIsotope.isotope({
            filter: $('.brands-label .cat-brand-label.active').data('filter')
        });
    }
    $(document).on('click','.brands-label .cat-brand-label', function() {            
        if (mq1024.matches){
            $("brands-label .cat-brand-label").removeClass('active');
            $("brands-label .cat-brand-label.slick-current-label").addClass('active');
        
            brandIsotope.isotope({
                filter: $(this).data('filter')
            });
        } else {
            $(".brands-label-label .cat-brand-label").removeClass('active');
            $(this).addClass('active');
        
            brandIsotope.isotope({
                filter: $(this).data('filter')
            });
        }
    });
    
});


// Carousel delay
$('.carousel').carousel({
    interval: 3500
})

// Wow JS
wow = new WOW(
    {
    boxClass:     'wow',      // default
    animateClass: 'animated', // default
    offset:       0,          // default
    mobile:       true,       // default
    live:         true        // default
})
wow.init();


//Go to top
var scrolltotop={setting:{startline:100,scrollto:0,scrollduration:20,fadeduration:[500,100]},controlHTML:'<img src="/maintheme/assets/img/ic/gotop.png" />',controlattrs:{offsetx:35,offsety:20},anchorkeyword:"#top",state:{isvisible:!1,shouldvisible:!1},scrollup:function(){this.cssfixedsupport||this.$control.css({opacity:0});var t=isNaN(this.setting.scrollto)?this.setting.scrollto:parseInt(this.setting.scrollto);t="string"==typeof t&&1==jQuery("#"+t).length?jQuery("#"+t).offset().top:0,this.$body.animate({scrollTop:t},this.setting.scrollduration)},keepfixed:function(){var t=jQuery(window),o=t.scrollLeft()+t.width()-this.$control.width()-this.controlattrs.offsetx,s=t.scrollTop()+t.height()-this.$control.height()-this.controlattrs.offsety;this.$control.css({left:o+"px",top:s+"px"})},togglecontrol:function(){var t=jQuery(window).scrollTop();this.cssfixedsupport||this.keepfixed(),this.state.shouldvisible=t>=this.setting.startline?!0:!1,this.state.shouldvisible&&!this.state.isvisible?(this.$control.stop().animate({opacity:1},this.setting.fadeduration[0]),this.state.isvisible=!0):0==this.state.shouldvisible&&this.state.isvisible&&(this.$control.stop().animate({opacity:0},this.setting.fadeduration[1]),this.state.isvisible=!1)},init:function(){jQuery(document).ready(function(t){var o=scrolltotop,s=document.all;o.cssfixedsupport=!s||s&&"CSS1Compat"==document.compatMode&&window.XMLHttpRequest,o.$body=t(window.opera?"CSS1Compat"==document.compatMode?"html":"body":"html,body"),o.$control=t('<div id="topcontrol">'+o.controlHTML+"</div>").css({position:o.cssfixedsupport?"fixed":"absolute",bottom:o.controlattrs.offsety,right:o.controlattrs.offsetx,opacity:0,cursor:"pointer"}).attr({title:"Scroll to Top"}).click(function(){return o.scrollup(),!1}).appendTo("body"),document.all&&!window.XMLHttpRequest&&""!=o.$control.text()&&o.$control.css({width:o.$control.width()}),o.togglecontrol(),t('a[href="'+o.anchorkeyword+'"]').click(function(){return o.scrollup(),!1}),t(window).bind("scroll resize",function(t){o.togglecontrol()})})}};scrolltotop.init();