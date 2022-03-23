import 'dart:io';

import 'package:clean_arq/teste/extends/animal_extends.dart';

class PassaroExtends extends AnimalExtends {
  @override
  String name = 'Passaro';

  String teste() {
    return super.teste() + '456';
  }
}

main() {
  PassaroExtends passaro = PassaroExtends();
  print(passaro.name);

  var passaro2 = passaro.name = 'Tucano';

  print(passaro2);

  print(passaro.teste());
}
