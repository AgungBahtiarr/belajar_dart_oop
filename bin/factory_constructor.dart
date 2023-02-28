class Database {
  Database() {
    print('Create New Database');
  }
  static Database database = Database();

  factory Database.get() {
    return database; // Membuat return value saat object dibuat
  }
}

void main(List<String> args) {
  var database1 = Database.get();
  var database2 = Database.get();

  print(database1 == database2);
}
