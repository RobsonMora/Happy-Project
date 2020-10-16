import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Orphanages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(max: 50)();
  BlobColumn get banner => blob().nullable()();
}

@UseMoor(tables: [Orphanages])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true)));

  @override
  int get schemaVersion => 1;
}
