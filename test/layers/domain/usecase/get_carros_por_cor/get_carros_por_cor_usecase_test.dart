import 'package:clean_arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_arq/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecases_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar qualquer instancia de carro quando passar qualquer cor',
      () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp(
      GetCarrosPorCorLocalDatasourceImp(),
    ));

    var result = useCase('azul');
    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDatasourceImp(),
      ),
    );

    var result = useCase('vermelho');
    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.quantidadeDePortas, 4);
  });

  test(
      'Deve retornar um carro de 2 portas quando qualquer cor, exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDatasourceImp(),
      ),
    );

    var result = useCase('preto');

    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.quantidadeDePortas, 2);
  });
}
