import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<YosanStruct> _month = [
    YosanStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1706713200000\",\"fixedcost\":\"677000\",\"gain\":\"100000\",\"shiire\":\"50\",\"pajinkenhi\":\"20\",\"kyakutanka\":\"5000\",\"change\":\"5\"}')),
    YosanStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1709258160000\",\"fixedcost\":\"0\",\"gain\":\"0\",\"shiire\":\"0\",\"pajinkenhi\":\"0\",\"kyakutanka\":\"0\"}')),
    YosanStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1711936560000\",\"fixedcost\":\"0\",\"gain\":\"0\",\"shiire\":\"0\",\"pajinkenhi\":\"0\",\"kyakutanka\":\"0\"}')),
    YosanStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1714550220000\",\"fixedcost\":\"0\",\"gain\":\"0\",\"shiire\":\"0\",\"pajinkenhi\":\"0\",\"kyakutanka\":\"0\",\"change\":\"0\"}')),
    YosanStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1717228620000\",\"fixedcost\":\"0\",\"gain\":\"0\",\"shiire\":\"0\",\"pajinkenhi\":\"0\",\"kyakutanka\":\"0\",\"change\":\"0\"}')),
    YosanStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1719820680000\",\"fixedcost\":\"0\",\"gain\":\"0\",\"shiire\":\"0\",\"pajinkenhi\":\"0\",\"kyakutanka\":\"0\",\"change\":\"0\"}'))
  ];
  List<YosanStruct> get month => _month;
  set month(List<YosanStruct> value) {
    _month = value;
  }

  void addToMonth(YosanStruct value) {
    month.add(value);
  }

  void removeFromMonth(YosanStruct value) {
    month.remove(value);
  }

  void removeAtIndexFromMonth(int index) {
    month.removeAt(index);
  }

  void updateMonthAtIndex(
    int index,
    YosanStruct Function(YosanStruct) updateFn,
  ) {
    month[index] = updateFn(_month[index]);
  }

  void insertAtIndexInMonth(int index, YosanStruct value) {
    month.insert(index, value);
  }

  List<FixedcostStruct> _fixedcosts = [
    FixedcostStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"cost\":\"0\",\"costpercent\":\"0\"}'))
  ];
  List<FixedcostStruct> get fixedcosts => _fixedcosts;
  set fixedcosts(List<FixedcostStruct> value) {
    _fixedcosts = value;
  }

  void addToFixedcosts(FixedcostStruct value) {
    fixedcosts.add(value);
  }

  void removeFromFixedcosts(FixedcostStruct value) {
    fixedcosts.remove(value);
  }

  void removeAtIndexFromFixedcosts(int index) {
    fixedcosts.removeAt(index);
  }

  void updateFixedcostsAtIndex(
    int index,
    FixedcostStruct Function(FixedcostStruct) updateFn,
  ) {
    fixedcosts[index] = updateFn(_fixedcosts[index]);
  }

  void insertAtIndexInFixedcosts(int index, FixedcostStruct value) {
    fixedcosts.insert(index, value);
  }

  List<DeliverySlipStruct> _deliveryslip = [
    DeliverySlipStruct.fromSerializableMap(
        jsonDecode('{\"shopname\":\"夏目ホルモン\",\"price\":\"500\"}')),
    DeliverySlipStruct.fromSerializableMap(
        jsonDecode('{\"shopname\":\"夏目ホルモン\",\"price\":\"700\"}')),
    DeliverySlipStruct.fromSerializableMap(
        jsonDecode('{\"shopname\":\"八百屋\",\"price\":\"200\"}'))
  ];
  List<DeliverySlipStruct> get deliveryslip => _deliveryslip;
  set deliveryslip(List<DeliverySlipStruct> value) {
    _deliveryslip = value;
  }

  void addToDeliveryslip(DeliverySlipStruct value) {
    deliveryslip.add(value);
  }

  void removeFromDeliveryslip(DeliverySlipStruct value) {
    deliveryslip.remove(value);
  }

  void removeAtIndexFromDeliveryslip(int index) {
    deliveryslip.removeAt(index);
  }

  void updateDeliveryslipAtIndex(
    int index,
    DeliverySlipStruct Function(DeliverySlipStruct) updateFn,
  ) {
    deliveryslip[index] = updateFn(_deliveryslip[index]);
  }

  void insertAtIndexInDeliveryslip(int index, DeliverySlipStruct value) {
    deliveryslip.insert(index, value);
  }
}
