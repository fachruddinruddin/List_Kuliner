import 'package:flutter/material.dart';
import 'package:latihan_3/list_item.dart';
import 'package:latihan_3/makanan.dart';
import 'package:latihan_3/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Column(
          children: [
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.list_alt_sharp, size: 30),
                SizedBox(width: 10),
                Text('List Kuliner', style: textHeader1),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ListView.builder(
              shrinkWrap: true,
              itemCount: listMakanan.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return ListItem(makanan: listMakanan[index]);
              },
            ),
          ],
        ),
      ],
    );
  }
}