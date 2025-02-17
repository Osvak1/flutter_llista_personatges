import 'package:basic_flutter_app/car_card.dart';
import 'package:flutter/material.dart';

import 'car_model.dart';

class DogList extends StatelessWidget {
  final List<Dog> doggos;
  DogList(this.doggos);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  ListView _buildList(context) {
    return new ListView.builder(
      itemCount: doggos.length,
      itemBuilder: (context, int) {
        return new DogCard(doggos[int]);
      },
    );
  }
}
