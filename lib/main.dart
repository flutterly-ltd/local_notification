// Copyright 2021 Flutterly Ltd

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_notification/views/homeView/home_view.dart';
import 'package:local_notification/views/notification_detail_view/notification_detail.dart';

import 'services/local_notification_services/notification_service.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          cardColor: Colors.grey[900],
          scaffoldBackgroundColor: Colors.black,
          canvasColor: Colors.black,
          cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
              brightness: Brightness.dark,
              barBackgroundColor: Colors.black,
              scaffoldBackgroundColor: Colors.black,
              textTheme: CupertinoTextThemeData(
                  navLargeTitleTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)))),
      themeMode: ThemeMode.system,
      theme: ThemeData(
          brightness: Brightness.light,
          cardColor: Colors.white,
          canvasColor: Colors.white,
          scaffoldBackgroundColor: Colors.grey[100],
          cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
              brightness: Brightness.light,
              barBackgroundColor: Colors.grey[100],
              scaffoldBackgroundColor: Colors.grey[100],
              textTheme: const CupertinoTextThemeData(
                  navLargeTitleTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)))),
      color: Colors.black,
      navigatorKey: navigatorKey,
      routes: {
        "/": (context) => const MyHomePage(title: 'Local Notifications'),
        "/notification_detail": (context) => const NotificationDetail()
      },
    );
  }
}
