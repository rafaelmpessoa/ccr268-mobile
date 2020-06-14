import 'package:auto_route/auto_route.dart';
import 'package:ccr/constants.dart';
import 'package:ccr/domain/models/app_step.dart';
import 'package:ccr/domain/models/review.dart';
import 'package:ccr/presentation/router.gr.dart';
import 'package:ccr/presentation/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class RateStepPage extends StatefulWidget {
  final String stoppingPointName;
  final List<AppStep> steps;
  final double indexStep;
  final List<Review> reviews;

  const RateStepPage({
    @required this.stoppingPointName,
    @required this.indexStep,
    @required this.steps,
    @required this.reviews,
  });

  @override
  _RateStepPageState createState() => _RateStepPageState();
}

class _RateStepPageState extends State<RateStepPage> {
  double indexAnswer = 0;
  AppStep currentStep;
  Review currReview;

  @override
  void initState() {
    super.initState();
    currentStep = widget.steps[widget.indexStep.toInt() - 1];
  }

  void nextRouter() {
    final review = Review(
      point: currentStep.points,
      type: currentStep.reviewType,
      ratting: indexAnswer,
      stepName: currentStep.name,
    );
    if (widget.reviews.length > 0) {
      widget.reviews.add(review);
    }
    currentStep.index == widget.steps.length
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
              indexStep: currentStep.index + 1,
              steps: widget.steps,
              reviews: widget.reviews.length > 0 ? widget.reviews : [review],
            ),
          );
  }

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
                  _buildProgressBar(currentStep.points),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          currentStep.imgPath,
                          height: 200,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          currentStep.name,
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          currentStep.description ?? "",
                          style: TextStyle(
                            fontSize: 14,
                            color: kBackgroudColor02,
                            letterSpacing: 0.25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        _buildRatingBar(),
                        SizedBox(
                          height: 32,
                        ),
                        AnimatedSwitcher(
                          duration: Duration(milliseconds: 500),
                          child: indexAnswer > 0
                              ? _buildAnsweredButtons()
                              : InkWell(
                                  onTap: nextRouter,
                                  child: Text(
                                    "Não utilizei o serviço",
                                    style: TextStyle(
                                        color: kBackgroudColor02,
                                        fontSize: 16,
                                        letterSpacing: 0.45),
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildAnsweredButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildButtonBottom(
          text: "Fazer um relato\n(+10 pontos)",
          onPressed: () {
            final review = Review(
              point: currentStep.points,
              type: currentStep.reviewType,
              ratting: indexAnswer,
              stepName: currentStep.name,
            );
            if (widget.reviews.length > 0) {
              widget.reviews.add(review);
            }
            ExtendedNavigator.of(context).pushNamed(
              Routes.rateReportPage,
              arguments: RateReportPageArguments(
                stoppingPointName: widget.stoppingPointName,
                currStep: currentStep,
                steps: widget.steps,
                reviews: widget.reviews.length > 0 ? widget.reviews : [review],
              ),
            );
          },
        ),
        SizedBox(
          width: 16,
        ),
        _buildButtonBottom(
          text: "Avançar",
          onPressed: nextRouter,
        ),
      ],
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

  RatingBar _buildRatingBar() {
    return RatingBar(
      itemPadding: const EdgeInsets.symmetric(horizontal: 16),
      initialRating: 0,
      itemSize: 55,
      itemCount: 4,
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
          print(rating);
          indexAnswer = rating;
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
        color: currentStep.index >= step ? kBrandColor : kBackgroudColor04,
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
          "passo 0${currentStep.index.toInt()} de 05",
          style: TextStyle(
            color: Color(0xFF828282),
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
