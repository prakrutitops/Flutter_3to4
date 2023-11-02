class P
{
  void p()
  {
    print("p called");
  }
}
class Q extends P
{
  void q()
  {
    print("q called");
  }
}
abstract class R
{
  void r()
  {
    print("r called");
  }
}
class S extends Q implements R
{
  void s()
  {
    print("s called");
  }

  @override
  void p() {

    print("p called");
  }

  @override
  void q() {
    print("q called");
  }

  @override
  void r() {
    print("r called");
  }
}

void main()
{
    var s1 = S();

    s1.p();
    s1.q();
    s1.r();
    s1.s();
}