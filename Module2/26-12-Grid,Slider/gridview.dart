import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget 
{
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> 
{

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];


  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview"),),
      body: GridView.builder(itemCount: 4,

        itemBuilder: (BuildContext context,int index)
        {
          return Image.network(images[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
          (
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0
          ),
        
      ),
    
    
    
    );
  }
}
