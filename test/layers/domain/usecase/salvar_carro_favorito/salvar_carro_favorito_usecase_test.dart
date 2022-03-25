import 'package:clean_arq/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );

    var carro = CarroEntity(
      placa: 'GFS2158',
      quantidadeDePortas: 6,
      valor: 1,
    );

    var result = await useCase(carro);
    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, true);
  });

  test('Espero que não salve o carro quando valor for menor ou igual que 0',
      () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );

    var carro = CarroEntity(
      placa: 'GFS2158',
      quantidadeDePortas: 6,
      valor: 0,
    );

    var result = await useCase(carro);
    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, false);
  });
}
