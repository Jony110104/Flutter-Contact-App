import 'package:flutter/material.dart';
import 'package:flutter_plant_ui/constant.dart';
import 'package:flutter_plant_ui/screens/details/components/bodytwo.dart';
import 'package:flutter_plant_ui/screens/details/details_screen.dart';
import 'package:flutter_plant_ui/screens/home/components/body.dart';

class RecommandedPlants extends StatelessWidget {
  const RecommandedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // RecommandedPlantCard(
          //     image: "images/plant.jpg",
          //     title: "Somudro",
          //     country: "Bangladesh",
          //     price: 414,
          //     press: () => Navigator.pushNamed(context, BodyTwo.routeName)),
          RecommandedPlantCard(
              image: "images/plant.jpg",
              title: "Somudro",
              country: "Bangladesh",
              price: 414,
              press: () {
                 }),

          RecommandedPlantCard(
              image: "images/plant.jpg",
              title: "Somudro",
              country: "Bangladesh",
              price: 414,
              press: () {}),
          RecommandedPlantCard(
              image: "images/plant.jpg",
              title: "Somudro",
              country: "Bangladesh",
              price: 414,
              press: () {}),
          RecommandedPlantCard(
              image: "images/plant.jpg",
              title: "Somudro",
              country: "Bangladesh",
              price: 414,
              press: () {}),
          RecommandedPlantCard(
              image: "images/plant.jpg",
              title: "Somudro",
              country: "Bangladesh",
              price: 414,
              press: () {}),
          RecommandedPlantCard(
              image: "images/plant.jpg",
              title: "Somudro",
              country: "Bangladesh",
              price: 414,
              press: () {}),
          RecommandedPlantCard(
              image: "images/plant.jpg",
              title: "Somudro",
              country: "Bangladesh",
              price: 414,
              press: () {}),
        ],
      ),
    );
  }
}

class RecommandedPlantCard extends StatelessWidget {
  const RecommandedPlantCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.press})
      : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            GestureDetector(
              onTap: press(),
              child: Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23))
                      ]),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button,
                            ),
                            TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text('\$$price',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: kPrimaryColor))
                    ],
                  )),
            )
          ],
        ));
  }
}
