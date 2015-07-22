/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Integrating technologies


# Rshiny + Jquery ( using jquery watch solution from: RickStrahl@github )

# Example 002: Showing Alert after shiny plot has finished loading


# Author: Miguel Revuelta Espinosa, revuel@github
# Date: 2015 07 22

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

$(document).ready(function() {
    
    var controlstart = 0;
    
    console.log( "ready!" );
    
    $("#myplot").watch({
        properties: "attr_class",
        watchChildren: false,
        callback: function (data, i) {
            
        if (!($( "#myplot" ).hasClass( "recalculating" ))){
          
          if (controlstart == 1) {
            alert("Content has been recalculated and its now ready!")
          } else {
            controlstart = 1;
          }
        }
        }
    });
    
})

