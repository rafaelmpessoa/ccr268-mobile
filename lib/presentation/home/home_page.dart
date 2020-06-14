import 'package:auto_route/auto_route.dart';
import 'package:ccr/constants.dart';
import 'package:ccr/domain/models/user.dart';
import 'package:ccr/injection.dart';
import 'package:ccr/presentation/explore/explore_page.dart';
import 'package:ccr/presentation/home/bloc/home_bloc.dart';
import 'package:ccr/presentation/router.gr.dart';
import 'package:ccr/presentation/splash/splash_page.dart';
import 'package:ccr/presentation/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class HomePage extends StatefulWidget with AutoRouteWrapper {
  @override
  _HomePageState createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) =>
      BlocProvider(create: (context) => getIt<HomeBloc>(), child: this);
}

class _HomePageState extends State<HomePage> {
  bool isSplashPage;

  @override
  void initState() {
    super.initState();
    context.bloc<HomeBloc>().add(
          HomeOnOpenPage(),
        );
    isSplashPage = true;

    Future.delayed(Duration(milliseconds: 1000)).then(
      (value) {
        setState(
          () {
            isSplashPage = false;
          },
        );
      },
    );
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _selectPage(Size size) {
    switch (_selectedIndex) {
      case 2:
        return ExplorePage();
        break;
      default:
        return _buldHomePage(size);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AnimatedSwitcher(
      duration: Duration(seconds: 3),
      child: isSplashPage
          ? SplashPage()
          : BaseScaffold(
              bottomNavigationBar: _buildNavigationBottomBar(),
              body: _selectPage(size),
            ),
    );
  }

  Container _buldHomePage(Size size) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: _buildHomeBody(size),
      ),
    );
  }

  Container _buildHomeBody(Size size) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return _buildHeaderUserData(
                state is HomeLoaded
                    ? state.user
                    : User(name: "", totalPoints: 0),
              );
            },
          ),
          SizedBox(
            height: 24,
          ),
          _buildRattingStoppingPoint(),
          SizedBox(
            height: 40,
          ),
          _buildGridFeatures(),
          SizedBox(
            height: 40,
          ),
          _buildListNews(),
          _buildWppCall()
        ],
      ),
    );
  }

  Column _buildWppCall() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Ajuda CCR",
          style: TextStyle(
            letterSpacing: 0.15,
            fontSize: 16,
            color: Color(0xFF828282),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          child: RaisedButton(
            color: Color(0xFF76C86D),
            onPressed: () => null,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset('assets/icons/wpp.svg'),
                Text(
                  "Entre em contato com a CCR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.15,
                    fontSize: 20,
                    color: Color(0xFF003C18),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Container _buildListNews() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Atualizações",
                style: TextStyle(
                  fontSize: 16,
                  color: kBackgroudColor03,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                decoration: BoxDecoration(
                  color: kBackgroudColor06,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Regiões: Todas".toUpperCase(),
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 250,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    _buildNewsItem(
                        "POSTO KM456",
                        "Novas instalações inauguradas!",
                        500,
                        "assets/images/stoppint_2.png"),
                    SizedBox(
                      height: 8,
                    ),
                    _buildNewsItem(
                        "Restaurante Zé Maria",
                        "Toda terça festival de salgados",
                        500,
                        "assets/images/stopping_2.png"),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container _buildNewsItem(
    String title,
    String description,
    double distance,
    String imgPath,
  ) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: kBackgroudColor05,
        ),
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            imgPath,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.4,
                    color: Color(0xFF828282),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 0.5,
                    color: kBackgroudColor02,
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "a $distance metros de você",
                      style: TextStyle(
                          color: kBrandColor, letterSpacing: 0.5, fontSize: 12),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 8,
                      color: kBrandColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
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
        onPressed: () => ExtendedNavigator.of(context).pushNamed(
          Routes.exploreItemPage,
          arguments: ExploreItemPageArguments(needName: text),
        ),
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

  Column _buildRattingStoppingPoint() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kBrandColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: RaisedButton(
            color: kBrandColor,
            onPressed: () =>
                ExtendedNavigator.of(context).pushNamed(Routes.ratePage),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/negative.svg'),
                    SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset('assets/icons/positive.svg'),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Avaliar estabelecimento",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "+ 60 pontos",
                  style: TextStyle(color: kYellowColor, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
        )
      ],
    );
  }

  BottomNavigationBar _buildNavigationBottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _selectedIndex == 0 ? null : kBackgroudColor04,
          ),
          title: Text(
            'Home',
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.restaurant,
            color: _selectedIndex == 1 ? null : kBackgroudColor04,
          ),
          title: Text('Serviços'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: _selectedIndex == 2 ? null : kBackgroudColor04,
          ),
          title: Text('Explorar'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: _selectedIndex == 3 ? null : kBackgroudColor04,
          ),
          title: Text('Perfil'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  Row _buildHeaderUserData(User user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Olá, ${user.name}",
              style: TextStyle(
                fontSize: 24,
                color: kBrandColor,
              ),
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Text(
                  "${user.totalPoints.toInt()} pontos",
                  style: TextStyle(
                    fontSize: 16,
                    color: kBackgroudColor03,
                  ),
                );
              },
            )
          ],
        ),
        OutlineButton(
          borderSide: BorderSide(
            color: kBrandColor,
          ),
          onPressed: () async => await scanner.scan(),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(4.0),
          ),
          child: Center(
            child: Text(
              "Utilizar meus pontos",
              style: TextStyle(color: kBrandColor),
            ),
          ),
        )
      ],
    );
  }
}
