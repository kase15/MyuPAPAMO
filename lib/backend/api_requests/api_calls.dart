import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class HomeCall {
  static Future<ApiCallResponse> call({
    double? string,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Home',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/19OJ1h99-cSJSKHX3-ord3_kpH6F5qnBzjdlnGIBapvM/values/A2:BZ33',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyBTCjNDMFcCx5eD1SJBnMb7CRf6BjF_b2M",
        'range': "連携用!A2:BZ33",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class PurcheseCall {
  static Future<ApiCallResponse> call({
    String? string = 'String',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Purchese',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/19OJ1h99-cSJSKHX3-ord3_kpH6F5qnBzjdlnGIBapvM/values/A:BB',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyBTCjNDMFcCx5eD1SJBnMb7CRf6BjF_b2M",
        'range': "仕入れ用!A2:BB",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class InventoryCall {
  static Future<ApiCallResponse> call({
    String? string = 'String',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Inventory',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/19OJ1h99-cSJSKHX3-ord3_kpH6F5qnBzjdlnGIBapvM/values/A:BB',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyBTCjNDMFcCx5eD1SJBnMb7CRf6BjF_b2M",
        'range': "棚卸!A2:BB",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class BudgetCall {
  static Future<ApiCallResponse> call({
    String? string = 'String',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Budget',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/19OJ1h99-cSJSKHX3-ord3_kpH6F5qnBzjdlnGIBapvM/values/A:BB',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyBTCjNDMFcCx5eD1SJBnMb7CRf6BjF_b2M",
        'range': "目標設定!A2:BB",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class NouhinCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'NOUHIN',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/19OJ1h99-cSJSKHX3-ord3_kpH6F5qnBzjdlnGIBapvM/values/A3:Q',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyBTCjNDMFcCx5eD1SJBnMb7CRf6BjF_b2M",
        'range': "納品書管理用!A3:Q",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
