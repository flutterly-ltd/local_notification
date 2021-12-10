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
import 'package:local_notification/repository/notification_tile_elements.dart';
import 'package:local_notification/views/homeView/widgets/notification_list_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              "Local Notifications",
              style: TextStyle(
                  color: (Theme.of(context).brightness == Brightness.dark)
                      ? Colors.white
                      : Colors.black),
            ),
            stretch: true,
            border: Border.all(color: Colors.transparent),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                    padding: const EdgeInsets.all(0.0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          NotificationListTile(
                              notifications[index].onTapCallback,
                              notifications[index].notificationTitle,
                              notifications[index].notificationIcon),
                          (index < notifications.length - 1)
                              ? const Divider(
                                  indent: 60,
                                  color: Colors.grey,
                                  height: 1,
                                )
                              : const SizedBox()
                        ],
                      );
                    }),
              ),
            ),
          ]))
        ],
      ),
      bottomNavigationBar: const SafeArea(
        child: Text(
          "Flutterly Ltd",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
