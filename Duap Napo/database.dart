 initDB() async{
    return await openDatabase(join(await getDatabasesPath(),"note_app.db"),
      onCreate: (db,version)async {
      await db.execute('''
      CREATE TABLE notes(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT,
      body TEXT,
      creation_data DATE
      ''');

      },version: 1);
  }