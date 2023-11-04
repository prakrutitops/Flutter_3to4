void main()
{

   var list = List();

   list.add("A");//dynamically
   list.add(1);
   list.add('C');
   list.add(20.56);
   list.remove('C');
   list.removeAt(0);
   //list.clear();

   var list2 = List();

   list2.add("a");
   list2.add("b");
   list2.add("c");
   list2.add("d");

   list.addAll(list2);

   //print(list);
    for(dynamic i in list)
    {
        print(i);
    }

  

}