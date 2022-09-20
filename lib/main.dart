import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/myappbar.dart';
import 'package:quiz/quiz_screen.dart';
import 'wc.dart';
import 'myappbar.dart';
import 'quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),

    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset("assets/lottie/quiz.json"),
        splashIconSize: 200,
        duration: 3000,
        nextScreen: MyHomePage());

  }
}
// onTap: (){
// Navigator.push(context,MaterialPageRoute(builder: (context)=>Sun()));
// print("Orange pressed");
// },
// child: Container(
// child:Lottie.asset("assets/lottie/sun.json"),
// ),
// ),

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: Myappbar(),
      drawer: MyDrawer(),
      body:InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Quizscreen()));
      },
          child: Wc()
      ),


    );
  }
}


