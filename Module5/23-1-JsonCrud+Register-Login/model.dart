import 'package:flutter/material.dart';

import 'details.dart';

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
            title: Text(list[i]['p_name']),
            subtitle: Text(list[i]['p_price']),
            onTap: ()
            {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Details(list:list,index:i)));
            },

          );
        });
  }

}