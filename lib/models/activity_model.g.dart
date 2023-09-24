// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetActivityCollection on Isar {
  IsarCollection<Activity> get activitys => this.collection();
}

const ActivitySchema = CollectionSchema(
  name: r'Activity',
  id: -6099828696840999229,
  properties: {
    r'completed': PropertySchema(
      id: 0,
      name: r'completed',
      type: IsarType.bool,
    ),
    r'dateTime': PropertySchema(
      id: 1,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'deadine': PropertySchema(
      id: 2,
      name: r'deadine',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'payment': PropertySchema(
      id: 4,
      name: r'payment',
      type: IsarType.double,
    ),
    r'scheduledHours': PropertySchema(
      id: 5,
      name: r'scheduledHours',
      type: IsarType.long,
    ),
    r'scheduledMinutes': PropertySchema(
      id: 6,
      name: r'scheduledMinutes',
      type: IsarType.long,
    ),
    r'spentHours': PropertySchema(
      id: 7,
      name: r'spentHours',
      type: IsarType.long,
    ),
    r'spentMinutes': PropertySchema(
      id: 8,
      name: r'spentMinutes',
      type: IsarType.long,
    )
  },
  estimateSize: _activityEstimateSize,
  serialize: _activitySerialize,
  deserialize: _activityDeserialize,
  deserializeProp: _activityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'task': LinkSchema(
      id: 2869926379897280012,
      name: r'task',
      target: r'Task',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _activityGetId,
  getLinks: _activityGetLinks,
  attach: _activityAttach,
  version: '3.0.5',
);

int _activityEstimateSize(
  Activity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _activitySerialize(
  Activity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.completed);
  writer.writeDateTime(offsets[1], object.dateTime);
  writer.writeDateTime(offsets[2], object.deadine);
  writer.writeString(offsets[3], object.name);
  writer.writeDouble(offsets[4], object.payment);
  writer.writeLong(offsets[5], object.scheduledHours);
  writer.writeLong(offsets[6], object.scheduledMinutes);
  writer.writeLong(offsets[7], object.spentHours);
  writer.writeLong(offsets[8], object.spentMinutes);
}

Activity _activityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Activity(
    completed: reader.readBoolOrNull(offsets[0]) ?? false,
    dateTime: reader.readDateTime(offsets[1]),
    deadine: reader.readDateTimeOrNull(offsets[2]),
    name: reader.readString(offsets[3]),
    payment: reader.readDoubleOrNull(offsets[4]),
    scheduledHours: reader.readLong(offsets[5]),
    scheduledMinutes: reader.readLong(offsets[6]),
    spentHours: reader.readLong(offsets[7]),
    spentMinutes: reader.readLong(offsets[8]),
  );
  object.id = id;
  return object;
}

P _activityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _activityGetId(Activity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _activityGetLinks(Activity object) {
  return [object.task];
}

void _activityAttach(IsarCollection<dynamic> col, Id id, Activity object) {
  object.id = id;
  object.task.attach(col, col.isar.collection<Task>(), r'task', id);
}

extension ActivityQueryWhereSort on QueryBuilder<Activity, Activity, QWhere> {
  QueryBuilder<Activity, Activity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ActivityQueryWhere on QueryBuilder<Activity, Activity, QWhereClause> {
  QueryBuilder<Activity, Activity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Activity, Activity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Activity, Activity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Activity, Activity, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ActivityQueryFilter
    on QueryBuilder<Activity, Activity, QFilterCondition> {
  QueryBuilder<Activity, Activity, QAfterFilterCondition> completedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completed',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> dateTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> dateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> dateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> dateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> deadineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deadine',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> deadineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deadine',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> deadineEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deadine',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> deadineGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deadine',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> deadineLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deadine',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> deadineBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deadine',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> paymentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payment',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> paymentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payment',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> paymentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> paymentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> paymentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> paymentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> scheduledHoursEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scheduledHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      scheduledHoursGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scheduledHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      scheduledHoursLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scheduledHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> scheduledHoursBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scheduledHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      scheduledMinutesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scheduledMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      scheduledMinutesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scheduledMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      scheduledMinutesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scheduledMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      scheduledMinutesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scheduledMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> spentHoursEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spentHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> spentHoursGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spentHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> spentHoursLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spentHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> spentHoursBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spentHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> spentMinutesEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spentMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      spentMinutesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spentMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> spentMinutesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spentMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> spentMinutesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spentMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ActivityQueryObject
    on QueryBuilder<Activity, Activity, QFilterCondition> {}

extension ActivityQueryLinks
    on QueryBuilder<Activity, Activity, QFilterCondition> {
  QueryBuilder<Activity, Activity, QAfterFilterCondition> task(
      FilterQuery<Task> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'task');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> taskIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'task', 0, true, 0, true);
    });
  }
}

extension ActivityQuerySortBy on QueryBuilder<Activity, Activity, QSortBy> {
  QueryBuilder<Activity, Activity, QAfterSortBy> sortByCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completed', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completed', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByDeadine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deadine', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByDeadineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deadine', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByPayment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payment', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByPaymentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payment', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByScheduledHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduledHours', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByScheduledHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduledHours', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByScheduledMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduledMinutes', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByScheduledMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduledMinutes', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortBySpentHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spentHours', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortBySpentHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spentHours', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortBySpentMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spentMinutes', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortBySpentMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spentMinutes', Sort.desc);
    });
  }
}

extension ActivityQuerySortThenBy
    on QueryBuilder<Activity, Activity, QSortThenBy> {
  QueryBuilder<Activity, Activity, QAfterSortBy> thenByCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completed', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completed', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByDeadine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deadine', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByDeadineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deadine', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByPayment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payment', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByPaymentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payment', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByScheduledHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduledHours', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByScheduledHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduledHours', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByScheduledMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduledMinutes', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByScheduledMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduledMinutes', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenBySpentHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spentHours', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenBySpentHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spentHours', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenBySpentMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spentMinutes', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenBySpentMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spentMinutes', Sort.desc);
    });
  }
}

extension ActivityQueryWhereDistinct
    on QueryBuilder<Activity, Activity, QDistinct> {
  QueryBuilder<Activity, Activity, QDistinct> distinctByCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completed');
    });
  }

  QueryBuilder<Activity, Activity, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<Activity, Activity, QDistinct> distinctByDeadine() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deadine');
    });
  }

  QueryBuilder<Activity, Activity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Activity, Activity, QDistinct> distinctByPayment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payment');
    });
  }

  QueryBuilder<Activity, Activity, QDistinct> distinctByScheduledHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scheduledHours');
    });
  }

  QueryBuilder<Activity, Activity, QDistinct> distinctByScheduledMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scheduledMinutes');
    });
  }

  QueryBuilder<Activity, Activity, QDistinct> distinctBySpentHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spentHours');
    });
  }

  QueryBuilder<Activity, Activity, QDistinct> distinctBySpentMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spentMinutes');
    });
  }
}

extension ActivityQueryProperty
    on QueryBuilder<Activity, Activity, QQueryProperty> {
  QueryBuilder<Activity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Activity, bool, QQueryOperations> completedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completed');
    });
  }

  QueryBuilder<Activity, DateTime, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<Activity, DateTime?, QQueryOperations> deadineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deadine');
    });
  }

  QueryBuilder<Activity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Activity, double?, QQueryOperations> paymentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payment');
    });
  }

  QueryBuilder<Activity, int, QQueryOperations> scheduledHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scheduledHours');
    });
  }

  QueryBuilder<Activity, int, QQueryOperations> scheduledMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scheduledMinutes');
    });
  }

  QueryBuilder<Activity, int, QQueryOperations> spentHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spentHours');
    });
  }

  QueryBuilder<Activity, int, QQueryOperations> spentMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spentMinutes');
    });
  }
}
