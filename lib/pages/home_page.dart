import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/widget/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'Travel Frelancer',
                  style: TextStyle(
                    color: lightBlueColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friend',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Joshuer',
                        text: "Sorry,You're not my ty...",
                        time: 'NOW',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriella',
                        text: "i saw it clearly and mig...",
                        time: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Group',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_1.png',
                        name: 'Jakarta Fair',
                        text: "why does everyone ca...",
                        time: '11:11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_2.png',
                        name: 'Angga',
                        text: "Here here we can go....",
                        time: '7:11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_3.png',
                        name: 'Bentley',
                        text: "The car which does not..",
                        time: '7:11',
                        unread: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
