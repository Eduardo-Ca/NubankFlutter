

import 'package:dubanko/util/colors_standard.dart';
import 'package:flutter/material.dart';


class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _IncomeItem(texto1: "Seu " ,texto2: "Informe de \nrendimentos " ,texto3: "de 2022 já està... "),
           _IncomeItem(texto1: "teste 1 " ,texto2: "testeee 1 \nteste1 " ,texto3: "teste 1 "),
           _IncomeItem(texto1: "teste 2 " ,texto2: "testeee 2 \nteste2 " ,texto3: "teste 2 "),
          
      ]),
    );
  }



  _IncomeItem({required String texto1,required String texto2,required String texto3,}){
    
    return Container(
          width: 300,
      margin: const EdgeInsets.only(left: 10,top: 10,right: 20),
      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
        children: [
          TextSpan(text: texto1, 
          style: TextStyle(color: Colors.black, fontSize: 18)),

          TextSpan(text: texto2,
          style: TextStyle(color: backgroundColor,fontSize: 18)),

          TextSpan(text: texto3, 
          style: TextStyle(color: Colors.black, fontSize: 18)),

        ]
      ),
      ),
    );
  }
}