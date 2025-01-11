import 'package:clean_architecture/features/user/presentation/ui/widgets/custom_search_bar.dart';
import 'package:clean_architecture/features/user/presentation/ui/widgets/landing_widget.dart';
import 'package:clean_architecture/features/user/presentation/ui/widgets/user_data_widget.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          LandingWidget(),
          UserDataWidget(),
          CustomSearchBar(),
        ],
      ),
    );
  }
}