import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: originalImage(),
    );
  }
}

class originalImage extends StatelessWidget {
  originalImage({Key? key}) : super(key: key);
  List<String> img =[
    "canvas",
    "color-palette",
    "crayon",
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "اضغظ لتكبير الصورة",
          style: TextStyle(
            fontFamily: 'AmiriQuran',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFc68c53),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bigSize(img: "canvas",),),);
                },
                  child:  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                      color: Color(0xFF80ff80),

                    ),

                    child: Hero(tag: 'canvas', child: Image.asset("assets/canvas.png"),),
                  ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bigSize(img: "color-palette",),),);
                },
                child:  Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20),),
                    color: Color(0xFFff4d4d),

                  ),

                  child: Hero(tag: 'canvas', child: Image.asset("assets/color-palette.png"),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bigSize(img: "crayon",),),);
                },
                child:  Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20),),
                    color: Color(0xFF668cff),

                  ),

                  child: Hero(tag: 'canvas', child: Image.asset("assets/crayon.png"),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class bigSize extends StatelessWidget {
  bigSize({required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("الصورة في وضعية التكبير", style: TextStyle(
          fontFamily: 'AmiriQuran',
        ),),
        centerTitle: true,
        backgroundColor:Color(0xFFc68c53) ,
      ),
      body:Center(child: Hero(tag: 'canvas', child: Image.asset("assets/$img.png"),),)
    );
  }
}

