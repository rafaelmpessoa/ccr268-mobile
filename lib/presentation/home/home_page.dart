import 'package:auto_route/auto_route.dart';
import 'package:ccr/constants.dart';
import 'package:ccr/injection.dart';
import 'package:ccr/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget with AutoRouteWrapper {
  @override
  _HomePageState createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) =>
      BlocProvider(create: (context) => getIt<HomeBloc>(), child: this);
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.bloc<HomeBloc>().add(
          HomeFetchStoppingPoints(),
        );
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 13, left: 17, right: 17),
          child: SingleChildScrollView(child: _buildHomeBody(size)),
        ),
        bottomNavigationBar: _buildNavigationBottomBar(),
      ),
    );
  }

  Container _buildHomeBody(Size size) {
    return Container(
      child: Column(
        children: <Widget>[
          _buildHeaderUserData(),
          SizedBox(
            height: 12,
          ),
          _buildUseMyPoints(size),
          SizedBox(
            height: 30,
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
          SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Ajuda ccr"),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: kBackgroudColor01,
                child: Center(
                  child: Text(
                    "Entre em contato com a CCR\n(whatsapp)",
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )
        ],
      ),
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
              Text("Atualizações"),
              Text("Regiões: Todas"),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            height: 250,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return _buildNewsItem("PARADA 2 , reformulada", "20");
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 8,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container _buildNewsItem(
    String newsText,
    String km,
  ) {
    return Container(
      height: 100,
      width: double.infinity,
      color: kBackgroudColor01,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            left: 31,
            child: Text(newsText),
          ),
          Positioned(
            bottom: 4,
            right: 11,
            child: Text("a $km km de você"),
          )
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
          Text("Procurar por necessidade"),
          SizedBox(
            height: 12,
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildGridItem(kBackgroudColor01, "Banheiro"),
                  _buildGridItem(kBackgroudColor01, "Banheiro"),
                  _buildGridItem(kBackgroudColor01, "Banheiro"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildGridItem(kBackgroudColor01, "Banheiro"),
                  _buildGridItem(kBackgroudColor01, "Banheiro"),
                  _buildGridItem(kBackgroudColor01, "Banheiro"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildGridItem(Color color, String text) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 12,
            left: 0,
            right: 0,
            child: Center(
              child: Text(text),
            ),
          )
        ],
      ),
    );
  }

  Column _buildRattingStoppingPoint() {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          color: kBackgroudColor01,
          child: Center(
            child: Text("Avaliar estabelecimento"),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              child: Center(
                child: Text("2"),
              ),
              decoration: new BoxDecoration(
                color: kBackgroudColor01,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text("Sugestões de avaliações (+ 20 pontos)")
          ],
        )
      ],
    );
  }

  BottomNavigationBar _buildNavigationBottomBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  Align _buildUseMyPoints(Size size) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 28,
        alignment: Alignment.centerRight,
        width: size.width * 0.6,
        color: kBackgroudColor01,
        child: Padding(
          padding: const EdgeInsets.only(right: 9),
          child: Text("Utilizar meus pontos"),
        ),
      ),
    );
  }

  Row _buildHeaderUserData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Olá, Usuário",
          style: TextStyle(fontSize: 24),
        ),
        Text(
          "5000 pontos",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
