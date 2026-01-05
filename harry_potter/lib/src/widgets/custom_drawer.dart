import 'package:flutter/material.dart';
import 'package:harry_potter/src/app/app_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Color(0xff440719),
            height: 100,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                child: Image.asset(
                  'assets/images/harry_icon.png',
                  width: 100,
                  height: 100,
                  color: Color(0xffE09C09),
                ),
              ),
            ),
          ),
           ...appMenuItems.map(
            (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: () {
                Navigator.pushReplacementNamed(context, item.route);
              },
            ),
          ),
        ],
      ),
    );
  }
}
