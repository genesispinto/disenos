import 'package:flutter/material.dart';
import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:disenos/widgets/custom_botton_navigation.dart';
import 'package:disenos/widgets/card_table.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),

          _HomeBody()
        ],),
        bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          PageTitle(),
          CardTable()
        ],
      ),
    );
  }
}