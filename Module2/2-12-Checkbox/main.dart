import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>
{
   bool one = false;
   bool two = false;
   bool three = false;
   var total=0;
   var amount=0;
   var data="";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Checkbox Example")),
      body: Center(

        child: Column(

          children: [

            CheckboxListTile(
                title: Text("Pizza"),
                subtitle: Text("Rs.100"),
                value: this.one,
                onChanged: (bool? value)
                {

                    setState(() {

                        this.one=value!;
                        amount+=100;
                        data+="\n Pizza @ Rs.100";

                    });


                }


            ),

            CheckboxListTile(
                title: Text("Burger"),
                subtitle: Text("Rs.70"),
                value: this.two,
                onChanged: (bool? value)
                {

                  setState(() {

                    this.two=value!;
                    amount+=70;
                    data+="\n Burger @ Rs.70";

                  });


                }


            ),
            CheckboxListTile(
                title: Text("Coffee"),
                subtitle: Text("Rs.120"),
                value: this.three,
                onChanged: (bool? value)
                {

                  setState(() {

                    this.three=value!;
                    amount+=120;
                    data+="\n Coffee @ Rs.120";

                  });


                }


            ),
            ElevatedButton(onPressed: ()
            {

              print("\n Bill \n $data \n Total: $amount");

            }, child: Text("Order"))



          ],

        ),

      ),







    );
  }

}
