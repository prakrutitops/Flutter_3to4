void main()
{
    var a = Person();
    var data = a(101,"a");
    print(data);
   // a.a();

}
class Person
{

    void a()
    {
        print("a");
    }

    String call(int age,String name)
    {
      return "Your Name is $name and age is $age";
    }
}