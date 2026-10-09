/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _isc;

abstract class ElogHolidayEntries
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogHolidayEntries._({
    this.id,
    required this.holidayCalendarId,
    required this.entryDate,
    required this.name,
    this.description,
    this.category,
    this.isHalfDay,
    this.halfDayPeriod,
    this.isWorkingOverride,
  });

  factory ElogHolidayEntries({
    _isc.UuidValue? id,
    required _isc.UuidValue holidayCalendarId,
    required DateTime entryDate,
    required String name,
    String? description,
    String? category,
    bool? isHalfDay,
    String? halfDayPeriod,
    bool? isWorkingOverride,
  }) = _ElogHolidayEntriesImpl;

  factory ElogHolidayEntries.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogHolidayEntries(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      holidayCalendarId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['holidayCalendarId'],
      ),
      entryDate: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['entryDate'],
      ),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      category: jsonSerialization['category'] as String?,
      isHalfDay: jsonSerialization['isHalfDay'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isHalfDay']),
      halfDayPeriod: jsonSerialization['halfDayPeriod'] as String?,
      isWorkingOverride: jsonSerialization['isWorkingOverride'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(
              jsonSerialization['isWorkingOverride'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue holidayCalendarId;

  DateTime entryDate;

  String name;

  String? description;

  String? category;

  bool? isHalfDay;

  String? halfDayPeriod;

  bool? isWorkingOverride;

  /// Returns a shallow copy of this [ElogHolidayEntries]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogHolidayEntries copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? holidayCalendarId,
    DateTime? entryDate,
    String? name,
    String? description,
    String? category,
    bool? isHalfDay,
    String? halfDayPeriod,
    bool? isWorkingOverride,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogHolidayEntries',
      if (id != null) 'id': id?.toJson(),
      'holidayCalendarId': holidayCalendarId.toJson(),
      'entryDate': entryDate.toJson(),
      'name': name,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (isHalfDay != null) 'isHalfDay': isHalfDay,
      if (halfDayPeriod != null) 'halfDayPeriod': halfDayPeriod,
      if (isWorkingOverride != null) 'isWorkingOverride': isWorkingOverride,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogHolidayEntries',
      if (id != null) 'id': id?.toJson(),
      'holidayCalendarId': holidayCalendarId.toJson(),
      'entryDate': entryDate.toJson(),
      'name': name,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (isHalfDay != null) 'isHalfDay': isHalfDay,
      if (halfDayPeriod != null) 'halfDayPeriod': halfDayPeriod,
      if (isWorkingOverride != null) 'isWorkingOverride': isWorkingOverride,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogHolidayEntriesImpl extends ElogHolidayEntries {
  _ElogHolidayEntriesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue holidayCalendarId,
    required DateTime entryDate,
    required String name,
    String? description,
    String? category,
    bool? isHalfDay,
    String? halfDayPeriod,
    bool? isWorkingOverride,
  }) : super._(
         id: id,
         holidayCalendarId: holidayCalendarId,
         entryDate: entryDate,
         name: name,
         description: description,
         category: category,
         isHalfDay: isHalfDay,
         halfDayPeriod: halfDayPeriod,
         isWorkingOverride: isWorkingOverride,
       );

  /// Returns a shallow copy of this [ElogHolidayEntries]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogHolidayEntries copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? holidayCalendarId,
    DateTime? entryDate,
    String? name,
    Object? description = _Undefined,
    Object? category = _Undefined,
    Object? isHalfDay = _Undefined,
    Object? halfDayPeriod = _Undefined,
    Object? isWorkingOverride = _Undefined,
  }) {
    return ElogHolidayEntries(
      id: id is _isc.UuidValue? ? id : this.id,
      holidayCalendarId: holidayCalendarId ?? this.holidayCalendarId,
      entryDate: entryDate ?? this.entryDate,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      category: category is String? ? category : this.category,
      isHalfDay: isHalfDay is bool? ? isHalfDay : this.isHalfDay,
      halfDayPeriod: halfDayPeriod is String?
          ? halfDayPeriod
          : this.halfDayPeriod,
      isWorkingOverride: isWorkingOverride is bool?
          ? isWorkingOverride
          : this.isWorkingOverride,
    );
  }
}
