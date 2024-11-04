import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'ABC',
          path: '/abc',
          builder: (context, params) => const AbcWidget(),
        ),
        FFRoute(
          name: 'Menu',
          path: '/menu',
          builder: (context, params) => const MenuWidget(),
        ),
        FFRoute(
          name: 'Time',
          path: '/time',
          builder: (context, params) => const TimeWidget(),
        ),
        FFRoute(
          name: 'WeekoftheDay',
          path: '/weekoftheDay',
          builder: (context, params) => const WeekoftheDayWidget(),
        ),
        FFRoute(
          name: 'Payment',
          path: '/payment',
          builder: (context, params) => const PaymentWidget(),
        ),
        FFRoute(
          name: 'WherePurchese',
          path: '/wherePurchese',
          builder: (context, params) => const WherePurcheseWidget(),
        ),
        FFRoute(
          name: 'MenuPurchese',
          path: '/menuPurchese',
          builder: (context, params) => const MenuPurcheseWidget(),
        ),
        FFRoute(
          name: 'Label',
          path: '/label',
          builder: (context, params) => const LabelWidget(),
        ),
        FFRoute(
          name: 'UnitPrice',
          path: '/unitPrice',
          builder: (context, params) => const UnitPriceWidget(),
        ),
        FFRoute(
          name: 'LogIn',
          path: '/logIn',
          builder: (context, params) => const LogInWidget(),
        ),
        FFRoute(
          name: 'Kando',
          path: '/kando',
          builder: (context, params) => const KandoWidget(),
        ),
        FFRoute(
          name: 'Syousai',
          path: '/syousai',
          builder: (context, params) => const SyousaiWidget(),
        ),
        FFRoute(
          name: 'TotaloftheMonth',
          path: '/totaloftheMonth',
          builder: (context, params) => const TotaloftheMonthWidget(),
        ),
        FFRoute(
          name: 'Dailyreport',
          path: '/dailyreport',
          builder: (context, params) => const DailyreportWidget(),
        ),
        FFRoute(
          name: 'Orde',
          path: '/orde',
          builder: (context, params) => const OrdeWidget(),
        ),
        FFRoute(
          name: 'AboutTheStore',
          path: '/aboutTheStore',
          builder: (context, params) => const AboutTheStoreWidget(),
        ),
        FFRoute(
          name: 'Conect',
          path: '/conect',
          builder: (context, params) => const ConectWidget(),
        ),
        FFRoute(
          name: 'FixedCost',
          path: '/fixedCost',
          builder: (context, params) => const FixedCostWidget(),
        ),
        FFRoute(
          name: 'ClosedDay',
          path: '/closedDay',
          builder: (context, params) => const ClosedDayWidget(),
        ),
        FFRoute(
          name: 'User',
          path: '/user',
          builder: (context, params) => const UserWidget(),
        ),
        FFRoute(
          name: 'UserADD',
          path: '/userADD',
          builder: (context, params) => const UserADDWidget(),
        ),
        FFRoute(
          name: 'UserDetail',
          path: '/userDetail',
          builder: (context, params) => const UserDetailWidget(),
        ),
        FFRoute(
          name: 'OrderPlace',
          path: '/orderPlace',
          builder: (context, params) => const OrderPlaceWidget(),
        ),
        FFRoute(
          name: 'OrderPlaceADD',
          path: '/orderPlaceADD',
          builder: (context, params) => const OrderPlaceADDWidget(),
        ),
        FFRoute(
          name: 'deliveryslip',
          path: '/deliveryslip',
          builder: (context, params) => const DeliveryslipWidget(),
        ),
        FFRoute(
          name: 'DeliveryslipDetail',
          path: '/deliveryslipDetail',
          builder: (context, params) => DeliveryslipDetailWidget(
            nouhin: params.getParam(
              'nouhin',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            shop: params.getParam(
              'shop',
              ParamType.String,
            ),
            store: params.getParam(
              'store',
              ParamType.String,
            ),
            state: params.getParam(
              'state',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'inventory',
          path: '/inventory',
          builder: (context, params) => const InventoryWidget(),
        ),
        FFRoute(
          name: 'inventoryDetail',
          path: '/inventoryDetail',
          builder: (context, params) => InventoryDetailWidget(
            date: params.getParam(
              'date',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'Account',
          path: '/account',
          builder: (context, params) => const AccountWidget(),
        ),
        FFRoute(
          name: 'BUDget',
          path: '/bUDget',
          builder: (context, params) => const BUDgetWidget(),
        ),
        FFRoute(
          name: 'BUdgetSettings0',
          path: '/bUdgetSettings0',
          builder: (context, params) => BUdgetSettings0Widget(
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'BUdgetSettings1',
          path: '/bUdgetSettings1',
          builder: (context, params) => BUdgetSettings1Widget(
            fixed: params.getParam(
              'fixed',
              ParamType.double,
            ),
            changingvariable: params.getParam(
              'changingvariable',
              ParamType.double,
            ),
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'BUdgetSettings2',
          path: '/bUdgetSettings2',
          builder: (context, params) => BUdgetSettings2Widget(
            change: params.getParam(
              'change',
              ParamType.double,
            ),
            fixedcost: params.getParam(
              'fixedcost',
              ParamType.double,
            ),
            gain: params.getParam(
              'gain',
              ParamType.double,
            ),
            marginqty: params.getParam(
              'marginqty',
              ParamType.double,
            ),
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'BUdgetSettings3',
          path: '/bUdgetSettings3',
          builder: (context, params) => BUdgetSettings3Widget(
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
            fixedcost: params.getParam(
              'fixedcost',
              ParamType.double,
            ),
            change: params.getParam(
              'change',
              ParamType.double,
            ),
            gain: params.getParam(
              'gain',
              ParamType.double,
            ),
            shiire: params.getParam(
              'shiire',
              ParamType.double,
            ),
            jinkenhi: params.getParam(
              'jinkenhi',
              ParamType.double,
            ),
            marginqty: params.getParam(
              'marginqty',
              ParamType.double,
            ),
            priceqty: params.getParam(
              'priceqty',
              ParamType.double,
            ),
            marginrate: params.getParam(
              'marginrate',
              ParamType.double,
            ),
            variableqty: params.getParam(
              'variableqty',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'BUdgetSettingsAFter',
          path: '/bUdgetSettingsAFter',
          builder: (context, params) => BUdgetSettingsAFterWidget(
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
            gain: params.getParam(
              'gain',
              ParamType.double,
            ),
            shiirehi: params.getParam(
              'shiirehi',
              ParamType.double,
            ),
            pajinkenhi: params.getParam(
              'pajinkenhi',
              ParamType.double,
            ),
            kyakutanka: params.getParam(
              'kyakutanka',
              ParamType.double,
            ),
            fixedcost: params.getParam(
              'fixedcost',
              ParamType.double,
            ),
            changingvariable: params.getParam(
              'changingvariable',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'MonthlyReports',
          path: '/monthlyReports',
          builder: (context, params) => const MonthlyReportsWidget(),
        ),
        FFRoute(
          name: 'BUdgetSettings4',
          path: '/bUdgetSettings4',
          builder: (context, params) => BUdgetSettings4Widget(
            date: params.getParam(
              'date',
              ParamType.DateTime,
            ),
            fixedcost: params.getParam(
              'fixedcost',
              ParamType.double,
            ),
            change: params.getParam(
              'change',
              ParamType.double,
            ),
            gain: params.getParam(
              'gain',
              ParamType.double,
            ),
            shiire: params.getParam(
              'shiire',
              ParamType.double,
            ),
            jinkenhi: params.getParam(
              'jinkenhi',
              ParamType.double,
            ),
            marginqty: params.getParam(
              'marginqty',
              ParamType.double,
            ),
            priceqty: params.getParam(
              'priceqty',
              ParamType.double,
            ),
            marginrate: params.getParam(
              'marginrate',
              ParamType.double,
            ),
            variableqty: params.getParam(
              'variableqty',
              ParamType.double,
            ),
            kyakutanka: params.getParam(
              'kyakutanka',
              ParamType.double,
            ),
            kyakusu: params.getParam(
              'kyakusu',
              ParamType.double,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
