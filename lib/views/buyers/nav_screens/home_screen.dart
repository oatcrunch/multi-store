import 'package:flutter/material.dart';
import 'package:multi_store/views/buyers/nav_screens/widgets/search_input_widget.dart';
import 'package:multi_store/views/buyers/nav_screens/widgets/welcome_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const WelcomeText(),
          const SizedBox(
            height: 14,
          ),
          const SearchInputWidget()
        ],
      ),
    );
  }
}
