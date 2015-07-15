/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  # Integrating technologies
  
  
  # Rshiny + Jquery

  # Example 001: Showing Alert after withProgress has finished loading
  

  # Author: Miguel Revuelta Espinosa, revuel@github
  # Date: 2015 07 14

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

var control = 0;
  
$(document).ready(function(){    
  
  alert('Document Ready!: ' + control);
  
  $("body").bind("DOMNodeRemoved",function(){
    
    if(($(this).find('.shiny-progress-container').length == 0) && control == 0) {
      control = 1;
      alert('Load completed! ' + control);
    }
  });
  
  $("#reload").on("click", function() {
    control = 0;
  })
  
})

