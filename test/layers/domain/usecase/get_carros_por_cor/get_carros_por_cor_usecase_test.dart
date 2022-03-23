import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecases_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar qualquer instancia de carro quando passar qualquer cor', () {

    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase('vermelho');

    expect(result.quantidadeDePortas, 4);
  });

  test('Deve retornar um carro de 2 portas quando qualquer cor, exceto vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase('preto');

    expect(result.quantidadeDePortas, 2);
  });

  test(
      'Deve retornar um carro que tenha mais de 2 portas e que a cor seja azul',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase('azul');

    expect(result.quantidadeDePortas, 6);
  });
}
