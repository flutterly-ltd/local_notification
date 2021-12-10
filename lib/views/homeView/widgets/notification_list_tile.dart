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

class NotificationListTile extends StatelessWidget {
  const NotificationListTile(
      this.onTapCallback, this.title, this.notificationIcon,
      {Key? key})
      : super(key: key);
  final VoidCallback onTapCallback;
  final String title;
  final Icon notificationIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          const Icon(
            CupertinoIcons.forward,
            color: Colors.grey,
          )
        ],
      ),
      leading: notificationIcon,
      onTap: onTapCallback,
      visualDensity: VisualDensity.compact,
    );
  }
}
