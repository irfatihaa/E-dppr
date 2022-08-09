import 'package:flutter/material.dart';
import 'dashboard.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  // Initial Selected Value
  String dropdownvalue = 'Designation/Roles';

  // List of items in our dropdown menu
  var items = [
    'Designation/Roles',
    'Executive',
    'Management',
    'Engineer',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Padding(
        padding: const EdgeInsets.all(10),
          child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child:
              Image.asset('assets/images/logoPerodua.jpg'),
              width: 200,
              height: 150,
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'e-DPPR',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w800,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: numberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Staff ID',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              // child: TextField(
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Designation/Roles',
              //   )),
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),


            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Sign Up'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    (nameController.text);
                    (passwordController.text);
                    //color: Colors.purpleAccent;
                  },
                )
            ),
          ],
        )));
  }
}

//TextButton(
//onPressed: () {
//forgot password screen
//},
//child: const Text('Register Account',),
//),

