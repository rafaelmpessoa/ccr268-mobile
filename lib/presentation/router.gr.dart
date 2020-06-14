// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ccr/presentation/home/home_page.dart';
import 'package:ccr/presentation/rate/rate_page.dart';
import 'package:ccr/presentation/rate/rate_step_page.dart';
import 'package:ccr/domain/models/app_step.dart';
import 'package:ccr/domain/models/review.dart';
import 'package:ccr/presentation/rate/rate_report_page.dart';
import 'package:ccr/presentation/rate/rate_send_page..dart';
import 'package:ccr/presentation/rate/rate_success_page.dart';

abstract class Routes {
  static const homePage = '/';
  static const ratePage = '/rate-page';
  static const rateStepPage = '/rate-step-page';
  static const rateReportPage = '/rate-report-page';
  static const rateSendPage = '/rate-send-page';
  static const rateSuccessPage = '/rate-success-page';
  static const all = {
    homePage,
    ratePage,
    rateStepPage,
    rateReportPage,
    rateSendPage,
    rateSuccessPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomePage().wrappedRoute(context),
          settings: settings,
        );
      case Routes.ratePage:
        if (hasInvalidArgs<RatePageArguments>(args)) {
          return misTypedArgsRoute<RatePageArguments>(args);
        }
        final typedArgs = args as RatePageArguments ?? RatePageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => RatePage(
              body: typedArgs.body,
              bottomNavigationBar: typedArgs.bottomNavigationBar),
          settings: settings,
        );
      case Routes.rateStepPage:
        if (hasInvalidArgs<RateStepPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<RateStepPageArguments>(args);
        }
        final typedArgs = args as RateStepPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => RateStepPage(
              stoppingPointName: typedArgs.stoppingPointName,
              indexStep: typedArgs.indexStep,
              steps: typedArgs.steps,
              reviews: typedArgs.reviews),
          settings: settings,
        );
      case Routes.rateReportPage:
        if (hasInvalidArgs<RateReportPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<RateReportPageArguments>(args);
        }
        final typedArgs = args as RateReportPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => RateReportPage(
              stoppingPointName: typedArgs.stoppingPointName,
              currStep: typedArgs.currStep,
              steps: typedArgs.steps,
              reviews: typedArgs.reviews),
          settings: settings,
        );
      case Routes.rateSendPage:
        if (hasInvalidArgs<RateSendPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<RateSendPageArguments>(args);
        }
        final typedArgs = args as RateSendPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => RateSendPage(
                  key: typedArgs.key,
                  stoppingName: typedArgs.stoppingName,
                  reviews: typedArgs.reviews)
              .wrappedRoute(context),
          settings: settings,
        );
      case Routes.rateSuccessPage:
        if (hasInvalidArgs<RateSuccessPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<RateSuccessPageArguments>(args);
        }
        final typedArgs = args as RateSuccessPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              RateSuccessPage(key: typedArgs.key, points: typedArgs.points),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//RatePage arguments holder class
class RatePageArguments {
  final Widget body;
  final Widget bottomNavigationBar;
  RatePageArguments({this.body, this.bottomNavigationBar});
}

//RateStepPage arguments holder class
class RateStepPageArguments {
  final String stoppingPointName;
  final double indexStep;
  final List<AppStep> steps;
  final List<Review> reviews;
  RateStepPageArguments(
      {@required this.stoppingPointName,
      @required this.indexStep,
      @required this.steps,
      @required this.reviews});
}

//RateReportPage arguments holder class
class RateReportPageArguments {
  final String stoppingPointName;
  final AppStep currStep;
  final List<AppStep> steps;
  final List<Review> reviews;
  RateReportPageArguments(
      {@required this.stoppingPointName,
      @required this.currStep,
      @required this.steps,
      @required this.reviews});
}

//RateSendPage arguments holder class
class RateSendPageArguments {
  final Key key;
  final String stoppingName;
  final List<Review> reviews;
  RateSendPageArguments(
      {this.key, @required this.stoppingName, @required this.reviews});
}

//RateSuccessPage arguments holder class
class RateSuccessPageArguments {
  final Key key;
  final double points;
  RateSuccessPageArguments({this.key, @required this.points});
}
