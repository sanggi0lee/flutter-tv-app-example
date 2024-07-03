import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tv_app/view/page/home_page.dart';

// '실습용 이미지': 'shorturl.at/Qisto'

// idx에서 보안정책때문에 파일 업로드 불가
// Image.asset => image.network
// 로 변경하여 작업할 것!

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
