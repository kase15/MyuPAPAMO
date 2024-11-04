// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FixedcostStruct extends FFFirebaseStruct {
  FixedcostStruct({
    String? name,
    double? cost,
    double? costpercent,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _cost = cost,
        _costpercent = costpercent,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  set cost(double? val) => _cost = val;

  void incrementCost(double amount) => cost = cost + amount;

  bool hasCost() => _cost != null;

  // "costpercent" field.
  double? _costpercent;
  double get costpercent => _costpercent ?? 0.0;
  set costpercent(double? val) => _costpercent = val;

  void incrementCostpercent(double amount) =>
      costpercent = costpercent + amount;

  bool hasCostpercent() => _costpercent != null;

  static FixedcostStruct fromMap(Map<String, dynamic> data) => FixedcostStruct(
        name: data['name'] as String?,
        cost: castToType<double>(data['cost']),
        costpercent: castToType<double>(data['costpercent']),
      );

  static FixedcostStruct? maybeFromMap(dynamic data) => data is Map
      ? FixedcostStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'cost': _cost,
        'costpercent': _costpercent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'cost': serializeParam(
          _cost,
          ParamType.double,
        ),
        'costpercent': serializeParam(
          _costpercent,
          ParamType.double,
        ),
      }.withoutNulls;

  static FixedcostStruct fromSerializableMap(Map<String, dynamic> data) =>
      FixedcostStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        cost: deserializeParam(
          data['cost'],
          ParamType.double,
          false,
        ),
        costpercent: deserializeParam(
          data['costpercent'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FixedcostStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FixedcostStruct &&
        name == other.name &&
        cost == other.cost &&
        costpercent == other.costpercent;
  }

  @override
  int get hashCode => const ListEquality().hash([name, cost, costpercent]);
}

FixedcostStruct createFixedcostStruct({
  String? name,
  double? cost,
  double? costpercent,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FixedcostStruct(
      name: name,
      cost: cost,
      costpercent: costpercent,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FixedcostStruct? updateFixedcostStruct(
  FixedcostStruct? fixedcost, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fixedcost
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFixedcostStructData(
  Map<String, dynamic> firestoreData,
  FixedcostStruct? fixedcost,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fixedcost == null) {
    return;
  }
  if (fixedcost.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fixedcost.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fixedcostData = getFixedcostFirestoreData(fixedcost, forFieldValue);
  final nestedData = fixedcostData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fixedcost.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFixedcostFirestoreData(
  FixedcostStruct? fixedcost, [
  bool forFieldValue = false,
]) {
  if (fixedcost == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fixedcost.toMap());

  // Add any Firestore field values
  fixedcost.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFixedcostListFirestoreData(
  List<FixedcostStruct>? fixedcosts,
) =>
    fixedcosts?.map((e) => getFixedcostFirestoreData(e, true)).toList() ?? [];
