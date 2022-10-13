import 'package:get/state_manager.dart';

import 'package:get/get.dart';

class ControllerHomePage extends GetxController{

  String saldo = 'R\$ 83.244,00';
  bool eyesValue = true;
  String creditCardValue = 'R\$ 4604,00';

  void showValue(){

    eyesValue = !eyesValue;

    update();
  }

}

