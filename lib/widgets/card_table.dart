import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children:const [
          TableRow(
          children: [
            _SigleCard(color: Colors.blue, icon: Icons.border_all, text: 'General',),
            _SigleCard(color: Colors.pink, icon: Icons.supervisor_account_outlined, text: 'Usuario'),

      ],),
      TableRow(
          children: [
            _SigleCard(color: Colors.blue, icon: Icons.border_all, text: 'General',),
            _SigleCard(color: Colors.pink, icon: Icons.supervisor_account_outlined, text: 'Usuario'),

      ],),
      TableRow(
          children: [
            _SigleCard(color: Colors.blue, icon: Icons.border_all, text: 'General',),
            _SigleCard(color: Colors.pink, icon: Icons.supervisor_account_outlined, text: 'Usuario'),

      ],)

        ]);
      
      
}
  }

class _SigleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard({
    Key? key, required this.icon, required this.color, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.all(15),
        child: ClipRRect(
         borderRadius: BorderRadius.circular(20), 
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon, size: 35,color: Colors.white,),
                ),
                const SizedBox(height: 15,),
                Text(text, style:  TextStyle(color: color, fontSize: 18))
              ]),
          ),
        ),
      ),
    );
  }
}