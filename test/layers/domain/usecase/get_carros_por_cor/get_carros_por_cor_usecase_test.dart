import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecases_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(
        placa: 'ABC123',
        quantidadeDePortas: 4,
        valor: 5000.00,
      );
    }
    return CarroEntity(
      placa: 'BFG456',
      quantidadeDePortas: 2,
      valor: 2000.00,
    );
  }
}

main() {
  test('Deve retornar qualquer instancia de carro quando passar qualquer cor',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(),
    );

    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(),
    );

    var result = useCase('vermelho');

    expect(result.quantidadeDePortas, 4);
  });

  test(
      'Deve retornar um carro de 2 portas quando qualquer cor, exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(),
    );

    var result = useCase('preto');

    expect(result.quantidadeDePortas, 2);
  });
}
