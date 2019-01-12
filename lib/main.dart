import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/product_admin.dart';
import './pages/products.dart';
import './pages/product.dart';

import './models/product.dart';




main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          brightness: Brightness.light,
          accentColor: Colors.blueAccent),
      routes: {
        '/': (BuildContext context) => AuthPage(),
        "/products": (BuildContext context) => ProductsPage(),
        "/admin": (BuildContext context) =>
            ProductsAdminPage()
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElement = settings.name.split("/");

        if (pathElement[0] != '') {
          return null;
        }
        if (pathElement[1] == "product") {
          final int index = int.parse(pathElement[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(null,null,null,null));
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ProductsPage());
      },
    );
  }
}
