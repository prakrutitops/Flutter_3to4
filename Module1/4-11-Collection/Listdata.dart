import 'Person.dart';

void main()
{

    List<Person> list = List();

    var p1 = Person(101,"Aisha");
    var p2 = Person(102,"Prashant");

    list.add(p1);
    list.add(p2);

    p1.display();
    p2.display();



}