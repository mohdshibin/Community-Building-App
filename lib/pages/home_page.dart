import '../../components/circular_menu_button.dart';
import '../../components/chat_list_item.dart';
import '../components/top_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CircularMenuButton(),
      backgroundColor: Color(0xffF4F4F4),
      //backgroundColor: Color(0xffEEEEEE),
      // appBar: AppBar(
      //   title: Text('AppName'),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.search,
      //       ),
      //     ),
      //   ],
      //   elevation: 0.0,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            TopAppBar(isIconLeft: false, OnChanged: (){}, title: "AppName", icon: Icons.search),
            Flexible(
              child: ListView(
                children: [
                  ChatTypeNameTile('Friend'),
                  ChatListItem(name: 'Friend Nmae', subtitle: 'subtitle'),
                  ChatTypeNameTile('Communities'),
                  ChatListItem(name: 'Community 1', subtitle: 'subtitle'),
                  ChatListItem(name: 'Community 2', subtitle: 'subtitle'),
                  ChatListItem(name: 'Community 3', subtitle: 'subtitle'),
                  ChatListItem(name: 'Community 4', subtitle: 'subtitle'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ChatTypeNameTile(String title) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        child: SizedBox(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}