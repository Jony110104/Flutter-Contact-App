import 'package:flutter/material.dart';
import 'package:flutter_plant_ui/screens/details/components/bodytwo.dart';
import 'package:flutter_plant_ui/screens/home/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyTwo(),
    );
  }
} 