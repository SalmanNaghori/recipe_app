import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe_app/widgets/main_drawer.dart';
import '../screen/Favorite_screen.dart';
import '../screen/categories_screen.dart';

class TabsSreen extends StatefulWidget {
  const TabsSreen({super.key});

  @override
  State<TabsSreen> createState() => _TabsSreenState();
}

class _TabsSreenState extends State<TabsSreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {
      'page': FavoriteScreen(),
      'title': 'Your Favorites',
    },
  ];

  int _selectedPageindex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageindex]['title'] as String),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageindex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageindex,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
