import 'package:clean_arq/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDatasource {
  CarroDto call(String cor);
}
