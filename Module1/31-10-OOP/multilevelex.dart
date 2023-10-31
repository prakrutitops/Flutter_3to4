class A2
{
    void a1()
    {
        print("A1 Called");
    }
}
class B2 extends A2
{
  void b1()
  {
    print("B1 Called");
  }
}
class C2 extends B2
{
  void c1()
  {
    print("C1 Called");
  }
}
void main()
{
    var c1 = C2();
    c1.a1();
    c1.b1();
    c1.c1();
}