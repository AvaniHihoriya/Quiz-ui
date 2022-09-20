import 'package:flutter/material.dart';
PreferredSizeWidget Myappbar(){
  return PreferredSize(
    child: AppBar(
      title: Text("Quiz"),
    ),
    preferredSize: Size.fromHeight(50),
  );
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text("Avani Hihoriya",
          style: TextStyle(
            fontSize: 18
          ),
          ),
            accountEmail: Text("avanihihoriya@gmail.com",
            style: TextStyle(fontSize: 16),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black26,
              child: Icon(Icons.person, color: Colors.white,),
            ),
            decoration: BoxDecoration(
              color: Colors.blue
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: InkWell(
              child:ListTile(
                title:Text("Setting",
                style: TextStyle(
                  fontSize: 16
                ),
                ),
                leading: Icon(Icons.settings,size: 30,),
              )

            ),
          ),
        ],
      ),
    );
  }
}
