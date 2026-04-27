import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'home', icon: Icons.house, name: 'Pantalla Principal', screen: HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'List View Parte 1', screen: ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.not_listed_location, name: 'List View Parte 2', screen: ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'Card Screen', screen: CardScreen()),
    MenuOption(route: 'alert', icon: Icons.bus_alert_sharp, name: 'Alert Screen', screen: AlertScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final options in menuOptions){
      appRoutes.addAll({options.route:(BuildContext context)=> options.screen});
    }
    return appRoutes;
  }

/*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home':(BuildContext context) => HomeScreen(),
        'listview1':(BuildContext context) =>ListView1Screen(),
        'listview2':(BuildContext context) =>ListView2Screen(),
        'card':(BuildContext context) =>CardScreen(),
        'alert':(BuildContext context) =>AlertScreen(),
  };
*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings){     
        return MaterialPageRoute(
          builder:(context) => AlertScreen(),
        );
  }

}