import 'package:flutter/material.dart';

class ListViewWid extends StatelessWidget {
  const ListViewWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = List.generate(100, (index) => "$index");
    final college = ["Sunway", "Global", "LBEF", "Uniglobe", "Softwarica"];
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Shubhechchha"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return ListTile(
                onTap: () {
                  print(index.toString());
                },
                title: Text(college[index]),
                subtitle: Text("IT Colleges"),
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 96, 61, 49),
                  child: Text(college[index][0]),
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ));
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Colors.grey,
              ),
          itemCount: college.length),
    );
  }
}
