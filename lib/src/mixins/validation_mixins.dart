class ValidatorMixins{
  String validatorEmail(String value){
     if(!value.contains('@'))
        return 'Correo invalido';

    return null;
  
  }

  String validatorPassword(String value){
    if(value.length <6){
        return 'contraseña invalida';
      }
    return null;
  }


}