import 'package:clean_arq/teste/implements/animal_implements.dart';

class PassaroImplements implements AnimalImplements {
  @override
  late String name = 'teste';

  @override
  late String name2;

  @override
  late String name3;
}

main() {
  PassaroImplements passaroImplements = PassaroImplements();

  var name = passaroImplements.name;

  print(name);
}
