import 'package:clean_arq/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatefulWidget {
  CarroPage({Key? key}) : super(key: key);

  @override
  State<CarroPage> createState() => _CarroPageState();
}

class _CarroPageState extends State<CarroPage> {
  final controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
