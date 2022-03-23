import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(
        placa: 'ABC123',
        quantidadeDePortas: 4,
        valor: 60000.00,
      );
    } else if (cor.contains('azul')) {
      return CarroEntity(
        placa: 'GFS2158',
        quantidadeDePortas: 6,
        valor: 60000.00,
      );
    } else {
      return CarroEntity(
        placa: 'DFG123',
        quantidadeDePortas: 2,
        valor: 30000.00,
      );
    }
  }
}
