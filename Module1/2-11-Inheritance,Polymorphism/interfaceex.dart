abstract class Print
{
    //non abstract method
    void print1()
    {
      print("printing");
    }

    //abstract method
    print2();
}
abstract class Show
{
  void show1()
  {
    print("showing");
  }

  show2();
}
class Mydata implements Print,Show
{
  @override
  void print1() {

  }

  @override
  print2() {
    // TODO: implement print2
    throw UnimplementedError();
  }

  @override
  void show1() {
    // TODO: implement show1
  }

  @override
  show2() {
    // TODO: implement show2
    throw UnimplementedError();
  }



}
void main()
{
  var m1 = Mydata();

  m1.print1();
  m1.print2();
  m1.show1();
  m1.show2();
}