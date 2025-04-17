import 'package:flutter/material.dart';

// 1. Create a variable that stores the converted currency value
// 2. Create a function that multiplies the value given by the textfield
// 3. Store the value in the variable that we created
// 4.Display the value

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});
  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  //variable that stores the converted currency value
  double result = 0;

  //For TextField value
  TextEditingController textEditingController = TextEditingController();

  void convert() {
    final text = textEditingController.value.text;
    if (text.isEmpty) {
      errorText = 'Can\'t be empty';
    } else {
      errorText = null;
      result = double.parse(textEditingController.text) * 122.23;
    }
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  String? errorText;

  @override
  Widget build(Object context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.brown,
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(40)),
    );

    final textStyle = TextStyle(
      color: Colors.brown,
      fontSize: 23,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 5,
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 500,
          child: Card(
            elevation: 5,
            // shadowColor: const Color.fromARGB(255, 104, 95, 95),
            // color: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('USD ', style: textStyle),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.brown,
                      ),
                      Text(' BDT', style: textStyle),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: textEditingController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      errorText: errorText,
                      errorBorder: border,
                      focusedErrorBorder: border,
                      label: Text("Amount"),
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Enter amount",
                      prefixIcon: Icon(Icons.monetization_on),
                      prefixIconColor: Colors.brown,
                      focusedBorder: border,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () => convert(),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.brown,
                        foregroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        minimumSize: Size(double.infinity, 50)),
                    child: Text("Convert"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'BDT ${result.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
