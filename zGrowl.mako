<%def name="zGrowl_big()">
<div id="zGrowl_Big_Prototype" class="zGrowlPrototype">
  <?xml version="1.0" encoding="utf-8"?>
<!-- Generator: Adobe Illustrator 16.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
   width="200px" height="200px" viewBox="0 0 200 200" enable-background="new 0 0 200 200" xml:space="preserve">

   <defs>
  <filter id='inner-shadow'>
    
    <!-- Shadow Offset -->
    <feOffset
      dx='0'
      dy='0'
    />
    
    <!-- Shadow Blur -->
    <feGaussianBlur
      stdDeviation='1'
      result='offset-blur'
    />
    
    <!-- Invert the drop shadow
         to create an inner shadow -->
    <feComposite
      operator='out'
      in='SourceGraphic'
      in2='offset-blur'
      result='inverse'
    />
    
    <!-- Color & Opacity -->
    <feFlood
      flood-color='#666'
      flood-opacity='0.75'
      result='color'
    />
    
    <!-- Clip color inside shadow -->
    <feComposite
      operator='in'
      in='color'
      in2='inverse'
      result='shadow'
    />
    
    <!-- Put shadow over original object -->
    <feComposite
      operator='over'
      in='shadow'
      in2='SourceGraphic'
    />
  </filter>
</defs>

<filter id="dropshadow" height="130%">
  <feGaussianBlur in="SourceAlpha" stdDeviation="3"/> <!-- stdDeviation is how much to blur -->
    <feOffset dx="2" dy="2" result="offsetblur"/> <!-- how much to offset -->
    <feMerge> 
      <feMergeNode/> <!-- this contains the offset blurred image -->
      <feMergeNode in="SourceGraphic"/> <!-- this contains the element that the filter is applied to -->
   </feMerge>
</filter>

<g style="filter:url(#dropshadow)">
  <path opacity="0.8" fill="#010101" d="M23,11H9c-1.65,0-3,1.35-3,3v100c0,1.65,1.35,3,3,3h134c1.65,0,3.992-0.916,5.204-2.035
    l8.592-7.93C158.008,105.916,159,103.65,159,102V14c0-1.65-1.35-3-3-3H23"/>
</g>
<g display="none">
  <path display="inline" opacity="0.4" fill="none" stroke="#6ABD45" stroke-width="2" stroke-miterlimit="10" d="M21,9L5.943,26.714
    C4.874,27.972,4,30.35,4,32v85c0,1.65,1.35,3,3,3h134c1.65,0,3.992-0.916,5.204-2.035l8.592-7.93
    C156.008,108.916,157,106.65,157,105V12c0-1.65-1.35-3-3-3H21"/>
</g>
<g>
  <g opacity="0.8">
    <path fill="#68CCE6" d="M146,17c0,1.104-0.896,2-2,2h-41c-1.104,0-2-0.896-2-2V7c0-1.104,0.896-2,2-2h41c1.104,0,2,0.896,2,2V17z"
      />
  </g>
  <g>
    <path fill="#010101" d="M144,14c0,1.104-0.896,2-2,2h-41c-1.104,0-2-0.896-2-2V4c0-1.104,0.896-2,2-2h41c1.104,0,2,0.896,2,2V14z"
      />
  </g>
</g>
</svg>


<div class="message">
  message goes here
</div>
</div>

</%def>