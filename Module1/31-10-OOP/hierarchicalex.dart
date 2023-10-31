class Bank
{
    void bank()
    {
      print("banking");
    }
}
class Current extends Bank
{
  void current()
  {
    print("current");
  }
}
class Save extends Bank
{
  void save()
  {
    print("saving");
  }
}
void main()
{
  var c = Current();
  var s = Save();

  c.current();
  s.save();
  s.bank();
}