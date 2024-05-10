import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Category App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CategoriesPage(),
      routes: {
        '/sport': (context) => SubCategoryPage(category: 'Sport'),
        '/social_outing': (context) => SubCategoryPage(category: 'Sortie sociale'),
        '/event': (context) => SubCategoryPage(category: 'Événement'),
      },
    );
  }
}

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sport');
              },
              child: Text('Sport'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/social_outing');
              },
              child: Text('Sortie sociale'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/event');
              },
              child: Text('Événement'),
            ),
          ],
        ),
      ),
    );
  }
}

class SubCategoryPage extends StatelessWidget {
  final String category;

  SubCategoryPage({Key key, @required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Exemple ${index + 1}'),
          );
        },
      ),
    );
  }
}
