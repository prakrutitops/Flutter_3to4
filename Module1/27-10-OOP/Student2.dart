class Student2
{

  //global variables
  int id;
  String name,surname,email;

  //Parameterized constructor
  Student2(int id,String name,String surname,String email)
  {
    //local variaBLE


    this.id=id;
    this.name=name;
    this.surname=surname;
    this.email=email;
  }

  display()
  {
    print("Your id is $id");
    print("Your name is $name");
    print("Your surname is $surname");
    print("Your email is $email");
  }


}
void main()
{
    var s1 = Student2(101,"akshay","xyz","a@gmail.com");
    var s2 = Student2(102,"vivek","xyz","v@gmail.com");

    s1.display();
    s2.display();


}