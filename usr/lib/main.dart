import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/moderator_screen.dart';
import 'screens/notulen_screen.dart';

void main() {
  runApp(const PanduanRapatApp());
}

class PanduanRapatApp extends StatelessWidget {
  const PanduanRapatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panduan Peran Rapat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/moderator': (context) => const ModeratorScreen(),
        '/notulen': (context) => const NotulenScreen(),
      },
    );
  }
}
