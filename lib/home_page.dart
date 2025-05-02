import 'package:cse_3212_flutter/converter_page.dart';
import 'package:cse_3212_flutter/form_page.dart';
import 'package:cse_3212_flutter/listview_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  final _widgetOptions = [
    FormPage(),
    ConverterPage(),
    ListviewPage(),
  ];
  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  myAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
              title: Text("Hello!!!"),
              content: Text("Do you want to delete?"),
              actions: [
                TextButton(
                  onPressed: () {
                    mySnackBar("Successful!!", context);
                    Navigator.of(context).pop();
                  },
                  child: Text("Yes"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No"),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
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
      ),
      body: _widgetOptions[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        currentIndex: _selectedItem,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz), label: "Converter"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listview")
        ],
        onTap: (int index) {
          setState(() {
            _selectedItem = index;
          });
        },
      ),
    );
  }
}
