import 'package:flutter/material.dart';
import 'package:flutterappfacebook/tabs/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        // Header
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('facebook',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue
            ),
          ),
          // Icon search and message
          actions: <Widget>[
            Container(
              width: 26,
              height: 26,
              // color: Colors.grey,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black54,
                  width: 1
                )
              ),
              child: Icon(Icons.add, color: Colors.black54,),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search)
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.message)
            )
          ],
      
        //   Tab bar
          bottom: TabBar(
              unselectedLabelColor: Colors.black54, //Mau truoc khi chon
              indicatorColor: Colors.blue, //Mau duong gạch duoi sau khi chon
              labelColor: Colors.blue, // Mau label sau khi duoc chon
              tabs: [
                Tab(icon: Icon(Icons.home_filled),),
                Tab(icon: Icon(Icons.group),),
                Tab(icon: Icon(Icons.person_outline),),
                Tab(icon: Icon(Icons.ondemand_video),),
                Tab(icon: Icon(Icons.notifications_none),),
                Tab(icon: Icon(Icons.menu),)
              ]
          ),
        ),
        
        body: TabBarView(
            children: [
              HomeScreen(),
              Icon(Icons.group),
              Icon(Icons.person_outline),
              Icon(Icons.ondemand_video),
              Icon(Icons.notifications),
              Icon(Icons.menu)
            ]
        ),
      ),
    );
  }
}
