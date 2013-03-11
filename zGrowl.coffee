root = exports ? this



$(document).ready ->
  return

root.zGrowl = (args) ->
  if args.size == 'small'
      newGrowl = $('#zGrowl_Small_Prototype').clone()
      newGrowl.removeAttr('id').removeClass('zGrowlPrototype').addClass('zGrowl')
      newGrowl.appendTo 'body'
      
      if args.color == 'green'
        newGrowl.find('.border').attr 'stroke','#C0FF9F'

  else # if size big
      newGrowl = $('#zGrowl_Big_Prototype').clone()
      newGrowl.removeAttr('id').removeClass('zGrowlPrototype').addClass('zGrowlBig')
      newGrowl.appendTo 'body'

  growlArray = $('.zGrowl, .zGrowlBig')

  # TODO: fix bug that requires less delay after the first animation
  if growlArray.length > 1
    lastGrowl = growlArray.eq growlArray.length-2
    newGrowl.css 'top', lastGrowl.offset().top + lastGrowl.height() + 10

    # if $.browser.webkit
    #   fadeInDelay = 200
    # else
    #   fadeInDelay = 200

  newGrowl.find('.message').html args.message

  $('#logo').removeClass 'animated firefoxTestAnimation'
  # setTimeout () ->
  newGrowl.css 'opacity', 0
  newGrowl.css { transformOrigin: 'right center' }
  
  setTimeout () ->
    newGrowl.animate {opacity: 1}, {duration:300, queue: false}, () ->
      return
    return
  , 200
  
 

  newGrowl.transition
    perspective: '400px'
    rotateY: '90deg'
    duration: '0ms'
  .transition
    perspective: '400px'
    rotateY: '0deg'
    duration: '500ms'

  setTimeout () ->
    newGrowl.animate {opacity: 0}, () ->
      newGrowl.remove()
      return
    return
  , 4000
    # return
  # , 1000
  
  
  return