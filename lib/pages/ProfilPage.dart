import 'package:aplikasi/pages/HomePage.dart';
import 'package:aplikasi/pages/RegisterApp.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  final String profilePic = 'data:image/jpeg;base64,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'; // Ganti dengan URL gambar profil kamu
  final String username = 'Rafi Andika'; // Nama pengguna
  final String email = 'asik@gmail.com'; // Email pengguna
  final String bio = 'A passionate Flutter developer and tech enthusiast. Love to create and design apps.'; // Bio pengguna

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 184, 231), // Warna hijau muda untuk AppBar
        elevation: 0,
        title: Text('Profile', style: TextStyle(color: Colors.white, fontSize: 18)), 
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // Aksi untuk navigasi ke halaman pengaturan
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Gambar Profil dan Info Pengguna
            Container(
              padding: const EdgeInsets.symmetric(vertical: 60), // Luaskan padding
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 63, 184, 231), // Warna hijau muda untuk background
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  // Gambar Profil
                  CircleAvatar(
                    radius: 70, // Ukuran gambar profil
                    backgroundImage: NetworkImage(profilePic),
                  ),
                  SizedBox(height: 20),
                  // Nama Pengguna
                  Text(
                    username,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20, // Ukuran font nama lebih kecil
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Email Pengguna
                  Text(
                    email,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16, // Ukuran font email
                    ),
                  ),
                ],
              ),
            ),

            // Bagian Tentang Pengguna
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bio',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    bio,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 30),
                  // Tombol untuk Mengedit Profil
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(
                        context, 
                        MaterialPageRoute(builder: (context) => Homepage()),
                      ); 
                    },
                    icon: Icon(Icons.edit, color: Colors.white),
                    label: Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 63, 184, 231), // Warna hijau muda untuk tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    ),
                  ),
                ],
              ),
            ),

            // Statistik atau Info Tambahan (opsional, jika ingin menambah info lainnya)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Jumlah Followers
                  _buildStatCard('Followers', '1.2K'),
                  // Jumlah Following
                  _buildStatCard('Following', '350'),
                  // Jumlah Posts
                  _buildStatCard('Posts', '75'),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Tombol Logout
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: ElevatedButton(
                onPressed: () {
                  // Logika Logout, bisa menggunakan Firebase signOut() atau logika lain
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => RegisterApp()),
                  );
                },
                child: Text('Logout', style: TextStyle(color: Colors.black, fontSize: 10)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 63, 184, 231),
                  side: BorderSide(color: Color.fromARGB(255, 63, 184, 231), width: 1), // Border hijau muda
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat kartu statistik
  Widget _buildStatCard(String title, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
