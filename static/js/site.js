$(document).ready(function(){
    // Variables
    var $popoverLink = $('[data-popover]')

    function init(){
        $popoverLink.on('click',openpopover)
    }

    function openPopover(e){
        e.preventDefault()
        closePopover()
        var popover = $(this).data('popover');
        popover.toggleClass('open')
        e.stopImmediatePropagation()
    }

    function closePopover(e){
        if($('.popover.open').length > 0) {
          $('.popover').removeClass('open')
        }
    }

    //sidebar dropdown menu
    $('#sidebar .sub-menu > a').click(function () {
        console.log('click submenu a')
        // Close previous open submenu
        var last = jQuery('.sub.open', jQuery('#sidebar'));
        jQuery(last).slideUp(200);
        jQuery(last).removeClass("open");
        jQuery('.menu-arrow', jQuery(last).parent()).addClass('fa-angle-right');
        jQuery('.menu-arrow', jQuery(last).parent()).removeClass('fa-angle-down');

        // Toggle current submenu
        var sub = jQuery(this).next();
        if (sub.is(":visible")) {
            jQuery('.menu-arrow', this).addClass('fa-angle-right');
            jQuery('.menu-arrow', this).removeClass('fa-angle-down');
            sub.slideUp(200);
            jQuery(sub).removeClass("open")
        } else {
            jQuery('.menu-arrow', this).addClass('fa-angle-down');
            jQuery('.menu-arrow', this).removeClass('fa-angle-right');
            sub.slideDown(200);
            jQuery(sub).addClass("open")
        }

    });
});