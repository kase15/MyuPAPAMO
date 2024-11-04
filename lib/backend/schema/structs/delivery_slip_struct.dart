// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DeliverySlipStruct extends FFFirebaseStruct {
  DeliverySlipStruct({
    String? shopname,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _shopname = shopname,
        _price = price,
        super(firestoreUtilData);

  // "shopname" field.
  String? _shopname;
  String get shopname => _shopname ?? '';
  set shopname(String? val) => _shopname = val;

  bool hasShopname() => _shopname != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static DeliverySlipStruct fromMap(Map<String, dynamic> data) =>
      DeliverySlipStruct(
        shopname: data['shopname'] as String?,
        price: castToType<double>(data['price']),
      );

  static DeliverySlipStruct? maybeFromMap(dynamic data) => data is Map
      ? DeliverySlipStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'shopname': _shopname,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'shopname': serializeParam(
          _shopname,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static DeliverySlipStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeliverySlipStruct(
        shopname: deserializeParam(
          data['shopname'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DeliverySlipStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeliverySlipStruct &&
        shopname == other.shopname &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([shopname, price]);
}

DeliverySlipStruct createDeliverySlipStruct({
  String? shopname,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeliverySlipStruct(
      shopname: shopname,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeliverySlipStruct? updateDeliverySlipStruct(
  DeliverySlipStruct? deliverySlip, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    deliverySlip
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeliverySlipStructData(
  Map<String, dynamic> firestoreData,
  DeliverySlipStruct? deliverySlip,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (deliverySlip == null) {
    return;
  }
  if (deliverySlip.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && deliverySlip.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deliverySlipData =
      getDeliverySlipFirestoreData(deliverySlip, forFieldValue);
  final nestedData =
      deliverySlipData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = deliverySlip.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeliverySlipFirestoreData(
  DeliverySlipStruct? deliverySlip, [
  bool forFieldValue = false,
]) {
  if (deliverySlip == null) {
    return {};
  }
  final firestoreData = mapToFirestore(deliverySlip.toMap());

  // Add any Firestore field values
  deliverySlip.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeliverySlipListFirestoreData(
  List<DeliverySlipStruct>? deliverySlips,
) =>
    deliverySlips?.map((e) => getDeliverySlipFirestoreData(e, true)).toList() ??
    [];
