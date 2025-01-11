import 'package:clean_architecture/features/user/presentation/controller/user_controller.dart';
import 'package:clean_architecture/features/user/presentation/ui/widgets/custom_search_bar.dart';
import 'package:clean_architecture/features/user/presentation/ui/widgets/landing_widget.dart';
import 'package:clean_architecture/features/user/presentation/ui/widgets/user_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final UserController _controller = Get.find<UserController>();
    return GetBuilder<UserController>(
      builder: (controller) {
        return Scaffold(
          body: controller.isLoading
              ? Center(child: CircularProgressIndicator())
              : controller.user == null
                  ? const Center(child: Text("No user data available"))
                  : ListView(
                      children: [
                        const LandingWidget(),
                        UserDataWidget(
                          userEntity: controller.user!,
                        ),
                        const CustomSearchBar(),
                      ],
                    ),
        );
      },
    );
  }
}
