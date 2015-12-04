    // fix scroll navigation
$(function(){
    $(document).on('click', '.vote', function(){
      $(this).children().click();
    })

    if ($('nav').offset() != undefined) {
      var offset = $('nav').offset().top;
      $(window).scroll(function() {
        if($(this).scrollTop() >= offset) {
         $('nav').addClass('isFixed');
        } else {
          $('nav').removeClass('isFixed');
        }
      });
    }


    // Opacity for item in slide

    $(document).on('click', '.ca-wrapper .ca-item', function(e){
      e.preventDefault();
      hide_slide = $(this).attr("hide_class");
      $("." + hide_slide).addClass("slideOpacity");
      $("." + hide_slide).removeClass("noOpacity");
      $(this).addClass("noOpacity");
      $(".textSelected").removeClass("textSelected");
      $(this).find(".name-adward").addClass("textSelected");
    });

 // tabbed content
    // http://www.entheosweb.com/tutorials/css/tabs.asp
    $(".tab_content").hide();
  /* if in tab mode */
    $(document).on('click', 'div.tabs .ca-item', function(){
      // scroll for slide
      var a = $(this);
      $('html,body').animate({
        scrollTop: a.offset().top - 80},
        'slow');
      hide_content = a.attr("hide_content");
      $("." + hide_content).hide();
      var activeTab = $(this).attr("rel");
      $("#"+activeTab).fadeIn();

      $("div.tabs .ca-item").removeClass("active");
      $(this).addClass("active");

      $(".tab_drawer_heading").removeClass("d_active");
      $(".tab_drawer_heading[rel^='"+activeTab+"']").addClass("d_active");
    });
  /* if in drawer mode */
  $(document).on('click', '.tab_drawer_heading', function() {

      $(".tab_content").hide();
      var d_activeTab = $(this).attr("rel");
      $("#"+d_activeTab).fadeIn();

      $(this).removeClass("d_active");
        $(this).addClass("d_active");

      $("div.tabs .ca-item").removeClass("active");
      $("div.tabs .div[rel^='"+d_activeTab+"']").addClass("active");
  });


  /* Extra class "tab_last"
     to add border to right side
     of last tab */
  $('div.tabs div').last().addClass("tab_last");

    // Close tab
    $(document).on('click', '.tab_content .icon-close', function(){
      $(".tab_content").fadeOut();
      $(".textSelected").removeClass("textSelected");
      $(".ca-item").removeClass("slideOpacity");
    });

  // popup
    // form login


    // Scroll to content of menu
    $(".main-reward").click(function(e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: $("#main-reward").offset().top - 60},
            'slow');
    });
    $(".extra-reward").click(function(e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: $("#extra-reward").offset().top},
            'slow');
    });

    // Display reset password
    $(function(){
      $(".w-reset span").click(function(){
        $("#reset-pass").show();
        $(this).hide();
      });
    })

    // icon back to top
    $("#back-top").click(function() {
        $('html,body').animate({
            scrollTop: $("body").offset().top},
            'slow');
    });
});
