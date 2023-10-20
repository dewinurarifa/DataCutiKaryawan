import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Cuti Karyawan',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: CutiKaryawanScreen(),
    );
  }
}

class CutiKaryawanScreen extends StatefulWidget {
  @override
  _CutiKaryawanScreenState createState() => _CutiKaryawanScreenState();
}

class _CutiKaryawanScreenState extends State<CutiKaryawanScreen> {
  // Buat list data cuti karyawan sebagai contoh
  List<Cuti> cutiList = [
    Cuti("John Doe", "Pegawai", DateTime(2023, 10, 15), DateTime(2023, 10, 20)),
    Cuti("Jane Smith", "Manajer", DateTime(2023, 11, 1), DateTime(2023, 11, 5)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manajemen Cuti Karyawan'),
      ),
      body: ListView.builder(
        itemCount: cutiList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cutiList[index].karyawanName),
            subtitle: Text(
                'Posisi: ${cutiList[index].posisi}\nCuti: ${cutiList[index].tanggalMulai.toLocal()} - ${cutiList[index].tanggalSelesai.toLocal()}'),
          );
        },
      ),
    );
  }
}

class Cuti {
  String karyawanName;
  String posisi;
  DateTime tanggalMulai;
  DateTime tanggalSelesai;

  Cuti(this.karyawanName, this.posisi, this.tanggalMulai, this.tanggalSelesai);
}