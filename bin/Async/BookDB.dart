import 'package:mysql_client/mysql_client.dart';
import 'Buku.dart';

class BookDB {
  MySQLConnection conn;
  BookDB(this.conn);
  Future<void> insert(Buku buku) async {
    try {
      await conn.connect();
      var insert = await conn.prepare(
          "INSERT INTO `buku`(`judul`, `penerbit`, `isbn`) VALUES (?,?,?)");
     await insert.execute([buku.judulBuku, buku.penerbit, buku.isbn]);
    } catch(e) {
      print(e);
    }
  }

  Future<IResultSet> getBuku() async {
    IResultSet result = await conn.execute("SELECT * FROM buku");
    await conn.close();
    return result;
  }
}
