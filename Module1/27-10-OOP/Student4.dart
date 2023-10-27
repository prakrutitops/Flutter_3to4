class Student4
{
  int id;
  String name,email;


  Student4(int id,String name)
  {
    this.id=id;
    this.name=name;

    print("Your id is $id");
    print("Your name is $name");

  }

  //named constructor
  Student4.tops(int id,String name,String email)
  {
    this.id=id;
    this.name=name;
    this.email=email;

    print("Your id is $id");
    print("Your name is $name");
    print("Your name is $email");
  }



}
void main()
{
  var s1 = Student4.tops(101,"akshay","a@gmail.com");
  var s2 = Student4(102,"vivek");



}