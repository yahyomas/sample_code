// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_local.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWeatherLocalCollection on Isar {
  IsarCollection<WeatherLocal> get weatherLocals => this.collection();
}

const WeatherLocalSchema = CollectionSchema(
  name: r'WeatherLocal',
  id: 7069347914698049150,
  properties: {
    r'cityName': PropertySchema(
      id: 0,
      name: r'cityName',
      type: IsarType.string,
    ),
    r'feelsLike': PropertySchema(
      id: 1,
      name: r'feelsLike',
      type: IsarType.string,
    ),
    r'info': PropertySchema(
      id: 2,
      name: r'info',
      type: IsarType.string,
    ),
    r'main': PropertySchema(
      id: 3,
      name: r'main',
      type: IsarType.string,
    ),
    r'temp': PropertySchema(
      id: 4,
      name: r'temp',
      type: IsarType.string,
    )
  },
  estimateSize: _weatherLocalEstimateSize,
  serialize: _weatherLocalSerialize,
  deserialize: _weatherLocalDeserialize,
  deserializeProp: _weatherLocalDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _weatherLocalGetId,
  getLinks: _weatherLocalGetLinks,
  attach: _weatherLocalAttach,
  version: '3.1.0+1',
);

int _weatherLocalEstimateSize(
  WeatherLocal object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cityName.length * 3;
  bytesCount += 3 + object.feelsLike.length * 3;
  bytesCount += 3 + object.info.length * 3;
  bytesCount += 3 + object.main.length * 3;
  bytesCount += 3 + object.temp.length * 3;
  return bytesCount;
}

void _weatherLocalSerialize(
  WeatherLocal object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cityName);
  writer.writeString(offsets[1], object.feelsLike);
  writer.writeString(offsets[2], object.info);
  writer.writeString(offsets[3], object.main);
  writer.writeString(offsets[4], object.temp);
}

WeatherLocal _weatherLocalDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeatherLocal(
    cityName: reader.readString(offsets[0]),
    feelsLike: reader.readString(offsets[1]),
    info: reader.readString(offsets[2]),
    main: reader.readString(offsets[3]),
    temp: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _weatherLocalDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _weatherLocalGetId(WeatherLocal object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _weatherLocalGetLinks(WeatherLocal object) {
  return [];
}

void _weatherLocalAttach(
    IsarCollection<dynamic> col, Id id, WeatherLocal object) {
  object.id = id;
}

extension WeatherLocalQueryWhereSort
    on QueryBuilder<WeatherLocal, WeatherLocal, QWhere> {
  QueryBuilder<WeatherLocal, WeatherLocal, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeatherLocalQueryWhere
    on QueryBuilder<WeatherLocal, WeatherLocal, QWhereClause> {
  QueryBuilder<WeatherLocal, WeatherLocal, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterWhereClause> idBetween(
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

extension WeatherLocalQueryFilter
    on QueryBuilder<WeatherLocal, WeatherLocal, QFilterCondition> {
  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cityName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cityName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      cityNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cityName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feelsLike',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feelsLike',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feelsLike',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feelsLike',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'feelsLike',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'feelsLike',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feelsLike',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feelsLike',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feelsLike',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      feelsLikeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feelsLike',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> idBetween(
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

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> infoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'info',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      infoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'info',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> infoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'info',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> infoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'info',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      infoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'info',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> infoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'info',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> infoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'info',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> infoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'info',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      infoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'info',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      infoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'info',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> mainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      mainGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> mainLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> mainBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'main',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      mainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> mainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> mainContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> mainMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'main',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      mainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'main',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      mainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'main',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> tempEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      tempGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> tempLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> tempBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      tempStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'temp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> tempEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'temp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> tempContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'temp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition> tempMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'temp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      tempIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temp',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterFilterCondition>
      tempIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'temp',
        value: '',
      ));
    });
  }
}

extension WeatherLocalQueryObject
    on QueryBuilder<WeatherLocal, WeatherLocal, QFilterCondition> {}

extension WeatherLocalQueryLinks
    on QueryBuilder<WeatherLocal, WeatherLocal, QFilterCondition> {}

extension WeatherLocalQuerySortBy
    on QueryBuilder<WeatherLocal, WeatherLocal, QSortBy> {
  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByCityName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityName', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByCityNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityName', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByFeelsLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByFeelsLikeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'info', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByInfoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'info', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByMain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'main', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByMainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'main', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> sortByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }
}

extension WeatherLocalQuerySortThenBy
    on QueryBuilder<WeatherLocal, WeatherLocal, QSortThenBy> {
  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByCityName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityName', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByCityNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityName', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByFeelsLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByFeelsLikeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'info', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByInfoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'info', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByMain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'main', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByMainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'main', Sort.desc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByTemp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.asc);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QAfterSortBy> thenByTempDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temp', Sort.desc);
    });
  }
}

extension WeatherLocalQueryWhereDistinct
    on QueryBuilder<WeatherLocal, WeatherLocal, QDistinct> {
  QueryBuilder<WeatherLocal, WeatherLocal, QDistinct> distinctByCityName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QDistinct> distinctByFeelsLike(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feelsLike', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QDistinct> distinctByInfo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'info', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QDistinct> distinctByMain(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'main', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherLocal, WeatherLocal, QDistinct> distinctByTemp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temp', caseSensitive: caseSensitive);
    });
  }
}

extension WeatherLocalQueryProperty
    on QueryBuilder<WeatherLocal, WeatherLocal, QQueryProperty> {
  QueryBuilder<WeatherLocal, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeatherLocal, String, QQueryOperations> cityNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityName');
    });
  }

  QueryBuilder<WeatherLocal, String, QQueryOperations> feelsLikeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feelsLike');
    });
  }

  QueryBuilder<WeatherLocal, String, QQueryOperations> infoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'info');
    });
  }

  QueryBuilder<WeatherLocal, String, QQueryOperations> mainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'main');
    });
  }

  QueryBuilder<WeatherLocal, String, QQueryOperations> tempProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temp');
    });
  }
}
