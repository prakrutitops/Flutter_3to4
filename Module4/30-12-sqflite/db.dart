import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Mydb
{

  late Database db;

  Future open()async
  {
    var databasesPath = await getDatabasesPath();//database path decide
    String path = join(databasesPath,'xyz.db');
    print(path);

    db = await openDatabase(path,version: 1,onCreate:(Database db, int version) async
    {

      await db.execute('''

                    CREATE TABLE IF NOT EXISTS students( 
                          id primary key,
                          name varchar(255) not null,
                          surname varchar(255) not null,
                          email varchar(255) not null
                      );

                      //create more table here
                  
                  ''');


      print("Table Created");
    });



  }

}