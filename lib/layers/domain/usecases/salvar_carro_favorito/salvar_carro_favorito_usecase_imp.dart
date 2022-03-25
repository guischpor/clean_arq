import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:dartz/dartz.dart';

import 'salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    carroEntity.setValor();
    return await _salvarCarroFavoritoRepository.call(carroEntity);
  }
}
