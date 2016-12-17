$(function() {
    $(document).ready(function() {
        $(document).tooltip({
            tooltipClass: "summary"
        });
    });
    
    $(document).on('click', 'a[href^="#"]', function(e) {
        // target element id
        var id = $(this).attr('href') + "-wrapper";
    
        // target element
        var $id = $(id);
        if ($id.length === 0) {
            return;
        }
    
        // prevent standard hash navigation (avoid blinking in IE)
        e.preventDefault();
    
        // top position relative to the document
        var pos = $(id).offset().top;
    
        // animated top scrolling
        $('body, html').animate({scrollTop: pos});
    });
    
    $(document).on('click', 'a[href="#primary"]', function(e) {
        $('body, html').animate({scrollTop: 0});
    });
});