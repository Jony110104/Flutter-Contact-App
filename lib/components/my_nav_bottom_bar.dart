import 'package:flutter/material.dart';
import 'package:flutter_plant_ui/constant.dart';

class BottomnavigationBar extends StatelessWidget {
  const BottomnavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding

      ),

      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38)

          ),
        ],
      ),

      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        IconButton(
           icon: Icon(Icons.account_box_rounded),
          onPressed: () {  },
          color: Colors.green,
          ),

        IconButton(
          icon: Icon(Icons.roofing_rounded), 
          onPressed: () {  },
          color: Colors.green,
          ),

        IconButton(icon: Icon(Icons.adb_rounded), 
          
          onPressed: () {  },
          color: Colors.green,
          ),



      ]),
    );
  }
}

