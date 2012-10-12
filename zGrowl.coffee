root = exports ? this



$(document).ready ->
  return

# fadeOutGrowl = (growl) ->
#   growl.removeClass 'animated flipOutY'
#   growl.css 'opacity', 1
#   growl.animate {opacity: 0}, () ->
    
#     growl.remove()
#     return
  
#   return

# root._zGrowl = (args) ->
#   if args.size == 'small'
#       newGrowl = $('#zGrowl_Small_Prototype').clone()
#       newGrowl.removeAttr('id').removeClass('zGrowlPrototype').addClass('zGrowl')
#       newGrowl.appendTo 'body'
      
#       if args.color == 'green'
#         newGrowl.find('.border').attr 'stroke','#C0FF9F'

#   if args.size == 'big'
#       newGrowl = $('#zGrowl_Big_Prototype').clone()
#       newGrowl.removeAttr('id').removeClass('zGrowlPrototype').addClass('zGrowlBig')
#       newGrowl.appendTo 'body'

#   # zGrowlPrototype
#   growlArray = $('.zGrowl, .zGrowlBig')
  
#   if growlArray.length > 1
#     lastGrowl = growlArray.eq growlArray.length-2
#     newGrowl.css 'top', lastGrowl.offset().top + lastGrowl.height() + 10

    
  
#   setTimeout () ->
#     fadeOutGrowl(newGrowl)
#     return
#   , 4000
#   newGrowl.find('.message').html args.message
#   newGrowl.addClass 'animated flipOutY'

#   return

# wha = (newGrowl) ->
#   newGrowl.animate {opacity: 1}, {duration:300, queue: false}, () ->
#     return
#   .delay 300
#   return
root.zGrowl = (args) ->
  if args.size == 'small'
      newGrowl = $('#zGrowl_Small_Prototype').clone()
      newGrowl.removeAttr('id').removeClass('zGrowlPrototype').addClass('zGrowl')
      newGrowl.appendTo 'body'
      
      if args.color == 'green'
        newGrowl.find('.border').attr 'stroke','#C0FF9F'

  if args.size == 'big'
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