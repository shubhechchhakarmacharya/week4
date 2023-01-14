import 'package:flutter/material.dart';

class ContainerWid extends StatelessWidget {
  const ContainerWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget "),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(50, 60, 40, 30),
        padding: EdgeInsets.all(30),
        child: Text(
          "Learning how to use container widget.",
          style: TextStyle(fontSize: 20),
        ),
        //alignment: Alignment.center,
        height: 120,
        width: 400,
        // constraints: BoxConstraints(
        //     minHeight: 20, maxHeight: 200, minWidth: 100, maxWidth: 200),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 8, 205, 146),
          borderRadius: BorderRadius.circular(10),
          // shape: BoxShape.circle,
          border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 5),
          boxShadow: const [
            BoxShadow(spreadRadius: 5, color: Color.fromARGB(255, 64, 92, 114), blurRadius: 5)
          ],
        ),
      ),
    );
  }
}
