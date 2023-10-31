class A1
{
    void a1()
    {
        print("A1 Called");
    }
}
class B1 extends A1
{
  void b1()
  {
    print("B1 Called");
  }
}
void main()
{
    var b1 = B1();
    b1.a1();
    b1.b1();
}