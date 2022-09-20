import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class Wc extends StatelessWidget {
  const Wc({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        child: Container(
          height: 820,
          width: 400,
          decoration: new BoxDecoration(
            // shape: BoxShape.rectangle,
            image: new DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.7,
              image: AssetImage("assets/images/q1.jpeg"),
            ),
          ),

child: Padding(
  padding: const EdgeInsets.all(10.0),

  child: Column(
    children: [
        Spacer(),
        Text("Let's Play Quiz",
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
        ),
        SizedBox(height: 20,),
        Text("Let's make some bond",
            style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500
        ),
        ),
        Spacer(flex: 2),
        TextField(
          decoration: InputDecoration(
            // hintText: "Enter Name",
            // hintStyle: TextStyle(
            //   color: Colors.white,
            // ),
            labelText: "Enter Your Sweet Name",
            labelStyle: TextStyle(
              color: Colors.white
            ),
            filled: true,
            fillColor: Color(0xa32265a1),
            enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(width: 2,color: Colors.white,),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(width: 2,color: Colors.black87),
            ),
          ),
        ),
        // Spacer(),
        SizedBox(height: 50),
        InkWell(
          onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Quizscreen()));
          },
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              // gradient: LinearGradient(colors: [Colors.teal,Colors.white10]),
             color: Colors.tealAccent.shade700,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Text("Let's Start",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w900
            ),
            ),
           ),
        ),
        Spacer(),
    ],
  ),
),
        ),
      ),
    );
  }
}
