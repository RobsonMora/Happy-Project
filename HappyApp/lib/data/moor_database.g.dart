// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Orphanage extends DataClass implements Insertable<Orphanage> {
  final int id;
  final String name;
  final Uint8List banner;
  Orphanage({@required this.id, @required this.name, this.banner});
  factory Orphanage.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final uint8ListType = db.typeSystem.forDartType<Uint8List>();
    return Orphanage(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      banner: uint8ListType
          .mapFromDatabaseResponse(data['${effectivePrefix}banner']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || banner != null) {
      map['banner'] = Variable<Uint8List>(banner);
    }
    return map;
  }

  OrphanagesCompanion toCompanion(bool nullToAbsent) {
    return OrphanagesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      banner:
          banner == null && nullToAbsent ? const Value.absent() : Value(banner),
    );
  }

  factory Orphanage.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Orphanage(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      banner: serializer.fromJson<Uint8List>(json['banner']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'banner': serializer.toJson<Uint8List>(banner),
    };
  }

  Orphanage copyWith({int id, String name, Uint8List banner}) => Orphanage(
        id: id ?? this.id,
        name: name ?? this.name,
        banner: banner ?? this.banner,
      );
  @override
  String toString() {
    return (StringBuffer('Orphanage(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('banner: $banner')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(name.hashCode, banner.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Orphanage &&
          other.id == this.id &&
          other.name == this.name &&
          other.banner == this.banner);
}

class OrphanagesCompanion extends UpdateCompanion<Orphanage> {
  final Value<int> id;
  final Value<String> name;
  final Value<Uint8List> banner;
  const OrphanagesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.banner = const Value.absent(),
  });
  OrphanagesCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    this.banner = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Orphanage> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<Uint8List> banner,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (banner != null) 'banner': banner,
    });
  }

  OrphanagesCompanion copyWith(
      {Value<int> id, Value<String> name, Value<Uint8List> banner}) {
    return OrphanagesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      banner: banner ?? this.banner,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (banner.present) {
      map['banner'] = Variable<Uint8List>(banner.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrphanagesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('banner: $banner')
          ..write(')'))
        .toString();
  }
}

class $OrphanagesTable extends Orphanages
    with TableInfo<$OrphanagesTable, Orphanage> {
  final GeneratedDatabase _db;
  final String _alias;
  $OrphanagesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false, maxTextLength: 50);
  }

  final VerificationMeta _bannerMeta = const VerificationMeta('banner');
  GeneratedBlobColumn _banner;
  @override
  GeneratedBlobColumn get banner => _banner ??= _constructBanner();
  GeneratedBlobColumn _constructBanner() {
    return GeneratedBlobColumn(
      'banner',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, banner];
  @override
  $OrphanagesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'orphanages';
  @override
  final String actualTableName = 'orphanages';
  @override
  VerificationContext validateIntegrity(Insertable<Orphanage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('banner')) {
      context.handle(_bannerMeta,
          banner.isAcceptableOrUnknown(data['banner'], _bannerMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Orphanage map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Orphanage.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $OrphanagesTable createAlias(String alias) {
    return $OrphanagesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $OrphanagesTable _orphanages;
  $OrphanagesTable get orphanages => _orphanages ??= $OrphanagesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [orphanages];
}
