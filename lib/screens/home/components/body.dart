import 'package:flutter/material.dart';
import 'package:flutter_plant_ui/constant.dart';
import 'package:flutter_plant_ui/screens/home/components/featured_plant.dart';
import 'package:flutter_plant_ui/screens/home/components/recommanded_plants.dart';
import 'package:flutter_plant_ui/screens/home/components/tittle_with_more_btn.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it enable scroll with small devices

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      HeaderWithSearchBox(size: size),
      TitleWithMoreBtn(
        title: "Recommanded",
        press: () {},
      ),

      RecommandedPlants(),
      TitleWithMoreBtn(
        title: "Featured Plants",
        press: () {},
      ),
      FeaturedPlants(),
      SizedBox(height: kDefaultPadding)

      // it will cover 40 % of our total width
    ]));
  }
}
