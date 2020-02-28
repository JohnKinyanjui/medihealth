import 'package:medihealth/database/medi_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'medi_database.g.dart';

class MediTable extends Table{
   IntColumn get id => integer().autoIncrement()();
   TextColumn get date => text()();
   TextColumn get day => text()();
   TextColumn get mood => text()();
   TextColumn get sleep => text()();
   TextColumn get healthy => text()();
   TextColumn get quiz_percentage => text()();
   TextColumn get des => text()();
   TextColumn get walking => text()();
   TextColumn get water => text()();
   TextColumn get sleep_time => text()();
   TextColumn get calories => text()();
   TextColumn get Result => text()();
}

@UseMoor(tables:[MediTable])
class AppDatabase extends _$AppDatabase{
  AppDatabase(): super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',
  logStatements: true));

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;
  Future<List<MediTableData>> getAllData()=> select(mediTable).get();
  Stream<List<MediTableData>> watchAllData()=> select(mediTable).watch();
  Future insertData(MediTableData mediTableData)=> into(mediTable).insert(mediTableData);
  Future updateData(MediTableData mediTableData)=> update(mediTable).replace(mediTableData);
  Future deleteData(MediTableData mediTableData)=> delete(mediTable).delete(mediTableData);
}
