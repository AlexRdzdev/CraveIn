import 'package:cravein/pages/Start.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    Start.routeName: (BuildContext context) => Start(),
  };
}
