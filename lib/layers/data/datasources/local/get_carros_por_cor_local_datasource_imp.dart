import 'package:clean_arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arq/layers/data/dtos/carro_dto.dart';

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
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromJson(jsonVermelho);
    }
    return CarroDto.fromJson(jsonAny);
  }
}
