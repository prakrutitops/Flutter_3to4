import 'package:flutter/material.dart';

import 'model.dart';

class CustomGrid extends StatefulWidget
{
  const CustomGrid({super.key});

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid>
{


  final List<Model> items =
  [
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Apple'),
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Orange'),
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Banana'),
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Apple'),
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Orange'),
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Apple'),
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Orange'),
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Banana'),
  Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Banana'),

  ];


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title: Text("Custom Grid"),),
        body: GridView.builder
        (
        itemCount:items.length,
        itemBuilder: (BuildContext context,int index)
        {
          //design for list
          return ListTile
            (

            leading: Image.network(items[index].image,width: 50,height: 50),
            title: Text(items[index].text),




          );

        }, gridDelegate :
          SliverGridDelegateWithFixedCrossAxisCount
            (
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0
           ),
          ),

      );


  }
}
