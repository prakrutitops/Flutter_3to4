import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoninsert/edit.dart';
import 'package:jsoninsert/view.dart';

class Details extends StatefulWidget
{
   List list;
   int index;

  Details({required this.list, required this.index});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details>
{


  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("title: Text('${widget.list[widget.index]['p_name']}'),"),),
        body: Container
          (

              child: Column(

                  children: [

                    Text(
                      widget.list[widget.index]['p_name'],
                      style: TextStyle(fontSize: 20.0),
                    ),

                    Text(
                      widget.list[widget.index]['p_price'],

                    ),

                    MaterialButton(
                      child: Text("Edit"),
                      color: Colors.deepPurpleAccent,

                      onPressed: ()
                        {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => EditPage(list:widget.list,index:widget.index)));

                        }

                    ),

                    MaterialButton(
                        child: Text("Delete"),
                        color: Colors.deepPurpleAccent,
                        onPressed: ()
                        {

                            var url=Uri.parse("https://topsapi.000webhostapp.com/Flutter_API/delete.php");

                            http.post(url,
                                body:
                                {
                                'id':widget.list[widget.index]['id'],

                                });

                            Navigator.push(context,MaterialPageRoute(builder: (context) => ViewProduct()));

                        }
                    )



                  ],

              ),

        ),
      );
  }
}
