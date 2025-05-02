import 'package:flutter/material.dart';

mySncekBar(msg, context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(msg)));
}

myAlertDialogue(context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
            child: AlertDialog(
          title: Text("Hello"),
          content: Text("Do you want to delete?"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  mySncekBar("Successfully Deleted!!", context);
                  Navigator.of(context).pop();
                },
                child: Text("Yes")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("No"))
          ],
        ));
      });
}

TextField textField(String text, IconData icon, TextInputType type,
    TextEditingController controller) {
  return TextField(
      controller: controller,
      obscureText: type == TextInputType.visiblePassword ? true : false,
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: text,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          )),
      keyboardType: type);
}
