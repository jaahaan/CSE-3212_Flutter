import 'package:flutter/material.dart';

import 'widgets/reuseable_widgets.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    TextEditingController passController = TextEditingController();
    TextEditingController cpassController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("My Form"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 85, 102, 110),
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Register Form",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              textField(
                  "Name", Icons.person, TextInputType.text, nameController),
              SizedBox(
                height: 10,
              ),
              textField("Email", Icons.email, TextInputType.emailAddress,
                  emailController),
              SizedBox(
                height: 10,
              ),
              textField("Password", Icons.lock, TextInputType.visiblePassword,
                  cpassController),
              SizedBox(
                height: 10,
              ),
              textField("Confirm Password", Icons.lock,
                  TextInputType.visiblePassword, passController),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)),
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
