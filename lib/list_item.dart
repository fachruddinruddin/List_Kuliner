import 'package:flutter/material.dart';
import 'package:latihan_3/makanan.dart';
import 'package:latihan_3/detail_page.dart';
import 'package:latihan_3/styles.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;

  const ListItem({required this.makanan, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(makanan: makanan),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: listitem,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 178, 178, 178),
              offset: const Offset(1.0, 2.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              makanan.gambar,
              height: 75,
              width: 75,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    makanan.nama,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    makanan.deskripsi,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${makanan.harga}',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.food_bank_rounded,
              color: headerBackColor,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
