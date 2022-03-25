import 'package:clean_arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arq/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorLocalDatasourceImp implements GetCarrosPorCorDatasource {
  final jsonVermelho = {
    'placa': 'ABC123',
    'quantidadeDePortas': 4,
    'valorFinal': 5000.00,
  };

  final jsonAny = {
    'placa': 'UJG458',
    'quantidadeDePortas': 2,
    'valorFinal': 2000.00,
  };

  @override
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromJson(jsonVermelho));
      }
      return Right(CarroDto.fromJson(jsonAny));
    } catch (e) {
      return Left(Exception('Error in datasource'));
    }
  }
}
