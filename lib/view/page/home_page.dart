import 'package:flutter/material.dart';
import 'package:tv_app/view/widget/app_area.dart';
import 'package:tv_app/view/widget/banner_area.dart';
import 'package:tv_app/view/widget/category_area.dart';
import 'package:tv_app/view/widget/item_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BannerArea(),
            CategoryArea(),
            AppArea(),
            ItemArea(),
          ],
        ),
      ),
    );
  }
}
