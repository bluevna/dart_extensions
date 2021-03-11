/*
 * Copyright 2020 Idan Ayalon. All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';

extension NavigationStateExtensions on State {
  /// Navigate to another widget
  Future<T?> navigateTo<T>({required Route<T> route}) => Navigator.push(this.context, route);

  /// Navigate to another widget and replace remove the current one
  Future<T?> navigatePushReplacement<T>({required Route<T> route}) => Navigator.pushReplacement(this.context, route);
 

  /// Navigate to widget by the route name
  Future<T?> navigateByRouteName<T>(String routeName, {Object? args}) =>
      Navigator.pushNamed(context, routeName, arguments: args);
}

extension NavigationStatelessExtensions on StatelessWidget {
  /// Navigate to another widget
  Future<T?> navigateTo<T>({required BuildContext context, required Route<T> route}) => Navigator.push(context, route);

  /// Navigate to another widget and replace remove the current one
  Future<T?> navigatePushReplacement<T>({required BuildContext context,required Route<T> route}) => Navigator.pushReplacement(context, route);
  
  /// Navigate to widget by the route name
  Future<T?> navigateByRouteName<T>({required BuildContext context, required String routeName, Object? args}) =>
      Navigator.pushNamed(context, routeName, arguments: args);

}
