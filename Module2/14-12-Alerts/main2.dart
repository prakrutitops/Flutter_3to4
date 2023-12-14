import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectionAlert extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(title: Text("Selection Dialog"),),
          body: Center
            (
                child: ElevatedButton(
                    onPressed: () async {
                      final City? prodName = await CitySelection(context);
                      print("Selected Product is $prodName");
                    }, child: Text("Select City"),),
            ),

      );


  }



}
enum City { Rajkot,Baroda,Surat,Ahmedabad }
Future<City?> CitySelection(BuildContext context) async
{
  return await showDialog<City>
    ( context: context,
      builder: (BuildContext context)
      {

          return SimpleDialog
            (
              title: const Text('Select City '),
              children: [



                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, City.Ahmedabad);
                      },
                      child: const Text('Ahmedabad'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, City.Baroda);
                      },
                      child: const Text('Baroda'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, City.Rajkot);
                      },
                      child: const Text('Rajkot'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, City.Surat);
                      },
                      child: const Text('Surat'),
                    ),




              ],

          );

      }


  );
}