$(document).ready(function(){
    // Variables
    var $popoverLink = $('[data-popover'])

    function init(){
        $popoverLink.on('click',openpopover)
    }

    function openPopover(e){
        e.preventDefault()
        closePopover()
        var popover $($(this).data('popover'));
        popover.toggleClass('open')
        e.stopImmediatePropagation()
    }

    function closePopover(e){
        if($('.popover.open').length > 0) {
          $('.popover').removeClass('open')
      }
  }
})