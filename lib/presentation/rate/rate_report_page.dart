import 'package:auto_route/auto_route.dart';
import 'package:ccr/constants.dart';
import 'package:ccr/domain/models/app_step.dart';
import 'package:ccr/domain/models/review.dart';
import 'package:ccr/presentation/router.gr.dart';
import 'package:ccr/presentation/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateReportPage extends StatefulWidget {
  final String stoppingPointName;
  final AppStep currStep;
  final List<AppStep> steps;
  final List<Review> reviews;

  const RateReportPage({
    @required this.stoppingPointName,
    @required this.currStep,
    @required this.steps,
    @required this.reviews,
  });

  @override
  _RateReportPageState createState() => _RateReportPageState();
}

class _RateReportPageState extends State<RateReportPage> {
  bool answered = false;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildStepHeader(),
                  SizedBox(
                    height: 8,
                  ),
                  _buildProgressBar(widget.currStep.points),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        widget.currStep.name,
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      _buildRatingBar(widget.reviews.last.ratting),
                      SizedBox(
                        height: 12,
                      ),
                      TextField(
                        maxLines: 10,
                        maxLength: 100,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      _buildButtonBottom(
                        text: "Avançar",
                        onPressed: () => widget.currStep.index ==
                                widget.steps.length
                            ? ExtendedNavigator.of(context).pushNamed(
                                Routes.rateSendPage,
                                arguments: RateSendPageArguments(
                                  stoppingName: widget.stoppingPointName,
                                  reviews: widget.reviews,
                                ),
                              )
                            : ExtendedNavigator.of(context).pushNamed(
                                Routes.rateStepPage,
                                arguments: RateStepPageArguments(
                                    stoppingPointName: widget.stoppingPointName,
                                    indexStep: widget.currStep.index + 1.0,
                                    steps: widget.steps,
                                    reviews: widget.reviews),
                              ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildButtonBottom(
      {@required String text, @required Function onPressed}) {
    return Container(
      height: 40,
      width: 140,
      child: RaisedButton(
        color: kBrandColor,
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 0.5,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  RatingBar _buildRatingBar(double rattingValue) {
    return RatingBar(
      itemPadding: const EdgeInsets.symmetric(horizontal: 16),
      initialRating: rattingValue,
      itemCount: 4,
      itemSize: 55,
      ignoreGestures: true,
      unratedColor: kBackgroudColor04,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return Icon(
              Icons.sentiment_dissatisfied,
              color: Colors.redAccent,
            );
          case 1:
            return Icon(
              Icons.sentiment_neutral,
              color: Colors.amber,
            );
          case 2:
            return Icon(
              Icons.sentiment_satisfied,
              color: Colors.lightGreen,
            );
          case 3:
            return Icon(
              Icons.sentiment_very_satisfied,
              color: Colors.green,
            );
        }
      },
      onRatingUpdate: (rating) {
        setState(() {
          answered = true;
        });
      },
    );
  }

  Widget _buildProgressBar(double points) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
              widget.steps.map((e) => _buildStepProgressItem(e.index)).toList(),
        ),
        SizedBox(
          height: 12,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "${points.toInt()} pontos",
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 0.5,
              color: kBackgroudColor03,
            ),
          ),
        ),
      ],
    );
  }

  Expanded _buildStepProgressItem(double step) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 12,
        color: widget.currStep.index >= step ? kBrandColor : kBackgroudColor04,
      ),
    );
  }

  Column _buildStepHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Avaliar estabelecimento",
          style: TextStyle(fontSize: 16, color: kBackgroudColor02),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          widget.stoppingPointName,
          style: TextStyle(fontSize: 24, color: kBackgroudColor02),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "passo 0${widget.currStep.index.toInt()} de 05",
          style: TextStyle(
            color: Color(0xFF828282),
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
