import 'package:clean_architecture/features/user/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';

class UserDataWidget extends StatelessWidget {
  const UserDataWidget({required this.userEntity, super.key});
final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          leading:const  Icon(Icons.person),
          iconColor: Colors.blueAccent,
          title: Text(userEntity.name),
        ),
        ListTile(
          leading: const Icon(Icons.email),
          iconColor: Colors.blueAccent,
          title: Text(userEntity.email),
        ),
        ListTile(
          leading: const Icon(Icons.phone),
          iconColor: Colors.blueAccent,
          title: Text(userEntity.phone),
        ),
        ListTile(
         leading: const Icon(Icons.location_city),
          iconColor: Colors.blueAccent,
          title: Text(userEntity.address.city),
        ),
      ],
    );
  }
}
