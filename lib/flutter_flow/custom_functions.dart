import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';

Color? colorBlueorRed(dynamic value) {
  // valueがnullでないこと、かつ数値もしくは数値文字列であることを確認する
  if (value != null && (value is num || num.tryParse(value) != null)) {
    // 数値に変換してから比較
    final numericValue = num.tryParse(value);
    if (numericValue != null && numericValue >= 0) {
      return Colors.blue;
    }
  }

  // 条件に合致しない場合は赤を返す
  return Colors.red;
}

double? earning(
  String? price,
  String? customer,
) {
  // change price and price to double and multiple price to customer
  double? earning = double.tryParse(price ?? '') ?? 0.0;
  double? customerPrice = double.tryParse(customer ?? '') ?? 0.0;
  return earning * customerPrice;
}

double? variable(
  String? percent,
  String? price,
) {
  // change percent to double then divide with 100
  try {
    final double percentDouble = double.parse(percent ?? '0');
    final double priceDouble = double.parse(price ?? '0');
    return priceDouble * percentDouble / 100;
  } catch (e) {
    print('文字列をdoubleに変換中にエラーが発生しました： $e');
    return null;
  }
}

double? marginrate(String? percent) {
  // change percent to double and subtract from 100
  try {
    final double percentDouble = double.parse(percent ?? '0');
    return 100 - percentDouble;
  } catch (e) {
    print('文字列をdoubleに変換中にエラーが発生しました： $e');
    return null;
  }
}

Color? colorBlueorRedHendouhi(dynamic value) {
  // valueがnullでないこと、かつ数値もしくは数値文字列であることを確認する
  if (value != null && (value is num || num.tryParse(value) != null)) {
    // 数値に変換してから比較
    final numericValue = num.tryParse(value);
    if (numericValue != null && numericValue >= 0) {
      return Colors.red;
    }
  }

  // 条件に合致しない場合は青を返す
  return Colors.blue;
}

double? margin(
  double? marginrate,
  String? price,
) {
  // change price to double, divide marginrate with 100, then multiple marginrate to price
  if (marginrate == null || price == null) {
    return null;
  }
  double parsedPrice = double.tryParse(price) ?? 0.0;
  double parsedMarginRate = marginrate / 100;
  return parsedPrice * parsedMarginRate;
}

double? variablecosts(
  double? variable,
  String? customer,
) {
  // change customer to double then multiple that customer double to variable
  if (customer != null) {
    double customerDouble = double.tryParse(customer) ?? 0.0;
    return variable != null ? variable * customerDouble : null;
  }
  return null;
}

double? margincosts(
  double? margin,
  String? customer,
) {
  // change customer to double then multiple customer double to margin
  if (margin == null || customer == null) {
    return null;
  }
  double customerDouble = double.tryParse(customer) ?? 0.0;
  return margin * customerDouble;
}

double? gain(
  double? margincosts,
  String? fixedcost,
) {
  // change fixedcost to double then substract fixedcost double with margincosts
  final double fixedCost = double.tryParse(fixedcost ?? '') ?? 0.0;
  return margincosts != null ? margincosts - fixedCost : null;
}

double? margincostforbudget(
  String? gain,
  YosanStruct? aaaaa,
) {
  // change gain to double then get data from data type with the name fixedcost then add gain and aaaaa
  double? gainDouble = double.tryParse(gain ?? '');
  double? fixedCost = aaaaa?.fixedcost;
  if (gainDouble != null && fixedCost != null) {
    return gainDouble + fixedCost;
  } else {
    return null;
  }
}

double? changetext(String? text) {
  // change text to double
  try {
    return double.parse(text ?? '');
  } catch (e) {
    return null;
  }
}

double? changetodouble(dynamic jsonn) {
  // change jsonn to double
  if (jsonn is int) {
    return jsonn.toDouble();
  } else if (jsonn is double) {
    return jsonn;
  } else {
    return null;
  }
}

String? removeconma(dynamic kan) {
  // remove comma from kan
  if (kan is String) {
    return kan.replaceAll(',', '');
  } else {
    return null;
  }
}

dynamic deletedata(dynamic purchese) {
// remove duplicate data in JSON
  // Assuming the input JSON is a List of Maps
  List<Map<String, dynamic>> purchases =
      List<Map<String, dynamic>>.from(purchese);

  // Create a Set to keep track of unique purchases
  Set<String> uniquePurchases = {};

  // Filter out duplicate purchases
  List<Map<String, dynamic>> filteredPurchases = purchases.where((purchase) {
    String purchaseId = purchase['id'];
    if (uniquePurchases.contains(purchaseId)) {
      return false;
    } else {
      uniquePurchases.add(purchaseId);
      return true;
    }
  }).toList();

  // Return the filtered purchases as JSON
  return json.encode(filteredPurchases);
}

Color? clearcolo(Color? color) {
  // clear barrier color
  if (color == null) {
    return null;
  }
  return color.withOpacity(0.0);
}
