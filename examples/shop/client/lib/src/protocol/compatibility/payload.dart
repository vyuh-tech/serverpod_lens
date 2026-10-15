/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

part of 'payload_base.dart';

abstract class ShopPayload extends _iv35mfmj.ShopPayloadBase
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopPayload._({
    required super.label,
    required this.message,
    this.next,
    this.variant,
    required this.nested,
  });

  factory ShopPayload({
    required String label,
    required String message,
    _iym3mk8y.ShopPayload? next,
    _iym3mk8y.ShopPayloadBase? variant,
    required List<Map<String, int>> nested,
  }) = _ShopPayloadImpl;

  factory ShopPayload.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopPayload(
      label: jsonSerialization['label'] as String,
      message: jsonSerialization['message'] as String,
      next: jsonSerialization['next'] == null
          ? null
          : _id88xlko.Protocol().deserialize<_iym3mk8y.ShopPayload>(
              jsonSerialization['next'],
            ),
      variant: jsonSerialization['variant'] == null
          ? null
          : _id88xlko.Protocol().deserialize<_iym3mk8y.ShopPayloadBase>(
              jsonSerialization['variant'],
            ),
      nested: _id88xlko.Protocol().deserialize<List<Map<String, int>>>(
        jsonSerialization['nested'],
      ),
    );
  }

  String message;

  _iym3mk8y.ShopPayload? next;

  _iym3mk8y.ShopPayloadBase? variant;

  List<Map<String, int>> nested;

  /// Returns a shallow copy of this [ShopPayload]
  /// with some or all fields replaced by the given arguments.
  @override
  @_isc.useResult
  ShopPayload copyWith({
    String? label,
    String? message,
    _iym3mk8y.ShopPayload? next,
    _iym3mk8y.ShopPayloadBase? variant,
    List<Map<String, int>>? nested,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopPayload',
      'label': label,
      'message': message,
      if (next != null) 'next': next?.toJson(),
      if (variant != null) 'variant': variant?.toJson(),
      'nested': nested.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopPayload',
      'label': label,
      'message': message,
      if (next != null) 'next': next?.toJsonForProtocol(),
      if (variant != null) 'variant': variant?.toJsonForProtocol(),
      'nested': nested.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _ShopPayloadImpl extends ShopPayload {
  _ShopPayloadImpl({
    required String label,
    required String message,
    _iym3mk8y.ShopPayload? next,
    _iym3mk8y.ShopPayloadBase? variant,
    required List<Map<String, int>> nested,
  }) : super._(
         label: label,
         message: message,
         next: next,
         variant: variant,
         nested: nested,
       );

  /// Returns a shallow copy of this [ShopPayload]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopPayload copyWith({
    String? label,
    String? message,
    Object? next = _Undefined,
    Object? variant = _Undefined,
    List<Map<String, int>>? nested,
  }) {
    return ShopPayload(
      label: label ?? this.label,
      message: message ?? this.message,
      next: next is _iym3mk8y.ShopPayload? ? next : this.next?.copyWith(),
      variant: variant is _iym3mk8y.ShopPayloadBase?
          ? variant
          : this.variant?.copyWith(),
      nested:
          nested ??
          this.nested
              .map((e0) => e0.map((key1, value1) => MapEntry(key1, value1)))
              .toList(),
    );
  }
}
