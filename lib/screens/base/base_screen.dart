import 'package:EPIwebInventoryControl/screens/QRcode/baixa_stoque_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:EPIwebInventoryControl/screens/home/home_screen.dart';
import 'package:EPIwebInventoryControl/stores/page_store.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();
  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  void initState() {
    super.initState();
    /*Função mobx que observa a página selecionada no pageStore e 
    * executa a função para alterar a pagina atravez do pageController;
    */
    reaction((_) => pageStore.page, (page) => pageController.jumpToPage(page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          BaixaStoqueScreen(),
          Container(color: Colors.purple),
          Container(color: Colors.brown)
        ],
      ),
    );
  }
}
