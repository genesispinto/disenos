import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  final boxDecoration =  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end:Alignment.bottomCenter ,
            stops: [0.5,0.5],
            colors:[
              Color(0xff5EE8C5),
              Color.fromARGB(255, 109, 186, 248)
            ] )
        );


  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView( 
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const[
            Page1(),
            Page2(),
        ],),
      )
      
      
      
      );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const[
         Background(),
         MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         const SizedBox(height: 40,),
         const Center(child: Text('11°', style: textStyle,)),
         const Center(child: Text('Miercoles', style: textStyle)),
         Expanded(child: Container()),
         const Icon(Icons.keyboard_arrow_down_outlined, size: 100, color: Colors.white,)
    
       ],
      ),
    );
  }

  
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 109, 186, 248),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png',)));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 109, 186, 248),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child:  Text('Bienvenido', 
            style:  TextStyle(color: Colors.white, fontSize: 30),),
          )),
      ),
    );
  }
}