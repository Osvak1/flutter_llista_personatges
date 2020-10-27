import 'package:flutter/material.dart';
import 'dart:async';

import 'car_model.dart';
import 'car_list.dart';
import 'new_car_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Rate Famous Movie Cars',
      theme: ThemeData(brightness: Brightness.dark),
      home: MyHomePage(
        title: 'We Rate Famous Movie Cars',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Dog> initialDoggos = []
    ..add(Dog('DeLorean DMC-12', 'Back to the Future',
        'The car itself wasn’t quite as magical as its outside appearance. Apparently the engine was replaced with a V-8 from the Porsche 928. Regardless of the cool futuristic design, and becoming one of the most famous 80s movie cars.'))
    ..add(Dog('Lotus Esprit Series I', 'The Spy Who Loved Me',
        'Generally, not the best plan to drive your car into the ocean, but Bond handles it just fine, driving the iconic Series I Esprit that somehow transforms into a submarine.'))
    ..add(Dog('Batmobile', 'The Dark Knight Trilogy',
        'From Adam West to Ben Affleck, the Batmobile has evolved quite a bit over the years. But the Tumbler in Nolans Dark Knight Trilogy is something to be desired, especially compared to the older models.'))
    ..add(Dog('Dodge Charger', 'The Fast and the Furious',
        'The first of the series ushered in a revival of cool car movies. While it does some fantastical things on screen (like a wheelstand and burnout at the same time), people still loved it. The 69 version of this car was first popularized by the General Lee from The Dukes of Hazzard.'))
    ..add(Dog('Pontiac Trans Am', 'Knight Rider',
        'The car used as KITT in the series was a customized 1982 Pontiac Firebird Trans Am sports model, that cost US100,000 to build . Nose, dash and other interior of the car were designed by the design consultant Michael Scheffe.'))
    ..add(Dog('XB GT Ford Falcon', 'Mad Max', 'When it comes to cars, Australians are historically just as power-hungry as Americans.'))
    ..add(Dog('The Gigahorse', 'Mad Max: Fury Road', 'After a three-decade wait, few Mad Max fans expected Fury Road to be packed with so many wild and innovative vehicles, but one could argue it had more interesting cars and trucks than any Mad Max installment before it.'))
    ..add(Dog('Ford Explorer', 'Jurassic Park', 'Hold onto your butts: Were now entering Jurassic Park, circa 1993'))
    ..add(Dog('Cadillac', 'Ghostbusters', 'The Ectomobile, or ECTO-1 and ECTO-1A, is just as famous as the men riding inside it, maybe more so. '))
    ..add(Dog('Ford Econoline', 'Dumb and Dumber', 'With a name like the Shaggin’ Wagon, it was bound to be iconic. '));

  Future _showNewDogForm() async {
    Dog newDog = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return AddDogFormPage();
    }));
    if (newDog != null) {
      initialDoggos.add(newDog);
    }
  }

  @override
  Widget build(BuildContext context) {
    var key = new GlobalKey<ScaffoldState>();
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        title: new Text(widget.title),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.add),
            onPressed: _showNewDogForm,
          ),
        ],
      ),
      body: new Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                .1,
                .5,
                .7,
                .9
              ],
                  colors: [
                Colors.indigo[800],
                Colors.indigo[700],
                Colors.indigo[600],
                Colors.indigo[400]
              ])),
          child: new Center(
            child: new DogList(initialDoggos),
          )),
    );
  }
}
