import 'package:dynamiclist/Model.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  final List<Model> items =
  [
    Model(image: 'assets/apple.jpg', text: 'Apple'),
    Model(image: 'assets/orange.jpg', text: 'Orange'),
    Model(image: 'assets/banana.jpg', text: 'Banana'),
    Model(image: 'assets/apple.jpg', text: 'Apple'),
    Model(image: 'assets/orange.jpg', text: 'Orange')



    // Add more items as needed
  ];


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title: Text("Custom list"),),
        body: ListView.builder
          (
            itemCount:5,
            itemBuilder: (BuildContext context,int index)
            {
                //design for list
                return ListTile
                  (

                      leading: Image.asset(items[index].image,width: 50,height: 50),
                      title: Text(items[index].text),
                      subtitle: Column(

                        children: [
                          Text(items[index].text),
                          Text(items[index].text),
                          Text(items[index].text),
                          ElevatedButton(onPressed: (){}, child: Text("Add to cart"))

                        ],

                      ),



                  );

            }),

    );
  }
}

