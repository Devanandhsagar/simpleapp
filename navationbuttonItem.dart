import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _SelectedIndex=0;
  static const TextStyle optionstyle = TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
  static const List <Widget> _widgetoptions = <Widget> [
    Text('Home',style: optionstyle,),
    Text('Menu',style: optionstyle),
    Text('Logout',style: optionstyle,),
  ];
  void _onItemtapped(int index){
    setState(() {
      _SelectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.home),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon((Icons.logout)),
            SizedBox(
              width: 30,
            )
          ],
          centerTitle: true,
          title: Text('Flutter'),
        ),
        body: Center(
          child: _widgetoptions.elementAt(_SelectedIndex),
        ),
        drawer :Drawer(child: ListView(
          children: <Widget>[
            DrawerHeader(child:
        Text('Menu', style: TextStyle(color: Colors.black),),
            decoration: BoxDecoration(
              color: Colors.grey
            ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('Home'),SizedBox(width: 10,),Icon(Icons.home, size: 20,)
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('Storage'),SizedBox(width: 10,),Icon(Icons.storage, size: 20,)
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('Dashboard'),SizedBox(width: 10,),Icon(Icons.dashboard, size: 20,)
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('Help'),SizedBox(width: 10,),Icon(Icons.help, size: 20,)
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text('Logout'),SizedBox(width: 10,),Icon(Icons.logout, size: 20,)
                ],
              ),
            ),
          ],
        ),

        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 20,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  size: 20,
                ),
                label: "Menu"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.logout,
                  size: 20,
                ),
                label: "Menu")
          ],
          currentIndex: _SelectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemtapped,
        ),
    );
  }
}
