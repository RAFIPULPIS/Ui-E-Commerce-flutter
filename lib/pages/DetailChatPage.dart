import 'package:flutter/material.dart';

class DetailChatPage extends StatelessWidget {
  final String nickname;
  final String profilePic;
  final List<Map<String, String>> messages = [
    {'sender': 'me', 'message': 'woi apa kabar?'},
    {'sender': 'other', 'message': 'Baik bre'},
    {'sender': 'me', 'message': 'asikkk'},
    {'sender': 'other', 'message': 'gass nongky uy'},
  ];

  DetailChatPage({
    required this.nickname,
    required this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(profilePic),
              radius: 20,
            ),
            SizedBox(width: 10),
            Text(
              nickname,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                bool isMe = messages[index]['sender'] == 'me';
                return Align(
                  alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isMe ? Colors.blueAccent : Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      messages[index]['message']!,
                      style: TextStyle(
                        color: isMe ? Colors.white : Colors.black87,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    // Function to send a message
                  },
                  backgroundColor: Colors.blueAccent,
                  child: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
