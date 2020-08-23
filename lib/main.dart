import 'package:dinbog/injection.dart';
import 'package:dinbog/presentation/core/app_widget.dart';
// import 'package:firebase_core/firebase_core.dart'; TODO: preparar mantenimiento
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized(); TODO: preparar mantenimiento
  configureINjection(Environment.prod);
  // FirebaseApp app = await Firebase.initializeApp(); TODO: preparar mantenimiento
  runApp(AppWidget());
}
