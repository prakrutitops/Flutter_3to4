void main()
{

   var list = List(5);//fixed length

   //list value assign -value insert
   list[0]=10;
   list[1]=20;
   list[2]=30;
   list[3]=40;
   list[4]=50;

   list[2]=300;//update

   list[2]=null;//delete

  //value print
   print(list);

  print(list[1]);

  print("----------------------");

   for(int i in list)
    {
      print(i);
    }

   print("----------------------");

    list.forEach((element) { print(element); });

   print("----------------------");

    for(int i=0;i<5;i++)
    {
      print(list[i]);
    }





}