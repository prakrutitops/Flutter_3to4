import 'package:flutter/material.dart';
import 'package:jsoninsert/view.dart';
import 'package:http/http.dart' as http;

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct>
{
  TextEditingController pname = TextEditingController();
  TextEditingController pprice = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title:Text("Json Crud"),),
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

                var url = Uri.parse("https://topsapi.000webhostapp.com/Flutter_API/insert.php");

                http.post(url,
                    body:
                  {

                  "p_name":pname.text.toString(),
                  "p_price":pprice.text.toString(),



                  });
                print('Inserted');




                Navigator.push(context,MaterialPageRoute(builder: (context) => ViewProduct()));
              }, child: Text("Add Product"))

            ],
          ),
        ),
      ),

    );
  }
}
