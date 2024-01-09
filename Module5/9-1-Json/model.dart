import 'package:flutter/material.dart';

class Model extends StatelessWidget
{
  late List list;
  Model({required this.list});
  
  @override
  Widget build(BuildContext context)
  {
      return ListView.builder(
          itemCount:list.length,
          itemBuilder:(context,i)
          {
            return ListTile
              (
                title: Text(list[i]['languageName']),

              );
          });
  }

}