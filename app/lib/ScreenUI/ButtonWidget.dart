import 'package:flutter/material.dart';

class ButtonWid extends StatelessWidget {
  const ButtonWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
        backgroundColor: Color.fromARGB(255, 1, 1, 1),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 100),
                  textStyle: TextStyle(fontSize: 30),
                  primary: Color.fromARGB(255, 191, 91, 254),
                  onPrimary: Color.fromARGB(255, 255, 255, 255)),
              onPressed: () {
                print("Elevated button was pressed.");
              },
              child: Text("Tap Me"),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(250, 100),
                textStyle: TextStyle(fontSize: 30),
                primary: Color.fromARGB(255, 191, 91, 254),
                side: const BorderSide(width: 3, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onPressed: () {
                print("Outlined button was pressed.");
              },
              child: Text("Click Me"),
            ),
            const SizedBox(
              height: 15,
            ),
            IconButton(
              iconSize: 75,
              onPressed: () {
                print("ac_unit_otlined icon button was pressed.");
              },
              icon: const Icon(
                Icons.ac_unit_outlined,
                color: Color.fromARGB(255, 191, 91, 254),
              ),
            )
          ],
        ),
      ),
    );
  }
}
