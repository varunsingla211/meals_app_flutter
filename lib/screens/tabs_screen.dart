import 'package:flutter/material.dart';
import 'package:mealsapp/screens/categories_screen.dart';
import 'package:mealsapp/screens/favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text('Meals'), bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.category), text: 'Categories' ,),
          Tab(icon: Icon(Icons.star), text: 'Favourites',),
        ],),),
        body: TabBarView(children: [
          CategoriesScreen(),
          FavouritesScreen(),
        ],),
      
    )
  }
}