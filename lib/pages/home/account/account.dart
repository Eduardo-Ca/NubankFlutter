import 'package:dubanko/controllers/controller_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountChevron(),
          SizedBox(height: 12,),
          _moneyAccount(),
        ],
      ),

    );
  }



  _accountChevron(){
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const[
      Text('Conta', style:
        TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold),),
        Icon(MdiIcons.chevronRight),
     ],
    );
  }

  _moneyAccount(){
    return GetBuilder<ControllerHomePage>(
      init: ControllerHomePage(),
      builder: (controller) {
        return Text(controller.eyesValue ? controller.saldo : 'R\$ 0,00',style: const
            TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold),
            );
      }
    );  
  }
}
