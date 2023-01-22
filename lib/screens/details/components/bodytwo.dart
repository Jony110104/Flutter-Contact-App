

import 'package:flutter/material.dart';
import 'package:flutter_plant_ui/constant.dart';
import 'package:flutter_plant_ui/screens/details/components/icon_card.dart';

class BodyTwo extends StatelessWidget {
  const BodyTwo({Key? key}) : super(key: key);
static const String routeName = '/bodyTwo';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.green,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.roundabout_left),
                  ],
                ),
              )),

              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.29))
                    ],
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("images/plant.jpg"),
                    )),
              )
            ],
          ),
        )
      ]),
    );
  }
}

