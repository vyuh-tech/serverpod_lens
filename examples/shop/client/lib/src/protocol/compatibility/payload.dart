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
import 'package:shop_client/src/protocol/protocol.dart' as _id88xlko;

abstract class ShopPayload
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopPayload._({required this.message, required this.nested});

  factory ShopPayload({
    required String message,
    required List<Map<String, int>> nested,
  }) = _ShopPayloadImpl;

  factory ShopPayload.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopPayload(
      message: jsonSerialization['message'] as String,
      nested: _id88xlko.Protocol().deserialize<List<Map<String, int>>>(
        jsonSerialization['nested'],
      ),
    );
  }

  String message;

  List<Map<String, int>> nested;

  /// Returns a shallow copy of this [ShopPayload]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopPayload copyWith({String? message, List<Map<String, int>>? nested});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopPayload',
      'message': message,
      'nested': nested.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopPayload',
      'message': message,
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
    required String message,
    required List<Map<String, int>> nested,
  }) : super._(message: message, nested: nested);

  /// Returns a shallow copy of this [ShopPayload]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopPayload copyWith({String? message, List<Map<String, int>>? nested}) {
    return ShopPayload(
      message: message ?? this.message,
      nested:
          nested ??
          this.nested
              .map((e0) => e0.map((key1, value1) => MapEntry(key1, value1)))
              .toList(),
    );
  }
}
