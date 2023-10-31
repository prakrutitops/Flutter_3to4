class MyColor
{
  String color="black";
}
class MyColor2 extends MyColor
{
  String color="white";

  void display()
  {
    print(color);
    print(super.color);//super will call parent class value or variable

  }
}
void main()
{
  var m2 = MyColor2();
  m2.display();
}