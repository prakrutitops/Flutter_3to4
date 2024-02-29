import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'main5.dart';



class ViewCategory extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();


}

class MyAppState extends State<ViewCategory>
{


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Json Crud App"),),
      body: FutureBuilder<List>(
          future: getdata(),
          builder:(ctx,ss){

            if(ss.hasData)
            {

              return Model(list:ss.data!!);

            }
            if(ss.hasError)
            {
              print('Network Not Found');
            }

            return CircularProgressIndicator();



          }),



    );
  }

  Future<List> getdata() async
  {
    var response = await http.get(Uri.parse(
        "https://topsapi.000webhostapp.com/flutter_project_morning/Category/category_view.php"));
    return jsonDecode(response.body);
  }

}
class Model extends StatelessWidget {

  List list;


  Model({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: list == null ? 0 : list.length,
        itemBuilder: (ctx, i) {
          return ListTile(

              title: Text(list[i]['category_name']),
              subtitle: Text(list[i]['id']),
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Details(list:list,index:i)
              ))
          );
        }


    );
  }
}


