// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppStep _$_$_AppStepFromJson(Map<String, dynamic> json) {
  return _$_AppStep(
    name: json['name'] as String,
    description: json['description'] as String,
    points: (json['points'] as num)?.toDouble(),
    index: (json['index'] as num)?.toDouble(),
    imgPath: json['imgPath'] as String,
    reviewType: _$enumDecodeNullable(_$ReviewTypeEnumMap, json['reviewType']),
  );
}

Map<String, dynamic> _$_$_AppStepToJson(_$_AppStep instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'points': instance.points,
      'index': instance.index,
      'imgPath': instance.imgPath,
      'reviewType': _$ReviewTypeEnumMap[instance.reviewType],
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
  ReviewType.security: 'security',
  ReviewType.food: 'food',
  ReviewType.rest: 'rest',
  ReviewType.sleep: 'sleep',
  ReviewType.services: 'services',
  ReviewType.bathroom: 'bathroom',
};
