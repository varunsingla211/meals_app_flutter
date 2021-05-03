import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  _FiltersScreenState(this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool glutenFree = false;
  bool vegetarian = false;
  bool vegan = false;
  bool lactoseFree = false;

  Widget buildSwitch(String title, bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      onChanged: updateValue,
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('abc'),
          actions: [IconButton(icon: Icon(Icons.save), onPressed: widget.saveFilters)],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildSwitch(
                    'Gluten-Free',
                    glutenFree,
                    (newValue) {
                      setState(
                        () {
                          glutenFree = newValue;
                        },
                      );
                    },
                  ),
                  buildSwitch(
                    'Lactose',
                    lactoseFree,
                    (newValue) {
                      setState(
                        () {
                          lactoseFree = newValue;
                        },
                      );
                    },
                  ),
                  buildSwitch(
                    'Vegetarian',
                    vegetarian,
                    (newValue) {
                      setState(
                        () {
                          vegetarian = newValue;
                        },
                      );
                    },
                  ),
                  buildSwitch(
                    'Vegan',
                    vegan,
                    (newValue) {
                      setState(
                        () {
                          vegan = newValue;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
