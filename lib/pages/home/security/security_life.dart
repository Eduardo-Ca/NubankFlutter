import 'package:dubanko/util/colors_standard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SecurityLife extends StatelessWidget {
  const SecurityLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 12,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [

          SizedBox(height: 16,),

          Text('Seguros',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          Text('Proteçâo para você cuidar do que importa',
          style: TextStyle(color: Colors.grey),),

          _securityButton(context),

         
          
        ],
      ),
    );
  }

_securityButton(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width - 32,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: greyColor,
    ),
    margin: const EdgeInsets.only(right: 16,bottom: 12),
    
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [        
          Row(
            
            children: [
              const Icon(MdiIcons.heartMultiple),
              Text('Seguro vida', style: TextStyle(fontWeight: FontWeight.bold),),

            ],
          ),

          Text('Conhecer',
              style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),),
        ],
      ),
    ),
  );
}

}