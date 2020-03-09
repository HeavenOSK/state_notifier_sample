import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() => runApp(
      MultiProvider(
        providers: [
//          Provider(create: (context) => GlobalKey<NavigatorState>()),
//          Provider<ApiClient>(create: (context) => MockyApiClient()),
//          StateNotifierProvider<ItemsController, ItemsState>(
//            create: (context) => ItemsController(),
//          ),
//          StateNotifierProvider<CartController, CartState>(
//            create: (context) => CartController(),
//          ),
        ],
        child: const App(),
      ),
    );
