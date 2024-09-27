import 'package:aplikasi/pages/DetailChatPage.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final List<Map<String, dynamic>> chatUsers = [
    {
      'nickname': 'Rafi',
      'message': 'lagi ngapain brok?',
      'profilePic': '1.jpeg', // URL gambar profil
    },
    {
      'nickname': 'Jokowi',
      'message': 'mas rafi saya tf 200jt ya',
      'profilePic': 'https://example.com/profile2.jpg',
    },
    {
      'nickname': 'kaesang kirik',
      'message': 'bacot lu',
      'profilePic': 'https://example.com/profile3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: chatUsers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(chatUsers[index]['profilePic']),
              ),
              title: Text(
                chatUsers[index]['nickname'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blueAccent,
                ),
              ),
              subtitle: Text(
                chatUsers[index]['message'],
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.message, color: Colors.blueAccent),
              onTap: () {
                Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailChatPage(
        nickname: chatUsers[index]['nickname'],
        profilePic: chatUsers[index]['profilePic'],
      ),
    ),
  );
              },
            ),
          );
        },
      ),
    );
  }
}
