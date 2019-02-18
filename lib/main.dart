import 'package:flutter/material.dart';
import 'package:scaffold/BodyWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                
                currentAccountPicture: CircleAvatar(child: Text("JM"),),
                accountName: Text("Jacob Moura"),
                accountEmail: Text("jacobaraujo7@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Account"),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text("Exit"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("My App"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.not_interested),
              onPressed: () {},
            ),
          ],
        ),
        body: BodyWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("Clicou no FloatButton");
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_camera_mic), title: Text("Camera")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("Account")),
          ],
        ),
      ),
    );
  }
}
