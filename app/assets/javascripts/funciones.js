var re = /^([a-zA-Z\s\S])*$/
function valconvenio() {                                                                                                                  
  if ($('.name').val().length < 5 )
  {
     $(".error").delay(200).fadeOut(300);
    $(".name").focus().after("<span class='error'>El mínimo de caractéres es de 5</span>");
    return false; 
  }  
  if (!($('.name').val().match(re))){
    $(".error").delay(200).fadeOut(300);
    $(".name").focus().after("<span class='error'>Formato Incorrecto</span>");
    return false; 
  }       
  if  ($('.resp').val().length < 10 ) 
  {
  $(".error").delay(200).fadeOut(300);
  $(".resp").focus().after("<span class='error'>El mínimo de caractéres es de 10</span>");
      return false;
  }
  if (!($('.resp').val().match(re))) {
    $(".error").delay(200).fadeOut(300);
    $(".resp").focus().after("<span class='error'>Formato Incorrecto</span>");
     return false;
  }                  
  if ($('.obj').val().length < 30) 
  {
    $(".error").delay(200).fadeOut(300);
    $(".obj").focus().after("<span class='error'>El mínimo de caractéres es de 30</span>");
     return false;
  }
  if (!($('.obj').val().match(re))) {
    $(".error").delay(200).fadeOut(300);
    $(".obj").focus().after("<span class='error'>Formato Incorrecto</span>");
     return false;
  }
  
  if  ($('.pdf').val().length < 10 ) 
  {
  $(".error").delay(200).fadeOut(300);
  $(".pdf").focus().after("<span class='error'>No puede estar vacío</span>");
      return false;
  }
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}


function validacionc() 
{                                                                                                                  
  if ($('.nomc').val().length < 3 )
  {
     $(".error").delay(200).fadeOut(300);
    $(".nomc").focus().after("<span class='error'>Debe ingresar un nombre de Servicio</span>");
    return false; 
  }
  if ($('.merca').val().length < 10 )
  {
     $(".error").delay(200).fadeOut(300);
    $(".merca").focus().after("<span class='error'>Ingrese un formato correcto</span>");
    return false; 
  }
  if($('.sele').val() == null ||  $('.sele').val() == 0) 
  {

     $(".error").delay(200).fadeOut(300);
    $(".sele").focus().after("<span class='error'>Por favor llene este campo</span>");
    return false; 
  }
  if ($('.infra').val().length < 5 )
  {
     $(".error").delay(200).fadeOut(300);
    $(".infra").focus().after("<span class='error'>Ingrese un formato correcto</span>");
    return false; 
  }
  if ($('.descrip').val().length < 5 )
  {
     $(".error").delay(200).fadeOut(300);
    $(".descrip").focus().after("<span class='error'>Ingrese un formato correcto</span>");
    return false; 
  }
  if ($('.info').val().length < 5 )
  {
     $(".error").delay(200).fadeOut(300);
    $(".info").focus().after("<span class='error'>Ingrese un formato correcto</span>");
    return false; 
  }
  if ($('.resul').val().length < 5 )
  {
     $(".error").delay(200).fadeOut(300);
    $(".resul").focus().after("<span class='error'>Ingrese un formato correcto</span>");
    return false; 
  }
    // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}

//function campo() 
//{  

//indice = document.getElementById(".sele").selectedIndex;

//if( indice == null|| indice == 2 )
  //{  
     
    //return false; 
  //}
  //$('.tipoc').focus(true) 
 //return true;

//}

function loginvali()
{

  if ($('.siglas').val()  )
  {
     $(".error").delay(200).fadeOut(300);
    $(".siglas").focus().after("<span class='error'>Debe ingresar un nombre de Servicio</span>");
    return false;
  }
 
    return true;
  
}





  



