class Person
{



  int _id;
  String _name;

  Person(int _id,String _name)
  {
      this._id=_id;
      this._name=_name;
  }


  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  void display()
  {
    print("Your Name is $_name");
  }
}