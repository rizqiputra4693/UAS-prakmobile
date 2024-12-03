import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String author;
  final String date;
  final String imageUrl;

  const NewsItem({
    Key? key,
    required this.title,
    required this.author,
    required this.date,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        height:
            180, // Meningkatkan tinggi kontainer untuk memberi ruang lebih pada teks
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 10,
              right: 10, // Menambahkan padding kanan
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2, // Mengizinkan maksimal 2 baris teks
                    overflow: TextOverflow
                        .ellipsis, // Memotong teks jika lebih dari 2 baris
                  ),
                  const SizedBox(
                      height: 5), // Menambahkan jarak antara judul dan penulis
                  Text(
                    author,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
