import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey;

    return Scaffold(
        appBar: AppBar(
          title: Text("Add Post"),
          elevation: 0.0,
        ),
        body: Form(
          key: formkey,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Post title", border: OutlineInputBorder()),
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Title field can't be empty";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Post body", border: OutlineInputBorder()),
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Body field can't be empty";
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
          tooltip: "Add a post",
        ));
  }
}
