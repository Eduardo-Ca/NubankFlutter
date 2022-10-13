import 'package:dubanko/findOut/find_out.dart';
import 'package:dubanko/pages/home/account/account.dart';
import 'package:dubanko/pages/home/account/actions/menu_itens.dart';
import 'package:dubanko/pages/home/credit/my_credits_card_page.dart';
import 'package:dubanko/pages/home/creditsCard/credit_card.dart';
import 'package:dubanko/pages/home/investments/investments.dart';
import 'package:dubanko/pages/home/models/header.dart';
import 'package:dubanko/pages/home/notification/notification_page.dart';
import 'package:dubanko/pages/home/security/security_life.dart';
import 'package:dubanko/pages/home/shopping/shopping_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Header(),
            Account(),
            MenuItens(),

            Divider(thickness: 1.6,),
            MyCreditCards(),

            Divider(thickness: 1.6,),
            NotificationsPage(),

            Divider(thickness: 1.6,),
            CreditCard(),
            
            Divider(thickness: 1.6,),
            Investments(),
            
            Divider(thickness: 1.6,),
            SecurityLife(),

            Divider(thickness: 1.6,),
            ShoppingView(),

            Divider(thickness: 1.6,),
            findOut(),

            SizedBox(height: 16,),
          ]),
      ),
    );
  }
}

PreferredSize _appBar(){
  return PreferredSize(
    child: AppBar(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ), 
    preferredSize: const Size.fromHeight(0));
}