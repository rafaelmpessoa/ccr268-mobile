import 'package:auto_route/auto_route.dart';
import 'package:ccr/constants.dart';
import 'package:ccr/presentation/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ExploreItemPage extends StatelessWidget {
  final String needName;

  const ExploreItemPage(this.needName);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: kPaddingVertial),
        child: SingleChildScrollView(
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
              _buildHeader(),
              SizedBox(
                height: 32,
              ),
              Text(
                "PRÓXIMO",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Column(
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(String title, String description, double ratting,
      double distance, BuildContext context) {
    return Column(
      children: <Widget>[
        _buildStoppinPointItem(
          title,
          description,
          ratting,
          distance,
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
    );
  }

  Column _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          needName,
          style: TextStyle(
            color: kBrandColor,
            fontSize: 24,
          ),
        ),
      ],
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
            letterSpacing: 0.5,
            fontSize: 12,
            color: kBackgroudColor02,
          ),
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
}
