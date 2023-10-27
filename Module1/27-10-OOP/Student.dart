class Student
{
  //variables - data memebers
    int id;
    String name,surname,email;

    //print the details
  display()
  {
    print("Your Name is ${name}");
    print("Your Name is ${surname}");
    print("Your Name is ${email}");
    print("Your Name is ${id}");
  }


}
void main()
{
  //object
  // var objname = classname();
  //data store
  var s1 = Student();
  s1.id=101;
  s1.name="Prashant";
  s1.surname="xyz";
  s1.email="p@gmail.com";


  var s2 = Student();
  s2.id=102;
  s2.name="Aisha";
  s2.surname="xyz";
  s2.email="a@gmail.com";

  var s3 = Student();
  s3.id=103;
  s3.name="Mansi";
  s3.surname="xyz";
  s3.email="m@gmail.com";

  var s4 = Student();
  s4.id=104;
  s4.name="Suzan";
  s4.surname="xyz";
  s4.email="s@gmail.com";

  s1.display();//method call-display
  s2.display();
  s3.display();
  s4.display();



  // print("Your Name is ${s1.name}");
  // print("Your Name is ${s1.surname}");
  // print("Your Name is ${s1.email}");
  // print("Your Name is ${s1.id}");
  //
  // print("---------------------------");
  //
  // print("Your Name is ${s2.name}");
  // print("Your Name is ${s2.surname}");
  // print("Your Name is ${s2.email}");
  // print("Your Name is ${s2.id}");
  //
  // print("---------------------------");
  //
  // print("Your Name is ${s3.name}");
  // print("Your Name is ${s3.surname}");
  // print("Your Name is ${s3.email}");
  // print("Your Name is ${s3.id}");
  //
  //
  // print("---------------------------");
  //
  // print("Your Name is ${s4.name}");
  // print("Your Name is ${s4.surname}");
  // print("Your Name is ${s4.email}");
  // print("Your Name is ${s4.id}");

}

//
// class class_name
// {
//   //body part
// }