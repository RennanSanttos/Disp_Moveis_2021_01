import 'package:flutter/material.dart';
import 'package:trabalho_final/slide_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  int _currentPage = 0;

  var _listSlide = [
    {'id': 0, 'image': 'assets/imagens/2.jpg'},
    {'id': 1, 'image': 'assets/imagens/3.jpg'},
    {'id': 2, 'image': 'assets/imagens/4.jpg'},
    {'id': 3, 'image': 'assets/imagens/5.jpg'},
    {'id': 4, 'image': 'assets/imagens/6.jpg'},
    {'id': 5, 'image': 'assets/imagens/7.jpg'},
    {'id': 6, 'image': 'assets/imagens/8.jpg'},
    {'id': 7, 'image': 'assets/imagens/9.jpg'},
    {'id': 8, 'image': 'assets/imagens/10.jpg'},
  ];
  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(' App - Desenv. Dispos. Moveis.'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Text(
                'Barra Lateral',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensagens'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _listSlide.length,
                itemBuilder: (_, currentIndex) {
                  bool activePage = currentIndex == _currentPage;

                  return SlideTile(
                    activePage: activePage,
                    image: _listSlide[currentIndex]['image'],
                  );
                },
              ),
            ),
            _buildBullets()
          ],
        ),
      ),
    );
  }

  Widget _buildBullets() {
    return Padding(
      padding: EdgeInsets.all(08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _listSlide.map((i) {
          return InkWell(
            onTap: () {
              setState(() {
                _pageController.jumpToPage(i['id']);
                _currentPage = i['id'];
              });
            },
            child: Container(
              margin: EdgeInsets.all(6),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: _currentPage == i['id'] ? Colors.cyan : Colors.blue),
            ),
          );
        }).toList(),
      ),
    );
  }
}
