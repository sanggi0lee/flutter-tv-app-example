import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tv_app/view/widget/item_tile.dart';

class ItemArea extends StatelessWidget {
  const ItemArea({super.key});

  getImages() async {
    final url = Uri.parse('https://sorm.me/api/tv/items');

    final response = await http.get(url);

    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 8.0,
      ),
      child: FutureBuilder(
        future: getImages(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (!snapshot.hasData) {
            return const Text('데이터를 불러올 수 없습니다.');
          }

          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: (snapshot.data as Map)['data'].length,
            itemBuilder: (context, index) {
              return ItemTile(
                poster: (snapshot.data as Map)['data'][index]['poster'],
                isRecent: index == 0,
                isFirstOfTopPickForYou: index == 1,
              );
            },
          );
        },
      ),
    );
  }
}
