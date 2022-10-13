import 'package:dubanko/controllers/controller_home_page.dart';
import 'package:dubanko/util/colors_standard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _iconCreditCard(),
            _textCreditCard(),
            _invoice(),
            _installments()
          ],
        ));
  }

  _iconCreditCard() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Icon(MdiIcons.creditCardFast),
    );
  }

  _textCreditCard() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Cartâo de credito',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Icon(MdiIcons.chevronRight),
        ],
      ),
    );
  }

  _invoice() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fatura atual',
            style: TextStyle(color: Colors.grey),
          ),

          SizedBox(height: 12,),

          GetBuilder<ControllerHomePage>(
              init: ControllerHomePage(),
              builder: (ControllerHomePage) {
                return Text(ControllerHomePage.creditCardValue,
                  style: 
                  TextStyle(fontSize: 22, 
                  fontWeight: FontWeight.bold),
                );
              }),

          SizedBox(height: 12,),

          Text(
            'Limite disponível: R\$ 550.00',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }


  _installments(){
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16,8,16,8),
      decoration: BoxDecoration(
        color: greyColor,borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text('Parcelar compras', style: 
        TextStyle(fontWeight: FontWeight.bold),
        ),
      ),   
    );
  }


}
