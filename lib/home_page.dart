import 'package:cse_3212_flutter/converter_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        appBar: AppBar(
          title: Text("Homepage"),
          backgroundColor: Colors.blueGrey,
          elevation: 10,
          actions: [
            IconButton(
              onPressed: () {
                mySnackBar('Search', context);
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                mySnackBar('Settings', context);
              },
              icon: Icon(Icons.settings),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],
          onTap: (int index) {
            switch (index) {
              case 0:
                mySnackBar("Home", context);

              case 1:
                mySnackBar("Message", context);

              case 2:
                mySnackBar("Profile", context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  accountName: Text("Name"),
                  accountEmail: Text("Email"),
                  currentAccountPicture:
                      Image.asset("assets/images/flutter.png"),
                  currentAccountPictureSize: Size.square(50),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () => mySnackBar("Home", context),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                onTap: () => mySnackBar("Contact", context),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () => mySnackBar("Profile", context),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.white, width: 6),
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/images/flutter.png"),
                // Image.network(
                //     "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736971585/eecjvezsu5bmgxdq1s1m.png"),
              ),
              ElevatedButton(
                onPressed: () {
                  myAlertDialog(context);
                },
                child: Text("Alert Button"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConverterPage()));
                },
                child: Text("Form"),
              ),
            ],
          ),
        ));
  }
}
