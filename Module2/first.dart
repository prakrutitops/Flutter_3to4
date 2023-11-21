import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Second Page"),),
        body: Center(
              child: Column
                (

                    children:
                    [

                      Text("Product 1"),
                      SizedBox(width: 100,height: 50,),
                      Image.network("https://yt3.googleusercontent.com/tWt6Z524G85N6RuHk2IHy05wso5CZ3YA2uK7Fzs4UO2i815uO_66j2s4aayp0eIj0jSAmCna1w=s900-c-k-c0x00ffffff-no-rj",width: 200,height: 200,),
                      ElevatedButton(onPressed: ()
                      {
                        Navigator.pop(context);
                      }, child: Text("Exit"),)



                    ],

                ),
            /*child: ElevatedButton(onPressed: ()
            {
              Navigator.pop(context);
            }, child: Text("Exit"),),*/
        ),
      );
  }

}