import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ini Flutter Gw',
      debugShowCheckedModeBanner: false,
      home: const TampilanAwalWkwk(),
    );
  }
}

class TampilanAwalWkwk extends StatelessWidget {
  const TampilanAwalWkwk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('deleu ie aplikasi'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        foregroundColor: Colors.white,
      ),

      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE8EAF6),
              Colors.white,
            ],
          ),
        ),

        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // Icon
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.flutter_dash,
                      size: 70,
                      color: Colors.indigoAccent,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Judul
                  const Text(
                    'Selamat Datang!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Deskripsi
                  const Text(
                    'Ini adalah tampilan awal aplikasi Flutter saya.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Tombol
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.rocket_launch),
                      label: const Text(
                        'Mulai Aplikasi',
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigoAccent,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Footer
                  const Text(
                    'Dibuat menggunakan Flutter',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

