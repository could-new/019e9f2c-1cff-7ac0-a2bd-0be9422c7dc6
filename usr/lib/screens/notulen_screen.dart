import 'package:flutter/material.dart';

class NotulenScreen extends StatelessWidget {
  const NotulenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notulen'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const Icon(Icons.edit_document, size: 80, color: Colors.green),
            const SizedBox(height: 16),
            const Text(
              'Apa itu Notulen?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Notulen (atau notulis) adalah seseorang yang bertugas untuk mencatat seluruh jalannya rapat atau diskusi, dari awal hingga akhir, dan menyusunnya menjadi sebuah laporan resmi (notula).',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const Divider(height: 32, thickness: 1),
            _buildSectionTitle('Tugas Notulen'),
            _buildListItem('Mencatat waktu, tempat, dan daftar hadir peserta rapat.'),
            _buildListItem('Mencatat poin-poin penting, gagasan, dan argumen yang disampaikan selama diskusi.'),
            _buildListItem('Mencatat keputusan, kesimpulan, dan rencana tindak lanjut (action items).'),
            _buildListItem('Menyusun draft notula secara rapi dan sistematis setelah rapat selesai.'),
            _buildListItem('Mendistribusikan hasil notula kepada pihak-pihak terkait.'),
            const Divider(height: 32, thickness: 1),
            _buildSectionTitle('Fungsi Notulen'),
            _buildListItem('Pusat Informasi: Menjadi sumber rujukan otentik tentang apa yang telah dibahas dan diputuskan.'),
            _buildListItem('Alat Bukti: Sebagai dokumentasi resmi dan bukti tertulis pelaksaan sebuah kegiatan/rapat.'),
            _buildListItem('Pengingat Keputusan: Mengingatkan peserta tentang tugas atau tindak lanjut yang harus dilakukan.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
