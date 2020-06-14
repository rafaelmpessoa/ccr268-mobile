import 'package:ccr/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: kPaddingVertial),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            _buildHeader(),
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildListItem("POSTO KM456", "Novas instalações inauguradas!",
                    4, 32, context),
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
          "Explorar",
          style: TextStyle(
            color: kBrandColor,
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: kPaddingVertial,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        _buildGridFeatures(),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Container _buildGridFeatures() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Procurar por necessidade",
            style: TextStyle(fontSize: 16, color: kBackgroudColor03),
          ),
          SizedBox(
            height: 12,
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildGridItem("Alimentação", "assets/icons/comida.svg"),
                  _buildGridItem("Banheiros e\nbanho", "assets/icons/wc.svg"),
                  _buildGridItem("Pernoite", "assets/icons/dormir.svg"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildGridItem(
                      "Praça de\ndescanso", "assets/icons/descanso.svg"),
                  _buildGridItem("Segurança", "assets/icons/seguranca.svg"),
                  _buildGridItem(
                      "Serviços e\nManutenção", "assets/icons/servicos.svg"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildGridItem(String text, String icon) {
    return Container(
      width: 104,
      height: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: kBackgroudColor06,
          width: 1,
        ),
      ),
      child: OutlineButton(
        onPressed: () => null,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            SvgPicture.asset(icon),
            SizedBox(
              height: 16,
            ),
            Text(
              text,
              style: TextStyle(
                color: kBackgroudColor02,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
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
