import 'package:flutter/material.dart';

class ListitemPage extends StatelessWidget {
  String title, img;

  ListitemPage(this.img, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListItem"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Card(
          elevation: 40,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 300,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    img,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(title),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
