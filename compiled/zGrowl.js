(function() {
  var root;

  root = typeof exports !== "undefined" && exports !== null ? exports : this;

  $(document).ready(function() {});

  root.zGrowl = function(args) {
    var growlArray, lastGrowl, newGrowl;
    if (args.size === 'small') {
      newGrowl = $('#zGrowl_Small_Prototype').clone();
      newGrowl.removeAttr('id').removeClass('zGrowlPrototype').addClass('zGrowl');
      newGrowl.appendTo('body');
      if (args.color === 'green') {
        newGrowl.find('.border').attr('stroke', '#C0FF9F');
      }
    }
    if (args.size === 'big') {
      newGrowl = $('#zGrowl_Big_Prototype').clone();
      newGrowl.removeAttr('id').removeClass('zGrowlPrototype').addClass('zGrowlBig');
      newGrowl.appendTo('body');
    }
    growlArray = $('.zGrowl, .zGrowlBig');
    if (growlArray.length > 1) {
      lastGrowl = growlArray.eq(growlArray.length - 2);
      newGrowl.css('top', lastGrowl.offset().top + lastGrowl.height() + 10);
    }
    newGrowl.find('.message').html(args.message);
    $('#logo').removeClass('animated firefoxTestAnimation');
    newGrowl.css('opacity', 0);
    newGrowl.css({
      transformOrigin: 'right center'
    });
    setTimeout(function() {
      newGrowl.animate({
        opacity: 1
      }, {
        duration: 300,
        queue: false
      }, function() {});
    }, 200);
    newGrowl.transition({
      perspective: '400px',
      rotateY: '90deg',
      duration: '0ms'
    }).transition({
      perspective: '400px',
      rotateY: '0deg',
      duration: '500ms'
    });
    setTimeout(function() {
      newGrowl.animate({
        opacity: 0
      }, function() {
        newGrowl.remove();
      });
    }, 4000);
  };

}).call(this);
