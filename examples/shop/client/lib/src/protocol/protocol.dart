/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_type_check

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'customer.dart' as _id4xn1l3;
import 'order.dart' as _ir1ryoer;
import 'order_item.dart' as _imuez7sb;
import 'product.dart' as _i8ctgxfn;
export 'customer.dart';
export 'order.dart';
export 'order_item.dart';
export 'product.dart';
export 'client.dart';

class Protocol extends _isc.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(dynamic data, [Type? t]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on _isc.DeserializationClassNameNotFoundException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _id4xn1l3.Customer) {
      return _id4xn1l3.Customer.fromJson(data) as T;
    }
    if (t == _ir1ryoer.Order) {
      return _ir1ryoer.Order.fromJson(data) as T;
    }
    if (t == _imuez7sb.OrderItem) {
      return _imuez7sb.OrderItem.fromJson(data) as T;
    }
    if (t == _i8ctgxfn.Product) {
      return _i8ctgxfn.Product.fromJson(data) as T;
    }
    if (t == _isc.getType<_id4xn1l3.Customer?>()) {
      return (data != null ? _id4xn1l3.Customer.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ir1ryoer.Order?>()) {
      return (data != null ? _ir1ryoer.Order.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_imuez7sb.OrderItem?>()) {
      return (data != null ? _imuez7sb.OrderItem.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i8ctgxfn.Product?>()) {
      return (data != null ? _i8ctgxfn.Product.fromJson(data) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _id4xn1l3.Customer => 'Customer',
      _ir1ryoer.Order => 'Order',
      _imuez7sb.OrderItem => 'OrderItem',
      _i8ctgxfn.Product => 'Product',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('shop.', '');
    }

    switch (data) {
      case _id4xn1l3.Customer():
        return 'Customer';
      case _ir1ryoer.Order():
        return 'Order';
      case _imuez7sb.OrderItem():
        return 'OrderItem';
      case _i8ctgxfn.Product():
        return 'Product';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Customer') {
      return deserialize<_id4xn1l3.Customer>(data['data']);
    }
    if (dataClassName == 'Order') {
      return deserialize<_ir1ryoer.Order>(data['data']);
    }
    if (dataClassName == 'OrderItem') {
      return deserialize<_imuez7sb.OrderItem>(data['data']);
    }
    if (dataClassName == 'Product') {
      return deserialize<_i8ctgxfn.Product>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  String getModuleName() => 'shop';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
