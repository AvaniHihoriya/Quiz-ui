import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
class Quizscreen extends StatelessWidget {
  const Quizscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [

          TextButton(    //flatbutton
              onPressed: (){},
              child: Text("Skip",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white

              ),
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              // image: AssetImage("assets/images/q1.jpeg"),
            image: new DecorationImage(
              image: AssetImage("assets/images/q5.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.85
            ),
            ),
          ),

          SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfa33769b)),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Stack(
                          children: [
                            LayoutBuilder(
                                builder: (context,constraints)=>Container(
                                  width: constraints.maxWidth*0.5,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [ Colors.teal.shade300, Colors.blue.shade300]),
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                ),
                            ),
                            Positioned.fill(
                                child:Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text("18 sec",style: TextStyle(color: Colors.black87,fontSize: 15),),
                                     Icon(Icons.access_time_filled_outlined,size: 30,color: Colors.white54),
                                   ],
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text.rich(
                        TextSpan(
                          text: "Question 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                          ),
                          children: [
                            TextSpan(text: "/10",style:Theme.of(context).textTheme.headline6),

                          ],
                        ),
                      ),
                      Divider(thickness: 2,color: Colors.blue.shade700,),
                      SizedBox(height: 30,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text("Flutter is an open-source UI software development kit created by _________.",
                              style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            SizedBox(height: 20,),
                            Option(),
                            Option(),
                            Option(),
                            Option(),
                          ],
                        ),


                      ),
                    ],
                  ),
          ),
              ))

        ],
      ),
    );
  }
}
class Option extends StatelessWidget {
  const Option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("1. Test",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 20
            ),),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
          ),
        ],
      ),
    );
  }
}
