void main()
{

  var set = Set();//remove duplicate elements
  set.add(1);
  set.add(2);
  set.add(1);
  set.add(2);

  //add
  //addAll
  //remove

  var set2 = Set();//remove duplicate elements
  set2.add(3);
  set2.add(4);
  set2.add(1);


  set.addAll(set2);
  set.removeAll(set2);
  set.removeWhere((element) => false);
  print(set);
}