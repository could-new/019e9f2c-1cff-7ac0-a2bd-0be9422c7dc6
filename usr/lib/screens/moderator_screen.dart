import 'package:flutter/material.dart';

class ModeratorScreen extends StatelessWidget {
  const ModeratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moderator'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const Icon(Icons.record_voice_over, size: 80, color: Colors.blueAccent),
            const SizedBox(height: 16),
            const Text(
              'Apa itu Moderator?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Moderator adalah seseorang yang memimpin, mengatur, dan mengarahkan jalannya suatu acara, diskusi, atau rapat agar berjalan lancar, tertib, dan mencapai tujuan yang diharapkan.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const Divider(height: 32, thickness: 1),
            _buildSectionTitle('Tugas Moderator'),
            _buildListItem('Membuka dan menutup acara/diskusi.'),
            _buildListItem('Memperkenalkan narasumber atau peserta rapat.'),
            _buildListItem('Mengatur tata tertib dan alokasi waktu.'),
            _buildListItem('Memandu jalannya tanya jawab antara peserta dan narasumber.'),
            _buildListItem('Menyimpulkan hasil diskusi secara singkat di akhir acara.'),
            const Divider(height: 32, thickness: 1),
            _buildSectionTitle('Fungsi Moderator'),
            _buildListItem('Penengah: Menjaga objektivitas dan menengahi perdebatan.'),
            _buildListItem('Pengatur Lalu Lintas Komunikasi: Memastikan semua pihak mendapatkan kesempatan berbicara.'),
            _buildListItem('Penghidup Suasana: Menjaga audiens tetap fokus dan antusias selama acara berlangsung.'),
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
          color: Colors.blueAccent,
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
