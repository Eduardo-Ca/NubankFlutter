import 'package:dubanko/findOut/models/card_find_out.dart';
import 'package:flutter/material.dart';

class findOut extends StatelessWidget {
  const findOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Descubra mais', style:
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(height: 16,),

        findOutCards()
        
        ],
      ),

    );

  }

  findOutCards(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [

          CardFindOut(
            imagem: 'assets/img/m.png',
            buttonText: 'Conhecer',
            description: 'Sua liberdade financeira \n começa com você ...',
            title: 'Parcela compras no app'),

            CardFindOut(
            imagem: 'assets/img/m2.png',
            buttonText: 'Conhecer',
            description: 'Sua liberdade financeira \n começa com você ...',
            title: 'Parcela compras no app'),

            CardFindOut(
            imagem: 'assets/img/m3.png',
            buttonText: 'Conhecer',
            description: 'Sua liberdade financeira \n começa com você ...',
            title: 'Parcela compras no app'),

            CardFindOut(
            imagem: 'assets/img/m4.png',
            buttonText: 'Conhecer',
            description: 'Sua liberdade financeira \n começa com você ...',
            title: 'Parcela compras no app'),
        ]
      ),
    );
  }
}