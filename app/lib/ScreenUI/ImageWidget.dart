import 'package:flutter/material.dart';

class ImageWid extends StatelessWidget {
  const ImageWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              child: Center(
                  child: Text(
                "Image from network",
                style: TextStyle(fontSize: 25),
              )),
            ),
            Image.network(
              "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              width: 400,
              height: 300,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : Container(
                          width: 200,
                          height: 200,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
            ),
            Container(
              child: Center(
                  child: Text(
                "Clip oval widget image",
                style: TextStyle(fontSize: 25),
              )),
            ),
            CircleAvatar(
              radius: 150,
              child: ClipOval(
                child: Image.asset(
                  "images/images.jpg",
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Center(
                  child: Text(
                "Circle Avatar Image",
                style: TextStyle(fontSize: 25),
              )),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage(
                "images/hor.jpg",
              ),
              radius: 120,
            ),
          ],
        ));
  }
}
