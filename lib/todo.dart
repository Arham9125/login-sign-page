import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  List<String> names = [];
  TextEditingController abc = TextEditingController();
  addnames() {}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: ElevatedButton(
        onPressed: () {
          setState(() {
            names.add(abc.text);
          });
        },
        child: Text("Press"),
      )),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Enter"),
            controller: abc,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: Colors.grey
                      ,
                      title: Text(names[index]),
                      // leading: Row(
                      //   children: [
                      //     IconButton(
                      //         onPressed: () {
                      //           setState(() {
                      //             names.remove(names[index]);
                      //           });
                      //         },
                      //         icon: Icon(Icons.remove)),
                      //   ],
                      // ),
                    );
                  }))
        ],
      ),
    );
  }
}
