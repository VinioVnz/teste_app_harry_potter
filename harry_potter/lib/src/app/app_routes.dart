import 'package:flutter/widgets.dart';
import 'package:harry_potter/src/app/app_drawer_items.dart';
import 'package:harry_potter/src/view/base_layout.dart';


Map<String, WidgetBuilder> generateRoutes(){
  final Map<String, WidgetBuilder> routes = {};

  for(var item in appMenuItems){
    routes[item.route] = 
      (context) => BaseLayout(title: item.title, body: item.page,);
  }

  return routes;
}