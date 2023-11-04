import 'dart:collection';

void main()
{

  //key,value pair
  //hashvalue
  var map = Map<String,int>();
  map["a"]=101;
  map["b"]=102;
  map["c"]=103;
  map["d"]=104;

  //print(map.keys);
  //print(map.values);

    for(dynamic i in map.entries)
    {
        print(i);
    }

}