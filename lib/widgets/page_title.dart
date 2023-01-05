import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Hola Josue', style: TextStyle(color:Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text('Que te gustaria comer hoy?',style: TextStyle(color:Colors.white, fontSize: 16))
          ],
        ),
      ),
    );
  }
}