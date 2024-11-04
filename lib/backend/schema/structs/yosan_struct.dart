// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class YosanStruct extends FFFirebaseStruct {
  YosanStruct({
    DateTime? date,
    double? gain,
    double? shiire,
    double? pajinkenhi,
    double? kyakutanka,
    double? fixedcost,
    double? change,
    List<FixedcostStruct>? fixedcosts,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _gain = gain,
        _shiire = shiire,
        _pajinkenhi = pajinkenhi,
        _kyakutanka = kyakutanka,
        _fixedcost = fixedcost,
        _change = change,
        _fixedcosts = fixedcosts,
        super(firestoreUtilData);

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "gain" field.
  double? _gain;
  double get gain => _gain ?? 0.0;
  set gain(double? val) => _gain = val;

  void incrementGain(double amount) => gain = gain + amount;

  bool hasGain() => _gain != null;

  // "shiire" field.
  double? _shiire;
  double get shiire => _shiire ?? 0.0;
  set shiire(double? val) => _shiire = val;

  void incrementShiire(double amount) => shiire = shiire + amount;

  bool hasShiire() => _shiire != null;

  // "pajinkenhi" field.
  double? _pajinkenhi;
  double get pajinkenhi => _pajinkenhi ?? 0.0;
  set pajinkenhi(double? val) => _pajinkenhi = val;

  void incrementPajinkenhi(double amount) => pajinkenhi = pajinkenhi + amount;

  bool hasPajinkenhi() => _pajinkenhi != null;

  // "kyakutanka" field.
  double? _kyakutanka;
  double get kyakutanka => _kyakutanka ?? 0.0;
  set kyakutanka(double? val) => _kyakutanka = val;

  void incrementKyakutanka(double amount) => kyakutanka = kyakutanka + amount;

  bool hasKyakutanka() => _kyakutanka != null;

  // "fixedcost" field.
  double? _fixedcost;
  double get fixedcost => _fixedcost ?? 0.0;
  set fixedcost(double? val) => _fixedcost = val;

  void incrementFixedcost(double amount) => fixedcost = fixedcost + amount;

  bool hasFixedcost() => _fixedcost != null;

  // "change" field.
  double? _change;
  double get change => _change ?? 0.0;
  set change(double? val) => _change = val;

  void incrementChange(double amount) => change = change + amount;

  bool hasChange() => _change != null;

  // "fixedcosts" field.
  List<FixedcostStruct>? _fixedcosts;
  List<FixedcostStruct> get fixedcosts => _fixedcosts ?? const [];
  set fixedcosts(List<FixedcostStruct>? val) => _fixedcosts = val;

  void updateFixedcosts(Function(List<FixedcostStruct>) updateFn) {
    updateFn(_fixedcosts ??= []);
  }

  bool hasFixedcosts() => _fixedcosts != null;

  static YosanStruct fromMap(Map<String, dynamic> data) => YosanStruct(
        date: data['date'] as DateTime?,
        gain: castToType<double>(data['gain']),
        shiire: castToType<double>(data['shiire']),
        pajinkenhi: castToType<double>(data['pajinkenhi']),
        kyakutanka: castToType<double>(data['kyakutanka']),
        fixedcost: castToType<double>(data['fixedcost']),
        change: castToType<double>(data['change']),
        fixedcosts: getStructList(
          data['fixedcosts'],
          FixedcostStruct.fromMap,
        ),
      );

  static YosanStruct? maybeFromMap(dynamic data) =>
      data is Map ? YosanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'gain': _gain,
        'shiire': _shiire,
        'pajinkenhi': _pajinkenhi,
        'kyakutanka': _kyakutanka,
        'fixedcost': _fixedcost,
        'change': _change,
        'fixedcosts': _fixedcosts?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'gain': serializeParam(
          _gain,
          ParamType.double,
        ),
        'shiire': serializeParam(
          _shiire,
          ParamType.double,
        ),
        'pajinkenhi': serializeParam(
          _pajinkenhi,
          ParamType.double,
        ),
        'kyakutanka': serializeParam(
          _kyakutanka,
          ParamType.double,
        ),
        'fixedcost': serializeParam(
          _fixedcost,
          ParamType.double,
        ),
        'change': serializeParam(
          _change,
          ParamType.double,
        ),
        'fixedcosts': serializeParam(
          _fixedcosts,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static YosanStruct fromSerializableMap(Map<String, dynamic> data) =>
      YosanStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        gain: deserializeParam(
          data['gain'],
          ParamType.double,
          false,
        ),
        shiire: deserializeParam(
          data['shiire'],
          ParamType.double,
          false,
        ),
        pajinkenhi: deserializeParam(
          data['pajinkenhi'],
          ParamType.double,
          false,
        ),
        kyakutanka: deserializeParam(
          data['kyakutanka'],
          ParamType.double,
          false,
        ),
        fixedcost: deserializeParam(
          data['fixedcost'],
          ParamType.double,
          false,
        ),
        change: deserializeParam(
          data['change'],
          ParamType.double,
          false,
        ),
        fixedcosts: deserializeStructParam<FixedcostStruct>(
          data['fixedcosts'],
          ParamType.DataStruct,
          true,
          structBuilder: FixedcostStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'YosanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is YosanStruct &&
        date == other.date &&
        gain == other.gain &&
        shiire == other.shiire &&
        pajinkenhi == other.pajinkenhi &&
        kyakutanka == other.kyakutanka &&
        fixedcost == other.fixedcost &&
        change == other.change &&
        listEquality.equals(fixedcosts, other.fixedcosts);
  }

  @override
  int get hashCode => const ListEquality().hash([
        date,
        gain,
        shiire,
        pajinkenhi,
        kyakutanka,
        fixedcost,
        change,
        fixedcosts
      ]);
}

YosanStruct createYosanStruct({
  DateTime? date,
  double? gain,
  double? shiire,
  double? pajinkenhi,
  double? kyakutanka,
  double? fixedcost,
  double? change,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    YosanStruct(
      date: date,
      gain: gain,
      shiire: shiire,
      pajinkenhi: pajinkenhi,
      kyakutanka: kyakutanka,
      fixedcost: fixedcost,
      change: change,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

YosanStruct? updateYosanStruct(
  YosanStruct? yosan, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    yosan
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addYosanStructData(
  Map<String, dynamic> firestoreData,
  YosanStruct? yosan,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (yosan == null) {
    return;
  }
  if (yosan.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && yosan.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final yosanData = getYosanFirestoreData(yosan, forFieldValue);
  final nestedData = yosanData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = yosan.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getYosanFirestoreData(
  YosanStruct? yosan, [
  bool forFieldValue = false,
]) {
  if (yosan == null) {
    return {};
  }
  final firestoreData = mapToFirestore(yosan.toMap());

  // Add any Firestore field values
  yosan.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getYosanListFirestoreData(
  List<YosanStruct>? yosans,
) =>
    yosans?.map((e) => getYosanFirestoreData(e, true)).toList() ?? [];
