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

import 'package:flutter/material.dart';
import 'package:local_notification/models/notification_tile_class.dart';
import 'package:local_notification/services/local_notification_services/notification_service.dart';

final NotificationService notificationService = NotificationService();

List<NotificationTile> notifications = [
  NotificationTile(() async {
    notificationService.showNotification();
  },
      "Simple Notification",
      const Icon(
        Icons.notifications,
        color: Colors.red,
      )),
  NotificationTile(() async {
    notificationService.scheduleNotifications();
  },
      "Notify in 5 seconds",
      const Icon(
        Icons.schedule,
        color: Colors.amber,
      )),
  NotificationTile(() async {
    notificationService.showNotificationCustomSound();
  }, "Notification with custom sound",
      const Icon(Icons.music_note, color: Colors.green)),
  NotificationTile(() async {
    notificationService.scheduleDailyTenAMNotification();
  },
      "Notify at 10 am daily",
      const Icon(
        Icons.calendar_today,
        color: Colors.orange,
      )),
  NotificationTile(() async {
    notificationService.repeatNotification();
  },
      "Repeat notification every 1 minute",
      const Icon(
        Icons.repeat,
        color: Colors.blue,
      )),
  NotificationTile(() async {
    notificationService.cancelNotification();
  },
      "Cancel notification",
      const Icon(
        Icons.cancel,
        color: Colors.red,
      )),
  NotificationTile(() async {
    notificationService.cancelAllNotifications();
  },
      "Cancel all notifications",
      const Icon(
        Icons.delete,
        color: Colors.purple,
      )),
];
