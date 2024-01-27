import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/di/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doc_app.dart';

void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(const DocApp());
}
