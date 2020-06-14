import 'package:auto_route/auto_route_annotations.dart';
import 'package:ccr/presentation/explore/explore_item_page.dart';
import 'package:ccr/presentation/explore/explore_page.dart';
import 'package:ccr/presentation/home/home_page.dart';
import 'package:ccr/presentation/rate/rate_page.dart';
import 'package:ccr/presentation/rate/rate_report_page.dart';
import 'package:ccr/presentation/rate/rate_send_page..dart';
import 'package:ccr/presentation/rate/rate_step_page.dart';
import 'package:ccr/presentation/rate/rate_success_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomePage homePage;
  RatePage ratePage;
  RateStepPage rateStepPage;
  RateReportPage rateReportPage;
  RateSendPage rateSendPage;
  RateSuccessPage rateSuccessPage;
  ExploreItemPage exploreItemPage;
}
