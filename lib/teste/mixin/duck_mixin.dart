import 'package:clean_arq/teste/mixin/bird.dart';
import 'package:clean_arq/teste/mixin/mixin_flyer.dart';
import 'package:clean_arq/teste/mixin/mixin_swimmer.dart';

class Duck extends Bird with Swimmer, Flyer {
  
  @override
  late String name;
}


