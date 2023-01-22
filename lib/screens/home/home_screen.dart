import 'package:flutter/material.dart';
import 'package:flutter_plant_ui/components/my_nav_bottom_bar.dart';
import 'package:flutter_plant_ui/constant.dart';
import 'package:flutter_plant_ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomnavigationBar(),
    );
  }


AppBar buildAppBar(){
 
    return AppBar(
      backgroundColor: Color(0xFF0C9869),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu), onPressed: () {  }, ),
    );
  
}

}

