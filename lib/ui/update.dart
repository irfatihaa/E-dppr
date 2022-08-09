import 'package:flutter/material.dart';
import 'profile_page.dart';

class Update extends StatefulWidget {
  const Update({Key key}) : super(key: key);

  @override
  State<Update> createState() => _Update();
}

class _Update extends State<Update> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  // Initial Selected Value
  String dropdownvalue = 'Student';

  // List of items in our dropdown menu
  var items = [

    'Executive',
    'Management',
    'Engineer',
    'Student'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),),
        title: const Text("Update Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body : Padding(
      padding: const EdgeInsets.all(10),
        child: ListView(
        children: <Widget>[
          Container(
          alignment: Alignment.center,
          child:
            Image.asset('assets/images/logoPerodua.jpg'),
            width: 150,
            height: 150,
          ),
          Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
          controller: numberController,
          decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: '721708',
          ),
          ),
        ),
          Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Sharifah Irfatiha',
          ),
          ),
        ),
          Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'irfatiha@gmail.com',
          ),
          ),
        ),
          Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: DropdownButtonFormField(
              // Initial Value
              value: dropdownvalue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: items.map((String items) {
              return DropdownMenuItem(
              value: items,
              child: Text(items),
              );
              }).toList(),
              onChanged: (String newValue) {
              setState(() {
              dropdownvalue = newValue;
            });
            },
          )),
          Container(
              height: 70,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                child: const Text('Update Profile'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              )
          ),

          ],
    )));
  }
}