import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
   
  const BasicDesingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
       // crossAxisAlignment: CrossAxisAlignment.,
        children:   [
            const Image(
            image: AssetImage('assets/img_beach.jpg',)),

           const Title(),

           const Botones(),

           Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
             child: const Text('Playa del Carmen es un balneario costero de México que se ubica a lo largo de la costa caribeña de la Riviera Maya, en la Península de Yucatán. Pertenece al estado de Quintana Roo y es famosa por sus playas bordeadas de palmeras y los arrecifes de coral. La Quinta Avenida peatonal se extiende en paralelo a la playa, con cuadras de tiendas, restaurantes y clubes nocturnos que van desde bares relajados hasta clubes de baile. ',
             textAlign: TextAlign.justify,),
           )
        ],
      )
      
      
     
      );
  }
}

class Botones extends StatelessWidget {
  const Botones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final TextStyle style =  TextStyle(color: Colors.blue);
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon:Icons.call, text:'CALL'),
          CustomButton(icon:Icons.room_outlined, text:'ROUTE'),
          CustomButton(icon:Icons.share, text:'SHARE'),
        ],),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(icon, color: Colors.blue,),
        Text(text, style: TextStyle(color: Colors.blue))
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children:  [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Playa del carmen', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('El paraiso Mexicano', style: TextStyle(color: Colors.black38)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')

      ],),
    );
  }
}