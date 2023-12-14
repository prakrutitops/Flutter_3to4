import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextAlert extends StatelessWidget
{

  TextEditingController _textFieldController = TextEditingController();


  @override
  Widget build(BuildContext context)
  {

      return Scaffold(

        appBar: AppBar(title: Text("Text Alert"),),
        body: Center(

            child: ElevatedButton(onPressed: ()
            {

              _displayDialog(context);

            }, child: Text("Text AlertDialog"),),

        ),


      );


  }
  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('TextField AlertDemo'),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "TextField in Dialog"),
            ),
            actions: <Widget>[
              new ElevatedButton(
                child: new Text('SUBMIT'),
                onPressed: ()
                {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

}
