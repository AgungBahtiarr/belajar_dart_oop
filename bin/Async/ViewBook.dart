import 'package:mysql_client/mysql_client.dart';

class ViewBook  {
  static void view(IResultSet result) {
    for (final row in result.rows) {
      print(row.colByName('judul'));
    }
  }
}
