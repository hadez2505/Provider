import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavegacionModel(),
      child: const Scaffold(
        body: _Pages(),
        bottomNavigationBar: _Navigation(),
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  const _Navigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final navigationModel = Provider.of<_NavegacionModel>(context);

    return BottomNavigationBar(
        currentIndex: navigationModel.paginaActual,
        onTap: (i) =>navigationModel.paginaActual = i,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'hola'),
          BottomNavigationBarItem(icon: Icon(Icons.public), label: 'hola'),
        ]);
  }
}

class _Pages extends StatelessWidget {
  const _Pages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      // physics: const BouncingScrollPhysics(),
      physics: const NeverScrollableScrollPhysics(),
      children: [Container(color: Colors.red), Container(color: Colors.green)],
    );
  }
}

class _NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;

  int get paginaActual => _paginaActual;

  set paginaActual(int value) {
    _paginaActual = value;
    notifyListeners();
  }
}
