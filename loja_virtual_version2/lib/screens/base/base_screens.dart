import 'package:flutter/material.dart';
import 'package:loja_virtual_version2/commom/custom_drawer/custom_drawer.dart';
import 'package:loja_virtual_version2/models/page_manager.dart';
import 'package:loja_virtual_version2/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

/*
basicamente nesta tela temos todas as telas. Esta é a tela básica. 
Aqui é configurado o pagecontroller
*/


class BaseScreen extends StatelessWidget {

  final PageController pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(this.pageController),
      child: PageView(
      controller: pageController,
       physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          LoginScreen(),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Home1"),
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Home2"),
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Home3"),
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Home4"),
            ),
          ),
        ]
      ),
    );
  }
}