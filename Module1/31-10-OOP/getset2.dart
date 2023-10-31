import 'dart:io';

class Emp
{

  String _fname;
  String _lname;
  String _email;
  String _pass;
  String _cpass;

  String get fname => _fname;

  set fname(String value) {
    _fname = value;
  }

  String get lname => _lname;

  String get cpass => _cpass;

  set cpass(String value) {
    _cpass = value;
  }

  String get pass => _pass;

  set pass(String value) {
    _pass = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  set lname(String value) {
    _lname = value;
  }
}

void main()
{

    var e1 = Emp();

    print("Enter Firstname");
    e1._fname = stdin.readLineSync();
    print("Enter Lastname");
    e1._lname = stdin.readLineSync();
    print("Enter Email");
    e1._email = stdin.readLineSync();
    print("Enter Password");
    e1._pass = stdin.readLineSync();
    print("Enter Confirm Password");
    e1._cpass = stdin.readLineSync();

      if(e1._pass == e1._cpass)
      {
          print(e1._fname);
          print(e1._lname);
          print(e1._email);
          print(e1._pass);
          print(e1._cpass);
      }
      else
      {
        print("Password and Confirm Password are not same");
      }
}