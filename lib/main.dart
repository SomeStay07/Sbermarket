import 'package:flutter/material.dart';
import 'Model/recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApplication());
}

class RecipeApplication extends StatelessWidget {
  const RecipeApplication({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Sbermarket',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black
        ),
      ),
      home: const MyHomePage(title: 'Sbermarket'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
      child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int indext) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return RecipeDetail(recipe: Recipe.samples[indext]);
                        },
                    ),
                );
              },
                child: buildRecipeCard(Recipe.samples[indext]),
            );
          }
          ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          Image(image: AssetImage(recipe.imgUrl)),
          const SizedBox(height: 14.0,),
          Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
          )
        ],
      ),
    ),
    );
    // return Card(
    //   child: Column(
    //     children: <Widget>[
    //       Image(image: AssetImage(recipe.imgUrl)),
    //       Text(recipe.label)
    //     ],
    //   ),
    // );
  }
}
