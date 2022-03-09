import 'package:belajarflutter/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Inputan());
}

class Inputan extends StatefulWidget {
  const Inputan({Key? key}) : super(key: key);

  @override
  State<Inputan> createState() => _InputanState();
}

class _InputanState extends State<Inputan> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Menerima Inputan",
            style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 10.0, 100.0, 10.0),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.only()),
                  hintText: 'Masukkan Tulisan',
                  suffixIcon: IconButton(
                    onPressed: myController.clear,
                    icon: const Icon(Icons.clear),
                  ),
                ),
                style: const TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              FloatingActionButton(
                // When the user presses the button, show an alert dialog containing
                // the text that the user has entered into the text field.
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text that the user has entered by using the
                        // TextEditingController.
                        content: Text(myController.text),
                      );
                    },
                  );
                },
                tooltip: 'Show me the value!',
                child: const Icon(Icons.text_fields),
              ),
              ElevatedButton(
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => const Home());
                    Navigator.push(context, route);
                  },
                  child: const Text("Home"))
            ],
          ),
        ),
      ),
    );
  }
}
