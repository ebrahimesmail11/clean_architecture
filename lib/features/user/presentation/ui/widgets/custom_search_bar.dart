import 'package:clean_architecture/features/user/presentation/ui/widgets/get_user_button.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  double id = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: id,
          onChanged: (p0) {
            id = p0;
            setState(() {});
          },
          min: 1,
          max: 10,
          divisions: 9,
          label: "${id.toInt()}",
        ),
        GetUserButton(onPressed: (){}),
      ],
    );
  }
}
