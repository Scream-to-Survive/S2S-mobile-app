import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:s2s/models/user.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
//tables
  String _userTable = 'user';
  String _volunteerTable = 'volunteer';
  String _notificationTable = 'notification';
  String _contactTable = 'contact';
  String _locationTable = 'location';
  String _chronicDiseaseTable = 'chronicDisease';
  String _emergencyTable = 'emergency';

//attributes
  String _id = 'id';
  String _userId = 'userId';
  String _firstname = 'firstname';
  String _lastname = 'lastname';
  String _email = 'email';
  String _phoneNumber = 'phoneNumber';
  String _password = 'password';
  String _address = 'address';
  String _birthDate = 'birthDate';
  String _gender = 'gender';
  String _height = 'height';
  String _weight = 'weight';
  String _bloodType = 'bloodType';
  String _location = 'location';
  String _isTrusted = 'isTrusted';
  String _latitude = 'latitude';
  String _longitude = 'longitude';
  String _disease = 'disease';
  String _title = 'title';
  String _type = 'type';
  String _content = 'content';
  String _creationDate = 'creationDate';
  String _duration = 'duration';
  String _relationship = 'relationship';
  String _date = 'date';
  String _isConfirmed = 'isConfirmed';
  String _certificateID = 'certificateID';

  DBHelper._();
  static final DBHelper db = DBHelper._();
  static Database _database;

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDB();
    }
    return _database;
  }

  initDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = documentDirectory.path + "S2S_db";
    return await openDatabase(path, version: 1, onOpen: (db) {}, onCreate: onCreate);
  }

  //create user table
  onCreate(Database db, int version) async {
    await db.execute('''CREATE TABLE $_userTable (
    $_id INTEGER PRIMAY KEY AUTOINCREMENT,
    $_firstname TEXT NOT NULL,
    $_lastname TEXT NOT NULL,
    $_email TEXT NOT NULL,
    $_phoneNumber TEXT NOT NULL, 
    $_password TEXT NOT NULL,
    $_address TEXT DEFAULT NULL,
    $_gender TEXT DEFAULT NULL,
    $_birthDate DATE DEFAULT NULL,
    $_weight INTEGER DEFAULT NULL,
    $_height INTEGER DEFAULT NULL,
    $_bloodType Text DEFAULT NULL
    ''');

    //create notification table
    await db.execute('''
    CREATE TABLE $_notificationTable (
    $_id INTEGER PRIMAY KEY AUTOINCREMENT,
    $_title TEXT,
    $_type TEXT,
    $_content TEXT,
    $_creationDate DATE, 
    $_duration INTEGER,
    $_userId INTEGER
    FOREIGN KEY ($_id)
    REFERENCES $_userTable($_id)
    ''');

    //create contacts table
    await db.execute('''
    CREATE TABLE $_contactTable (
    $_id INTEGER PRIMAY KEY AUTOINCREMENT,
    $_firstname TEXT,
    $_lastname TEXT,
    $_email TEXT,
    $_phoneNumber TEXT,
    $_address TEXT,
    $_relationship TEXT,
    $_duration INTEGER,
    $_userId INTEGER
    FOREIGN KEY ($_id)
    REFERENCES $_userTable($_id)
    ''');

    //create location table
    await db.execute('''
    CREATE TABLE $_locationTable (
    $_id INTEGER PRIMAY KEY AUTOINCREMENT,
    $_latitude REAL,
    $_longitude REAL,
    $_date DATE,
    $_userId FOREIGN KEY ($_id)
    REFERENCES $_userTable($_id)
    ''');

    //create emergency table
    await db.execute('''
    CREATE TABLE $_emergencyTable (
    $_id INTEGER PRIMAY KEY AUTOINCREMENT,
    $_location INTEGER,
    $_date DATE,
    $_type TEXT,
    $_isConfirmed INTEGER,
    $_userId FOREIGN KEY ($_id)
    REFERENCES $_userTable($_id)
    ''');

    //create chronic disease table
    await db.execute('''
    CREATE TABLE $_chronicDiseaseTable (
    $_id INTEGER PRIMAY KEY AUTOINCREMENT,
    $_disease TEXT,
    $_userId FOREIGN KEY ($_id)
    REFERENCES $_userTable($_id)
    ''');

    //create volunteer table
    await db.execute('''
    CREATE TABLE $_volunteerTable (
    $_id INTEGER PRIMAY KEY AUTOINCREMENT,
    $_certificateID INTEGER,
    $_isTrusted INTEGER,
    $_userId FOREIGN KEY ($_id)
    REFERENCES $_userTable($_id)
    ''');
  }

  //create new user
  newUser(User user) async {
    final db = await database;
    db.insert(_userTable, user.toMap());
  }
}
