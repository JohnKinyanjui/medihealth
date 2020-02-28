// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medi_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MediTableData extends DataClass implements Insertable<MediTableData> {
  final int id;
  final String date;
  final String day;
  final String mood;
  final String sleep;
  final String healthy;
  final String quiz_percentage;
  final String des;
  final String walking;
  final String water;
  final String sleep_time;
  final String calories;
  final String Result;
  MediTableData(
      {this.id,
      @required this.date,
      @required this.day,
      @required this.mood,
      @required this.sleep,
      @required this.healthy,
      @required this.quiz_percentage,
      @required this.des,
      @required this.walking,
      @required this.water,
      @required this.sleep_time,
      @required this.calories,
      @required this.Result});
  factory MediTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MediTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      date: stringType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      day: stringType.mapFromDatabaseResponse(data['${effectivePrefix}day']),
      mood: stringType.mapFromDatabaseResponse(data['${effectivePrefix}mood']),
      sleep:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sleep']),
      healthy:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}healthy']),
      quiz_percentage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}quiz_percentage']),
      des: stringType.mapFromDatabaseResponse(data['${effectivePrefix}des']),
      walking:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}walking']),
      water:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}water']),
      sleep_time: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sleep_time']),
      calories: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}calories']),
      Result:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}result']),
    );
  }
  factory MediTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MediTableData(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<String>(json['date']),
      day: serializer.fromJson<String>(json['day']),
      mood: serializer.fromJson<String>(json['mood']),
      sleep: serializer.fromJson<String>(json['sleep']),
      healthy: serializer.fromJson<String>(json['healthy']),
      quiz_percentage: serializer.fromJson<String>(json['quiz_percentage']),
      des: serializer.fromJson<String>(json['des']),
      walking: serializer.fromJson<String>(json['walking']),
      water: serializer.fromJson<String>(json['water']),
      sleep_time: serializer.fromJson<String>(json['sleep_time']),
      calories: serializer.fromJson<String>(json['calories']),
      Result: serializer.fromJson<String>(json['Result']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<String>(date),
      'day': serializer.toJson<String>(day),
      'mood': serializer.toJson<String>(mood),
      'sleep': serializer.toJson<String>(sleep),
      'healthy': serializer.toJson<String>(healthy),
      'quiz_percentage': serializer.toJson<String>(quiz_percentage),
      'des': serializer.toJson<String>(des),
      'walking': serializer.toJson<String>(walking),
      'water': serializer.toJson<String>(water),
      'sleep_time': serializer.toJson<String>(sleep_time),
      'calories': serializer.toJson<String>(calories),
      'Result': serializer.toJson<String>(Result),
    };
  }

  @override
  MediTableCompanion createCompanion(bool nullToAbsent) {
    return MediTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      day: day == null && nullToAbsent ? const Value.absent() : Value(day),
      mood: mood == null && nullToAbsent ? const Value.absent() : Value(mood),
      sleep:
          sleep == null && nullToAbsent ? const Value.absent() : Value(sleep),
      healthy: healthy == null && nullToAbsent
          ? const Value.absent()
          : Value(healthy),
      quiz_percentage: quiz_percentage == null && nullToAbsent
          ? const Value.absent()
          : Value(quiz_percentage),
      des: des == null && nullToAbsent ? const Value.absent() : Value(des),
      walking: walking == null && nullToAbsent
          ? const Value.absent()
          : Value(walking),
      water:
          water == null && nullToAbsent ? const Value.absent() : Value(water),
      sleep_time: sleep_time == null && nullToAbsent
          ? const Value.absent()
          : Value(sleep_time),
      calories: calories == null && nullToAbsent
          ? const Value.absent()
          : Value(calories),
      Result:
          Result == null && nullToAbsent ? const Value.absent() : Value(Result),
    );
  }

  MediTableData copyWith(
          {int id,
          String date,
          String day,
          String mood,
          String sleep,
          String healthy,
          String quiz_percentage,
          String des,
          String walking,
          String water,
          String sleep_time,
          String calories,
          String Result}) =>
      MediTableData(
        id: id ?? this.id,
        date: date ?? this.date,
        day: day ?? this.day,
        mood: mood ?? this.mood,
        sleep: sleep ?? this.sleep,
        healthy: healthy ?? this.healthy,
        quiz_percentage: quiz_percentage ?? this.quiz_percentage,
        des: des ?? this.des,
        walking: walking ?? this.walking,
        water: water ?? this.water,
        sleep_time: sleep_time ?? this.sleep_time,
        calories: calories ?? this.calories,
        Result: Result ?? this.Result,
      );
  @override
  String toString() {
    return (StringBuffer('MediTableData(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('day: $day, ')
          ..write('mood: $mood, ')
          ..write('sleep: $sleep, ')
          ..write('healthy: $healthy, ')
          ..write('quiz_percentage: $quiz_percentage, ')
          ..write('des: $des, ')
          ..write('walking: $walking, ')
          ..write('water: $water, ')
          ..write('sleep_time: $sleep_time, ')
          ..write('calories: $calories, ')
          ..write('Result: $Result')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          date.hashCode,
          $mrjc(
              day.hashCode,
              $mrjc(
                  mood.hashCode,
                  $mrjc(
                      sleep.hashCode,
                      $mrjc(
                          healthy.hashCode,
                          $mrjc(
                              quiz_percentage.hashCode,
                              $mrjc(
                                  des.hashCode,
                                  $mrjc(
                                      walking.hashCode,
                                      $mrjc(
                                          water.hashCode,
                                          $mrjc(
                                              sleep_time.hashCode,
                                              $mrjc(calories.hashCode,
                                                  Result.hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MediTableData &&
          other.id == this.id &&
          other.date == this.date &&
          other.day == this.day &&
          other.mood == this.mood &&
          other.sleep == this.sleep &&
          other.healthy == this.healthy &&
          other.quiz_percentage == this.quiz_percentage &&
          other.des == this.des &&
          other.walking == this.walking &&
          other.water == this.water &&
          other.sleep_time == this.sleep_time &&
          other.calories == this.calories &&
          other.Result == this.Result);
}

class MediTableCompanion extends UpdateCompanion<MediTableData> {
  final Value<int> id;
  final Value<String> date;
  final Value<String> day;
  final Value<String> mood;
  final Value<String> sleep;
  final Value<String> healthy;
  final Value<String> quiz_percentage;
  final Value<String> des;
  final Value<String> walking;
  final Value<String> water;
  final Value<String> sleep_time;
  final Value<String> calories;
  final Value<String> Result;
  const MediTableCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.day = const Value.absent(),
    this.mood = const Value.absent(),
    this.sleep = const Value.absent(),
    this.healthy = const Value.absent(),
    this.quiz_percentage = const Value.absent(),
    this.des = const Value.absent(),
    this.walking = const Value.absent(),
    this.water = const Value.absent(),
    this.sleep_time = const Value.absent(),
    this.calories = const Value.absent(),
    this.Result = const Value.absent(),
  });
  MediTableCompanion.insert({
    this.id = const Value.absent(),
    @required String date,
    @required String day,
    @required String mood,
    @required String sleep,
    @required String healthy,
    @required String quiz_percentage,
    @required String des,
    @required String walking,
    @required String water,
    @required String sleep_time,
    @required String calories,
    @required String Result,
  })  : date = Value(date),
        day = Value(day),
        mood = Value(mood),
        sleep = Value(sleep),
        healthy = Value(healthy),
        quiz_percentage = Value(quiz_percentage),
        des = Value(des),
        walking = Value(walking),
        water = Value(water),
        sleep_time = Value(sleep_time),
        calories = Value(calories),
        Result = Value(Result);
  MediTableCompanion copyWith(
      {Value<int> id,
      Value<String> date,
      Value<String> day,
      Value<String> mood,
      Value<String> sleep,
      Value<String> healthy,
      Value<String> quiz_percentage,
      Value<String> des,
      Value<String> walking,
      Value<String> water,
      Value<String> sleep_time,
      Value<String> calories,
      Value<String> Result}) {
    return MediTableCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      day: day ?? this.day,
      mood: mood ?? this.mood,
      sleep: sleep ?? this.sleep,
      healthy: healthy ?? this.healthy,
      quiz_percentage: quiz_percentage ?? this.quiz_percentage,
      des: des ?? this.des,
      walking: walking ?? this.walking,
      water: water ?? this.water,
      sleep_time: sleep_time ?? this.sleep_time,
      calories: calories ?? this.calories,
      Result: Result ?? this.Result,
    );
  }
}

class $MediTableTable extends MediTable
    with TableInfo<$MediTableTable, MediTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MediTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedTextColumn _date;
  @override
  GeneratedTextColumn get date => _date ??= _constructDate();
  GeneratedTextColumn _constructDate() {
    return GeneratedTextColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dayMeta = const VerificationMeta('day');
  GeneratedTextColumn _day;
  @override
  GeneratedTextColumn get day => _day ??= _constructDay();
  GeneratedTextColumn _constructDay() {
    return GeneratedTextColumn(
      'day',
      $tableName,
      false,
    );
  }

  final VerificationMeta _moodMeta = const VerificationMeta('mood');
  GeneratedTextColumn _mood;
  @override
  GeneratedTextColumn get mood => _mood ??= _constructMood();
  GeneratedTextColumn _constructMood() {
    return GeneratedTextColumn(
      'mood',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sleepMeta = const VerificationMeta('sleep');
  GeneratedTextColumn _sleep;
  @override
  GeneratedTextColumn get sleep => _sleep ??= _constructSleep();
  GeneratedTextColumn _constructSleep() {
    return GeneratedTextColumn(
      'sleep',
      $tableName,
      false,
    );
  }

  final VerificationMeta _healthyMeta = const VerificationMeta('healthy');
  GeneratedTextColumn _healthy;
  @override
  GeneratedTextColumn get healthy => _healthy ??= _constructHealthy();
  GeneratedTextColumn _constructHealthy() {
    return GeneratedTextColumn(
      'healthy',
      $tableName,
      false,
    );
  }

  final VerificationMeta _quiz_percentageMeta =
      const VerificationMeta('quiz_percentage');
  GeneratedTextColumn _quiz_percentage;
  @override
  GeneratedTextColumn get quiz_percentage =>
      _quiz_percentage ??= _constructQuizPercentage();
  GeneratedTextColumn _constructQuizPercentage() {
    return GeneratedTextColumn(
      'quiz_percentage',
      $tableName,
      false,
    );
  }

  final VerificationMeta _desMeta = const VerificationMeta('des');
  GeneratedTextColumn _des;
  @override
  GeneratedTextColumn get des => _des ??= _constructDes();
  GeneratedTextColumn _constructDes() {
    return GeneratedTextColumn(
      'des',
      $tableName,
      false,
    );
  }

  final VerificationMeta _walkingMeta = const VerificationMeta('walking');
  GeneratedTextColumn _walking;
  @override
  GeneratedTextColumn get walking => _walking ??= _constructWalking();
  GeneratedTextColumn _constructWalking() {
    return GeneratedTextColumn(
      'walking',
      $tableName,
      false,
    );
  }

  final VerificationMeta _waterMeta = const VerificationMeta('water');
  GeneratedTextColumn _water;
  @override
  GeneratedTextColumn get water => _water ??= _constructWater();
  GeneratedTextColumn _constructWater() {
    return GeneratedTextColumn(
      'water',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sleep_timeMeta = const VerificationMeta('sleep_time');
  GeneratedTextColumn _sleep_time;
  @override
  GeneratedTextColumn get sleep_time => _sleep_time ??= _constructSleepTime();
  GeneratedTextColumn _constructSleepTime() {
    return GeneratedTextColumn(
      'sleep_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _caloriesMeta = const VerificationMeta('calories');
  GeneratedTextColumn _calories;
  @override
  GeneratedTextColumn get calories => _calories ??= _constructCalories();
  GeneratedTextColumn _constructCalories() {
    return GeneratedTextColumn(
      'calories',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ResultMeta = const VerificationMeta('Result');
  GeneratedTextColumn _Result;
  @override
  GeneratedTextColumn get Result => _Result ??= _constructResult();
  GeneratedTextColumn _constructResult() {
    return GeneratedTextColumn(
      'result',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        date,
        day,
        mood,
        sleep,
        healthy,
        quiz_percentage,
        des,
        walking,
        water,
        sleep_time,
        calories,
        Result
      ];
  @override
  $MediTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'medi_table';
  @override
  final String actualTableName = 'medi_table';
  @override
  VerificationContext validateIntegrity(MediTableCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.date.present) {
      context.handle(
          _dateMeta, date.isAcceptableValue(d.date.value, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (d.day.present) {
      context.handle(_dayMeta, day.isAcceptableValue(d.day.value, _dayMeta));
    } else if (isInserting) {
      context.missing(_dayMeta);
    }
    if (d.mood.present) {
      context.handle(
          _moodMeta, mood.isAcceptableValue(d.mood.value, _moodMeta));
    } else if (isInserting) {
      context.missing(_moodMeta);
    }
    if (d.sleep.present) {
      context.handle(
          _sleepMeta, sleep.isAcceptableValue(d.sleep.value, _sleepMeta));
    } else if (isInserting) {
      context.missing(_sleepMeta);
    }
    if (d.healthy.present) {
      context.handle(_healthyMeta,
          healthy.isAcceptableValue(d.healthy.value, _healthyMeta));
    } else if (isInserting) {
      context.missing(_healthyMeta);
    }
    if (d.quiz_percentage.present) {
      context.handle(
          _quiz_percentageMeta,
          quiz_percentage.isAcceptableValue(
              d.quiz_percentage.value, _quiz_percentageMeta));
    } else if (isInserting) {
      context.missing(_quiz_percentageMeta);
    }
    if (d.des.present) {
      context.handle(_desMeta, des.isAcceptableValue(d.des.value, _desMeta));
    } else if (isInserting) {
      context.missing(_desMeta);
    }
    if (d.walking.present) {
      context.handle(_walkingMeta,
          walking.isAcceptableValue(d.walking.value, _walkingMeta));
    } else if (isInserting) {
      context.missing(_walkingMeta);
    }
    if (d.water.present) {
      context.handle(
          _waterMeta, water.isAcceptableValue(d.water.value, _waterMeta));
    } else if (isInserting) {
      context.missing(_waterMeta);
    }
    if (d.sleep_time.present) {
      context.handle(_sleep_timeMeta,
          sleep_time.isAcceptableValue(d.sleep_time.value, _sleep_timeMeta));
    } else if (isInserting) {
      context.missing(_sleep_timeMeta);
    }
    if (d.calories.present) {
      context.handle(_caloriesMeta,
          calories.isAcceptableValue(d.calories.value, _caloriesMeta));
    } else if (isInserting) {
      context.missing(_caloriesMeta);
    }
    if (d.Result.present) {
      context.handle(
          _ResultMeta, Result.isAcceptableValue(d.Result.value, _ResultMeta));
    } else if (isInserting) {
      context.missing(_ResultMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MediTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MediTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MediTableCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.date.present) {
      map['date'] = Variable<String, StringType>(d.date.value);
    }
    if (d.day.present) {
      map['day'] = Variable<String, StringType>(d.day.value);
    }
    if (d.mood.present) {
      map['mood'] = Variable<String, StringType>(d.mood.value);
    }
    if (d.sleep.present) {
      map['sleep'] = Variable<String, StringType>(d.sleep.value);
    }
    if (d.healthy.present) {
      map['healthy'] = Variable<String, StringType>(d.healthy.value);
    }
    if (d.quiz_percentage.present) {
      map['quiz_percentage'] =
          Variable<String, StringType>(d.quiz_percentage.value);
    }
    if (d.des.present) {
      map['des'] = Variable<String, StringType>(d.des.value);
    }
    if (d.walking.present) {
      map['walking'] = Variable<String, StringType>(d.walking.value);
    }
    if (d.water.present) {
      map['water'] = Variable<String, StringType>(d.water.value);
    }
    if (d.sleep_time.present) {
      map['sleep_time'] = Variable<String, StringType>(d.sleep_time.value);
    }
    if (d.calories.present) {
      map['calories'] = Variable<String, StringType>(d.calories.value);
    }
    if (d.Result.present) {
      map['result'] = Variable<String, StringType>(d.Result.value);
    }
    return map;
  }

  @override
  $MediTableTable createAlias(String alias) {
    return $MediTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MediTableTable _mediTable;
  $MediTableTable get mediTable => _mediTable ??= $MediTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [mediTable];
}
