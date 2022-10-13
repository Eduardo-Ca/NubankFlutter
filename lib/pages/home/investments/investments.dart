import 'package:dubanko/util/colors_standard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Investments extends StatelessWidget {
  const Investments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textInvestChevron(),
            InvestmentsValue(),
            _consultValue()
          ],
        ),
      ),

    );
  }


_textInvestChevron(){
  return Row(
    children: [
      Text('Investimentos', 
      style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    
      Icon(MdiIcons.chevronRight),
    ],
  );
}

InvestmentsValue(){
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Text('O jeito Du de investir: sem steriscos, \n linguagem facil a partirde R\$ 1,00',
    style: TextStyle(color: Colors.grey),),
  );

  }

  _consultValue(){
    return Container(
      margin: const EdgeInsets.only(top: 12,bottom: 12),
      decoration: BoxDecoration(
        color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(MdiIcons.cash),
            Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
              child: const Text('Consultar saldo para transferéncia',
              style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}