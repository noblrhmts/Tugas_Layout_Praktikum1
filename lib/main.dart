import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat titleSection untuk digunakan di dalam body
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Old Trafford Stadium',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
                const Text(
                  'Kelurahan Manchester Utara, Manchester, Inggris',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Membuat buttonSection
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(context, Colors.blue, Icons.call, 'CALL'),
        _buildButtonColumn(context, Colors.blue, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(context, Colors.blue, Icons.share, 'SHARE'),
      ],
    );

    // Membuat textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Old Trafford adalah sebuah stadion sepak bola '
        'yang berlokasi di Old Trafford, '
        'Greater Manchester, Inggris, dan merupakan '
        'markas klub Manchester United.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nobel Rahmat Sani (362358302075)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/old_trafford.jpg', // Menambahkan gambar di sini
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection, // Menampilkan buttonSection di dalam body
            textSection,  // Menampilkan textSection di dalam body
          ],
        ),
      ),
    );
  }

  // Mengubah parameter agar menerima context dan color dari luar
  static Column _buildButtonColumn(
      BuildContext context, Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}