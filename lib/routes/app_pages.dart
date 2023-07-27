import 'package:facesync/pages/camera_page.dart';
import 'package:facesync/pages/dashboard_page.dart';
import 'package:facesync/pages/splash_screen.dart';
import 'package:facesync/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.SPLASH: (context) => const SplashScreen(),
    AppRoutes.DASHBOARD: (context) => const DashboardPage(),
    AppRoutes.CAMERA: (context) => const CameraPage(),
  };
}