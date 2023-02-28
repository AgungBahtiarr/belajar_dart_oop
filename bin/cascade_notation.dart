class User {
  String? username;
  String? name;
  String? email;
}

User? createUser() {
  return null;
}

void main(List<String> args) {
  User agung = User()
    ..username = 'AgungB' // tidak perlu menggunakan agung.username untuk membuat object
    ..name = 'Agung Bahtiar'
    ..email = 'agungbahtiar050@gmail.com';

  var user2 = createUser()
    ?..username = 'AgungB' // tidak perlu menggunakan agung.username untuk membuat object
    ..name = 'Agung Bahtiar'
    ..email = 'agungbahtiar050@gmail.com';

}
