import 'package:flutter/material.dart';
import 'package:jsoninsert/view.dart';
import 'package:http/http.dart' as http;

class EditPage extends StatefulWidget
{
  final List list;
  final int index;

  //const EditPage({super.key});

  EditPage({required this.list, required this.index});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage>
{
  TextEditingController pname = TextEditingController();
  TextEditingController pprice = TextEditingController();

  @override
  void initState()
  {
    // TODO: implement initState

    pname = TextEditingController(text: widget.list[widget.index]['p_name']);
    pprice = TextEditingController(text: widget.list[widget.index]['p_price']);

    super.initState();



  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title:Text("Edit Page"),),
      body: Center
        (
        child: Container
          (
          child: Column
            (
            children:
            [

              TextField
                (
                controller: pname,
                decoration: InputDecoration
                  (
                    labelText: "Enter Product Name",
                    hintText: "Product Name"
                ),
              ),

              TextField
                (
                controller: pprice,
                decoration: InputDecoration
                  (
                    labelText: "Enter Product Price",
                    hintText: "Product Price"
                ),
              ),

              ElevatedButton(onPressed: ()
              {

                var url = Uri.parse("https://topsapi.000webhostapp.com/Flutter_API/update.php");

                http.post(url,
                    body:
                    {
                      "id":widget.list[widget.index]['id'],
                      "p_name":pname.text.toString(),
                      "p_price":pprice.text.toString(),



                    });
                print('Updated');




                Navigator.push(context,MaterialPageRoute(builder: (context) => ViewProduct()));
              }, child: Text("Update Product"))

            ],
          ),
        ),
      ),

    );
  }
}
