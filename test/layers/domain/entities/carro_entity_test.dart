import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      quantidadeDePortas: 2,
      valor: 10000.00,
    );

    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas sejam 2', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      quantidadeDePortas: 2,
      valor: 10000.00,
    );


    expect(carroEntity.quantidadeDePortas, 2);
  });

  test('Espero que o valorReal seja 2000.00', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      quantidadeDePortas: 0,
      valor: 10000.00,
    );

    var resultadoEsperado = 0.00;

    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valor seja 30000.00', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      quantidadeDePortas: 2,
      valor: 15000.00,
    );

    var resultadoEsperado = 30000.00;

    carroEntity.setValor();

    expect(carroEntity.valor, resultadoEsperado);
  });
}
