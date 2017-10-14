

	$(document).ready(function() {
		
	  	$("#form_datos").validate({
            rules:{
                 nombre:"required",
                apellido:"required",
                f_nacimiento:{
                date:true,
                 required:true
                             },
                edad:{
               number:true,
                 range:[1,105]
                             },
                mail:"email",
                p_web:"url"
            },
            
            messages:{
                nombre:"Obligatorio",
                apellido:"Obligatorio",
                f_nacimiento:{
                required:"Obligatorio",
                    date:"Formato no valido"
                             },
                edad:{
                number:"Debe ser numerico",
                range:"Entre 1 y 150"
                             },
                mail:"E-mail incorrecto",
                p_web:"Debe comenzar con HTTP://www"
            }
             
        });
     		
	});
 