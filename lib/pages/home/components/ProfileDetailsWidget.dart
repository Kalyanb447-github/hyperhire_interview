import 'package:flutter/material.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/profile.png'),
      ),
      title: Row(
        children: [
          Text(
            '안녕 나 응애 ',
          ),
          Icon(Icons.check_circle, color: Color(0xFF01B99F)),
          Text(
            ' 1일전',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
      subtitle: Text(
        '165cm • 53kg',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
