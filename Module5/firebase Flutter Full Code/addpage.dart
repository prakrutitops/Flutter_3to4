import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseex/homepage.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget
{
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage>
{
  final _formkey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late String name,email,password;


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Crud App"),),
        body: Form
          (
            key: _formkey,
          child: ListView(
            children: [
              TextField
                (
                controller: nameController,
                decoration: InputDecoration
                  (
                    hintText: "Enter Your Name"
                ),
               ),
              TextField(
                controller: emailController,
                decoration: InputDecoration
                  (
                    hintText: "Enter Your Email"
                ),

              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration
                  (
                    hintText: "Enter Your Password"
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          name = nameController.text.toString();
                          email = emailController.text.toString();
                          password = passwordController.text.toString();
                          _registerUser();
                          _clearText();
                          //Navigator.pop(context);
                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomePage()));
                        });
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: const Text('Register'),
                  ),
                  ElevatedButton(
                    onPressed: _clearText,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: const Text('Clear'),
                  ),
                ],
              ),
            ],
          ),
        ),
    );

  }
  CollectionReference addUser = FirebaseFirestore.instance.collection('Students');
  Future<void> _registerUser()
  {
    return addUser
        .add({'Name': name, 'Email': email, 'Password': password})
        .then((value) => print('User Added'))
        .catchError((_) => print('Something Error In registering User'));
  }

  void _clearText()
  {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }
}
