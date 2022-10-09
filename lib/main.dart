import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Gedung Baru FMIPA Untan',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Pontianak, Kalimantan Barat',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay',
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 216, 117, 3),
          ),
          const Text('4/5'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.directions, 'RUTE'),
        _buildButtonColumn(color, Icons.share, 'BAGIKAN'),
        _buildButtonColumn(color, Icons.bookmark, 'SIMPAN'),
        _buildButtonColumn(color, Icons.public, 'SITUS'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Gedung Baru Fakultas MIPA Untan adalah Gedung baru yang dibangun oleh Untan '
        'Di dalam gedung baru tersebut terdapat fasilitas seperti ruang kelas '
        'yang nyaman, toilet, mushola, smart area, dan area parkir.'
        ' Gedung baru ini terletak di Jl. Prof. Dr. H Jl. Profesor Dokter H. Hadari Nawawi,  '
        'Bansir Laut, Kec. Pontianak Tenggara, Kota Pontianak, Kalimantan Barat  '
        '78124.  '
        '',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontFamily: 'SFProDisplay',
          fontSize: 16.0,
        ),
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Gedung Baru FMIPA',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Universitas Tanjungpura'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/mipa.jpg',
              width: 600,
              height: 260,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
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
              fontFamily: "SFProDisplay",
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
