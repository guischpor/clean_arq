class CarroEntity {
  final String placa;
  final int quantidadeDePortas;
  final double valor;

  CarroEntity({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valor,
  });

  double get valorReal {
    return valor * quantidadeDePortas;
  }

  setValor() {
    if (valorReal > 10000.00) {
      valor * 2;
    }
  }
}
