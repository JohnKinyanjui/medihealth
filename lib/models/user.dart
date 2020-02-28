import 'package:hive/hive.dart';

class User extends HiveObject{
  String username;
  String full_name;
  String password;

  User(this.username,this.full_name,this.password);
}