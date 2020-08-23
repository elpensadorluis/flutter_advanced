import 'package:dinbog/injection.dart';
import 'package:dinbog/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureINjection(Environment.prod);
  FirebaseApp app = await Firebase.initializeApp();
  runApp(AppWidget());
}
