import 'package:auto_route/auto_route.dart';
import 'package:ccr/constants.dart';
import 'package:ccr/presentation/rate/step_mixin.dart';
import 'package:ccr/presentation/router.gr.dart';
import 'package:ccr/presentation/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatePage extends StatelessWidget with StepMixin {
  final Widget body;
  final Widget bottomNavigationBar;

  const RatePage({this.body, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SizedBox(
          //   height: kPaddingVertial,
          // ),
          InkWell(
            onTap: () => ExtendedNavigator.of(context).pop(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.arrow_back),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingVertial),
            child: _buildHeader(),
          ),
          // MAPA
          // Container(
          //   height: kBoxHeigth,
          //   width: double.infinity,
          //   color: kBackgroudColor01,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildListItem("POSTO KM456",
                      "Novas instalações inauguradas!", 4, 32, context),
                  SizedBox(
                    height: 26,
                  ),
                  _buildListItem("Restaurante Zé Maria",
                      "Toda terça, festival de salgados!", 2, 402, context),
                  SizedBox(
                    height: 26,
                  ),
                  _buildListItem("POSTO KM240", "", 3, 603, context),
                  SizedBox(
                    height: kPaddingVertial,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListItem(String title, String description, double ratting,
      double distance, BuildContext context) {
    return InkWell(
      onTap: () => ExtendedNavigator.of(context).pushNamed(
        Routes.rateStepPage,
        arguments: RateStepPageArguments(
          steps: getListAppStep(),
          indexStep: 1,
          stoppingPointName: title,
          reviews: [],
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildStoppinPointItem(
                title,
                description,
                ratting,
                distance,
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: kBackgroudColor04,
          )
        ],
      ),
    );
  }

  Column _buildStoppinPointItem(
      String title, String description, double ratting, double distance) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: kBackgroudColor02,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          description,
          style: TextStyle(
              letterSpacing: 0.5, fontSize: 12, color: kBackgroudColor02),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: <Widget>[
            RatingBar(
              ignoreGestures: true,
              itemSize: 16,
              initialRating: ratting,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "${distance.toInt()} km",
              style: TextStyle(
                color: kBackgroudColor03,
                fontSize: 14,
                letterSpacing: 0.25,
              ),
            )
          ],
        )
      ],
    );
  }

  Column _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Avaliar estabelecimento",
          style: TextStyle(color: kBackgroudColor03, fontSize: 24),
        ),
        SizedBox(
          height: kPaddingVertial,
        ),
        _buildSuggestionRatting(),
        SizedBox(
          height: kPaddingVertial,
        ),
        Text(
          "Estabelecimentos próximos",
          style: TextStyle(
            fontSize: 20,
            color: kBackgroudColor03,
          ),
        ),
        SizedBox(
          height: kPaddingVertial,
        ),
      ],
    );
  }

  Row _buildSuggestionRatting() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              child: Center(
                child: Text(
                  "2",
                  style: TextStyle(color: kBrandColor),
                ),
              ),
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: kBrandColor),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Sugestões de avaliações",
              style: TextStyle(color: kBrandColor),
            ),
            Text(
              " ( + 20 pontos )",
              style: TextStyle(color: kYellowColor),
            ),
          ],
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
