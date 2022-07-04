import '../components/top_app_bar.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: SafeArea(
        child: Column(
          children: [
            TopAppBar(
              isIconLeft: true,
              OnChanged: () {
                Navigator.pop(context);
              },
              title: "Settings",
              icon: Icons.arrow_back,
            ),
            Flexible(
              child: ListView(
                children: [
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}