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
import '../protocol.dart' as _iv35mfmj;
import 'payload_base.dart' as _iym3mk8y;
part 'payload.dart';

sealed class ShopPayloadBase
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopPayloadBase({required this.label});

  String label;

  /// Returns a shallow copy of this [ShopPayloadBase]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopPayloadBase copyWith({String? label});
}

class _Undefined {}
