import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'customgrid.dart';
import 'gridview.dart';

void main()
{
  runApp(MaterialApp(home:CustomGrid()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Slider Example"),),
      body: Center(

          child: ListView(

            children: [

                CarouselSlider(
                    items: [

                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage("https://images.news18.com/ibnlive/uploads/2021/08/android-developer-mode.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/a/ac/IOS-Emblem.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage("https://images.news18.com/ibnlive/uploads/2021/08/android-developer-mode.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    options: CarouselOptions(
                      height: 200.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeInBack,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),)


            ],

          ),

      ),

    );
  }
}
