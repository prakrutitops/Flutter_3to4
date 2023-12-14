import 'package:flutter/material.dart';

import 'main2.dart';
import 'main3.dart';

void main()
{
  runApp(MaterialApp(home:TextAlert()));
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Confirmation Dialog"),),
        body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [

                  ElevatedButton
                    (
                      onPressed: () async
                      {
                        final ConfirmAction? action = await myconfirmdialog(context);
                        print("Confirm Action $action" );
                    }, child: Text("Delete")
                  )



              ],

            ),

        ),

      );
  }


}
enum ConfirmAction { Cancel, Accept}

Future<ConfirmAction?> myconfirmdialog(BuildContext context)
{

  return showDialog<ConfirmAction>
    (
      context: context,
      builder: (BuildContext context)
      {
          return AlertDialog
            (
                title: Text('Delete This Contact?'),
                content: const Text('This will delete the contact from your device.'),
                actions:
                [

                  ElevatedButton(onPressed: (){

                    Navigator.of(context).pop(ConfirmAction.Cancel);
                  }, child: Text("Cancel")),
                  ElevatedButton(onPressed: (){

                    Navigator.of(context).pop(ConfirmAction.Accept);

                  }, child: Text("Delete")),
                ],

          );
    },);

}
