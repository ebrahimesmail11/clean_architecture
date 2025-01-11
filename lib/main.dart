import 'package:clean_architecture/core/databases/cache/shared_preferences.dart';
import 'package:clean_architecture/my_app.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await  SharedPref().instantiatePreferences();
  runApp(const MyApp());
}

