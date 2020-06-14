// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$_$_ReviewFromJson(Map<String, dynamic> json) {
  return _$_Review(
    point: (json['point'] as num)?.toDouble(),
    ratting: (json['ratting'] as num)?.toDouble(),
    type: _$enumDecodeNullable(_$ReviewTypeEnumMap, json['type']),
    stepName: json['stepName'] as String,
  );
}

Map<String, dynamic> _$_$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'point': instance.point,
      'ratting': instance.ratting,
      'type': _$ReviewTypeEnumMap[instance.type],
      'stepName': instance.stepName,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ReviewTypeEnumMap = {
  ReviewType.health: 'health',
  ReviewType.food: 'food',
  ReviewType.rest: 'rest',
  ReviewType.sleep: 'sleep',
  ReviewType.services: 'services',
  ReviewType.bathroom: 'bathroom',
};
