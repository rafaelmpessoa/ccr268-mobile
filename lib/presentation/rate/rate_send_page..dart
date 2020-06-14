import 'package:auto_route/auto_route.dart';
import 'package:ccr/constants.dart';
import 'package:ccr/domain/models/review.dart';
import 'package:ccr/injection.dart';
import 'package:ccr/presentation/rate/bloc/rate_send_bloc.dart';
import 'package:ccr/presentation/router.gr.dart';
import 'package:ccr/presentation/widgets/base_scaffold.dart';
import 'package:ccr/presentation/widgets/progress_dailogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RateSendPage extends StatelessWidget with AutoRouteWrapper {
  final String stoppingName;
  final List<Review> reviews;

  const RateSendPage({
    Key key,
    @required this.stoppingName,
    @required this.reviews,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<RateSendBloc>(),
        child: this,
      );

  int getTotalPoint() {
    return reviews.fold(
        0, (previousValue, element) => previousValue + element.point.toInt());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RateSendBloc, RateSendState>(
      listener: (context, state) {
        return state.map(
          initial: (_) => null,
          error: (state) {
            ExtendedNavigator.of(context).pop();
            ProgressDailogs.errorDialog(context, state.error);
          },
          loaded: (state) {
            ExtendedNavigator.of(context).pushNamedAndRemoveUntil(
              Routes.rateSuccessPage,
              (router) => router.isFirst,
              arguments: RateSuccessPageArguments(points: state.total),
            );
          },
          loading: (state) => ProgressDailogs.loadingDialog(context),
        );
      },
      child: BaseScaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () => ExtendedNavigator.of(context).pop(),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Avaliar estabelecimento",
                        style:
                            TextStyle(fontSize: 16, color: kBackgroudColor02),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 64,
                          ),
                          Text(
                            stoppingName,
                            style: TextStyle(
                              color: kBackgroudColor02,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          _buildListItens(),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Você vai ganhar ${getTotalPoint()} pontos",
                            style: TextStyle(
                              fontSize: 24,
                              color: kBackgroudColor02,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 50,
                            width: 215,
                            child: RaisedButton(
                              onPressed: () => context.bloc<RateSendBloc>().add(
                                    RateSendOnSendPressed(reviews),
                                  ),
                              color: kBrandColor,
                              child: Center(
                                child: Text(
                                  "Enviar Avaliação",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildListItens() {
    return Column(
      children: reviews
          .map(
            (e) => Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        e.stepName,
                        style: TextStyle(
                          color: kBackgroudColor02,
                          fontSize: 16,
                          letterSpacing: 0.45,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          _buildRattingIcon(
                            e.ratting.toInt(),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 11,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: kBackgroudColor04,
                ),
              ],
            ),
          )
          .toList(),
    );
  }

  Widget _buildRattingIcon(int index) {
    switch (index) {
      case 0:
        return Text(
          "Não utilizei o serviço",
          style: TextStyle(
            color: kBackgroudColor02,
            fontSize: 16,
            letterSpacing: 0.45,
          ),
        );
      case 1:
        return Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.redAccent,
        );
      case 2:
        return Icon(
          Icons.sentiment_neutral,
          color: Colors.amber,
        );
      case 3:
        return Icon(
          Icons.sentiment_satisfied,
          color: Colors.lightGreen,
        );
      case 4:
        return Icon(
          Icons.sentiment_very_satisfied,
          color: Colors.green,
        );
    }
  }
}
