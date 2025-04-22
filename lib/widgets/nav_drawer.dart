import 'package:flutter/material.dart';

import '../converter_page.dart';
import '../home_page.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture: Image.asset("assets/images/flutter.png"),
              currentAccountPictureSize: Size.square(50),
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              }),
          ListTile(
            leading: Icon(Icons.swap_horiz),
            title: Text("Converter"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ConverterPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
