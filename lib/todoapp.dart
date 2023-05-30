import 'package:flutter/material.dart';

class todop extends StatefulWidget {
  const todop({Key? key}) : super(key: key);

  @override
  State<todop> createState() => _todopState();
}

class _todopState extends State<todop> {
  var titleController = TextEditingController();
  var descController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  var title = "", desc = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "todo",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
          key: _formkey,
          child: Column(
            children: [
              Text("NEW PAGE"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return "ENTER THE TITLE";
                    }
                    return null;
                  },
                  controller: titleController,
                  decoration: InputDecoration(
                      label: Text("TITLE"), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 1000000000,
                  child: TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return "ENTER THE DESCRIPTION";
                      }
                      return null;
                    },
                    controller: descController,
                    decoration: InputDecoration(
                        label: Text("descreption"),
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //  title=titleController.text;
                      //desc=descController.text;
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("SUCCES")));
                      }
                    });
                  },
                  child: Text("SAVE"))
            ],
          )),
    );
  }
}
