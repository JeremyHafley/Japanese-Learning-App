import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const OnboardingScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const NavBarPage()
              : const OnboardingScreenWidget(),
        ),
        FFRoute(
          name: 'TitleScreen',
          path: '/titleScreen',
          builder: (context, params) => const TitleScreenWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'OnboardingScreen',
          path: '/onboardingScreen',
          builder: (context, params) => const OnboardingScreenWidget(),
        ),
        FFRoute(
          name: 'LoginScreen',
          path: '/loginScreen',
          builder: (context, params) => const LoginScreenWidget(),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => const CreateAccountWidget(),
        ),
        FFRoute(
          name: 'CreateProfile',
          path: '/createProfile',
          builder: (context, params) => const CreateProfileWidget(),
        ),
        FFRoute(
          name: 'CreateLanguage',
          path: '/createLanguage',
          builder: (context, params) => const CreateLanguageWidget(),
        ),
        FFRoute(
          name: 'ChooseGoal',
          path: '/chooseGoal',
          builder: (context, params) => const ChooseGoalWidget(),
        ),
        FFRoute(
          name: 'ChooseLevel',
          path: '/chooseLevel',
          builder: (context, params) => const ChooseLevelWidget(),
        ),
        FFRoute(
          name: 'PrepareCourse',
          path: '/prepareCourse',
          builder: (context, params) => const PrepareCourseWidget(),
        ),
        FFRoute(
          name: 'TryPremium',
          path: '/tryPremium',
          builder: (context, params) => const TryPremiumWidget(),
        ),
        FFRoute(
          name: 'ChooseDailyGoal',
          path: '/chooseDailyGoal',
          builder: (context, params) => const ChooseDailyGoalWidget(),
        ),
        FFRoute(
          name: 'MakeTest',
          path: '/makeTest',
          builder: (context, params) => const MakeTestWidget(),
        ),
        FFRoute(
          name: 'StartScreen',
          path: '/startScreen',
          builder: (context, params) => const StartScreenWidget(),
        ),
        FFRoute(
          name: 'Dashboard',
          path: '/dashboard',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Dashboard')
              : const DashboardWidget(),
        ),
        FFRoute(
          name: 'SelectChapter',
          path: '/selectChapter',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'SelectChapter')
              : const SelectChapterWidget(),
        ),
        FFRoute(
          name: 'InsideOfChapter',
          path: '/insideOfChapter',
          builder: (context, params) => const InsideOfChapterWidget(),
        ),
        FFRoute(
          name: 'Flaskcard',
          path: '/flaskcard',
          builder: (context, params) => const FlaskcardWidget(),
        ),
        FFRoute(
          name: 'page21',
          path: '/page21',
          builder: (context, params) => const Page21Widget(),
        ),
        FFRoute(
          name: 'page24',
          path: '/page24',
          builder: (context, params) => const Page24Widget(),
        ),
        FFRoute(
          name: 'Feedback',
          path: '/feedback',
          builder: (context, params) => const FeedbackWidget(),
        ),
        FFRoute(
          name: 'TransitioningScreen',
          path: '/transitioningScreen',
          builder: (context, params) => const TransitioningScreenWidget(),
        ),
        FFRoute(
          name: 'page28',
          path: '/page28',
          builder: (context, params) => const Page28Widget(),
        ),
        FFRoute(
          name: 'page30',
          path: '/page30',
          builder: (context, params) => const Page30Widget(),
        ),
        FFRoute(
          name: 'page31',
          path: '/page31',
          builder: (context, params) => const Page31Widget(),
        ),
        FFRoute(
          name: 'review',
          path: '/review',
          builder: (context, params) => const ReviewWidget(),
        ),
        FFRoute(
          name: 'ProfileScreen',
          path: '/profileScreen',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'ProfileScreen')
              : const ProfileScreenWidget(),
        ),
        FFRoute(
          name: 'ChangeProfile',
          path: '/changeProfile',
          builder: (context, params) => const ChangeProfileWidget(),
        ),
        FFRoute(
          name: 'Achievements',
          path: '/achievements',
          builder: (context, params) => const AchievementsWidget(),
        ),
        FFRoute(
          name: 'chooseGame',
          path: '/chooseGame',
          builder: (context, params) => const ChooseGameWidget(),
        ),
        FFRoute(
          name: 'page36',
          path: '/page36',
          builder: (context, params) => const Page36Widget(),
        ),
        FFRoute(
          name: 'SelectMission',
          path: '/selectMission',
          builder: (context, params) => const SelectMissionWidget(),
        ),
        FFRoute(
          name: 'Journals',
          path: '/journals',
          builder: (context, params) => const JournalsWidget(),
        ),
        FFRoute(
          name: 'ChooseVocabulary',
          path: '/chooseVocabulary',
          builder: (context, params) => const ChooseVocabularyWidget(),
        ),
        FFRoute(
          name: 'ChoosePhrases',
          path: '/choosePhrases',
          builder: (context, params) => const ChoosePhrasesWidget(),
        ),
        FFRoute(
          name: 'ChooseWords_noNeed',
          path: '/chooseWordsNoNeed',
          builder: (context, params) => const ChooseWordsNoNeedWidget(),
        ),
        FFRoute(
          name: 'Store',
          path: '/store',
          builder: (context, params) => const StoreWidget(),
        ),
        FFRoute(
          name: 'NoADs',
          path: '/noADs',
          builder: (context, params) => const NoADsWidget(),
        ),
        FFRoute(
          name: 'Done',
          path: '/done',
          builder: (context, params) => const DoneWidget(),
        ),
        FFRoute(
          name: 'page54',
          path: '/page54',
          builder: (context, params) => const Page54Widget(),
        ),
        FFRoute(
          name: 'page55',
          path: '/page55',
          builder: (context, params) => const Page55Widget(),
        ),
        FFRoute(
          name: 'page57',
          path: '/page57',
          builder: (context, params) => const Page57Widget(),
        ),
        FFRoute(
          name: 'page59',
          path: '/page59',
          builder: (context, params) => const Page59Widget(),
        ),
        FFRoute(
          name: 'page27',
          path: '/page27',
          builder: (context, params) => const Page27Widget(),
        ),
        FFRoute(
          name: 'page29',
          path: '/page29',
          builder: (context, params) => const Page29Widget(),
        ),
        FFRoute(
          name: 'EssentialTalk',
          path: '/essentialTalk',
          builder: (context, params) => const EssentialTalkWidget(),
        ),
        FFRoute(
          name: 'Show',
          path: '/show',
          builder: (context, params) => const ShowWidget(),
        ),
        FFRoute(
          name: 'ShowAnswer',
          path: '/showAnswer',
          builder: (context, params) => const ShowAnswerWidget(),
        ),
        FFRoute(
          name: 'Store_noNeed',
          path: '/storeNoNeed',
          builder: (context, params) => const StoreNoNeedWidget(),
        ),
        FFRoute(
          name: 'page58',
          path: '/page58',
          builder: (context, params) => const Page58Widget(),
        ),
        FFRoute(
          name: 'page61',
          path: '/page61',
          builder: (context, params) => const Page61Widget(),
        ),
        FFRoute(
          name: 'page63avator',
          path: '/page63avator',
          builder: (context, params) => const Page63avatorWidget(),
        ),
        FFRoute(
          name: 'LoginAccount',
          path: '/loginAccount',
          builder: (context, params) => const LoginAccountWidget(),
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
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

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

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboardingScreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.scaleDown,
                  ),
                )
              : page;

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
