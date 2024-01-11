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
                title: Text(list[i]['c_name']),
                subtitle: Text(list[i]['c_country']),
                leading: Image.network(list[i]['c_image'],width: 100,height: 50,),
              );
          });
  }

}