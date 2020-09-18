import 'package:dart_sql/dart_sql.dart';

Future<String> initConn() async {
  //SqlConnection connection = SqlConnection(host: "192.168.10.120", db: "epiweb", user: 'sa', password:'f4c1l!@#\$');
  return SQL.select().from('Afastamento').toString();
}
