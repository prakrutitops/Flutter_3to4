import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget
{
  @override
  DynamicListState createState() => DynamicListState();


}

class DynamicListState extends State<DynamicList>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(title: Text("Dynamic List"),),
        body: ListView.builder(itemCount:150,
                itemBuilder: (BuildContext context, int index)
                {
                  return ListTile(
                      leading: const Icon(Icons.list),
                      trailing: const Text(
                        "GFG",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      title: Text("List item $index"));
                }),

      );
  }

}