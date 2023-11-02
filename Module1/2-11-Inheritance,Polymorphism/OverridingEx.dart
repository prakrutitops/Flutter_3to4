class RBI
{
  int rate()
  {
    return 0;
  }
}
class Sbi extends RBI
{
  int rate()
  {
    return 7;
  }
}
class Icici extends RBI
{
  int rate()
  {
    return 8;
  }
}
class Axis extends RBI
{
  int rate()
  {
    return 9;
  }
}
void main()
{
  var b = RBI();//refrence variable

  b = Sbi();
  print(b.rate());

  b = Icici();
  print(b.rate());

  b = Axis();
  print(b.rate());
}