    // fix scroll navigation
$(function(){
    var offset = $('nav').offset().top;
    $(window).scroll(function() {
      if($(this).scrollTop() >= offset) {
       $('nav').addClass('isFixed');
      } else {
        $('nav').removeClass('isFixed');
      }
    });


    // Opacity for item in slide

    $(document).on('click', '.ca-wrapper .ca-item', function(e){
      $(".ca-item").addClass("slideOpacity");
      e.preventDefault();
      $(".noOpacity").removeClass("noOpacity");
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
      $(".tab_content").hide();
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
    $(function(){
      $(document).on('click', '.seeMore', function(e){
        var d_seemore = $(this).attr("rel");
        $("#"+d_seemore).show();
        $(".lean_overlay").show();
        $('html,body').animate({
            scrollTop: $("body").offset().top},
            'slow');
      });
      $("#signIn").click(function(){
        $("#login-form").show();
        $(".lean_overlay").show();
      });
      $("#signUp").click(function(){
        $("#signUp-form").show();
        $(".lean_overlay").show();
      });
      $(".rulerBar").click(function(){
        $("#box-rule").show();
        $(".lean_overlay").show();
      });
      $(".login-help").click(function(){
        $("#login-form").hide();
        $("#forgot-pass").show();
      });

      $(".close-form").click(function(){
        $(".lean_overlay").hide();
        $(this).parent().hide();
      });
      $(".lean_overlay").click(function(){
        $(".popup-form").hide();
        $(this).hide();
      });
    })

    // Scroll to content of menu
    $(".main-reward").click(function() {
        $('html,body').animate({
            scrollTop: $("#main-reward").offset().top - 60},
            'slow');
    });
    $(".extra-reward").click(function() {
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
