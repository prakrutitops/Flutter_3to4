detail(String name,String surname,[String email,String mob])
{
  print("-------------");
  print("\n");
  print("Your Name is $name");
  print("Your Surname is $surname");
  print("Your Email is $email");
  print("Your Mobile is $mob");
}


void main()
{

    detail("aisha", "xyz", "aisha@gmail.com", "9275003605");
    detail("prashant", "xyz");
    detail("mansi", "xyz", "9275003605");
    detail("suzan", "xyz", "suzan@gmail.com", "9275003605");

}