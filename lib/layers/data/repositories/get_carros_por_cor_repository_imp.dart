import 'package:clean_arq/layers/data/dtos/carro_dto.dart';
import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    //chamamos uma api e ela respondeu um map-json
    var json = {
      'placa': 'ABC123',
      'quantidadeDePortas': 2,
      'valorFinal': 1000.00,
    };
    return CarroDto.fromJson(json);
  }
}
