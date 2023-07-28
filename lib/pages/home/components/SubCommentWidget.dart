import 'package:flutter/material.dart';

class SubCommentWidget extends StatelessWidget {
  const SubCommentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile2.png'),
            ),
            title: const Row(
              children: [
                Text(
                  'ㅇㅅㅇ',
                ),
                Text(
                  ' 1일전',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Text(
                '•••',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/heart.png'),
                  ),
                  const Text(
                    '5',
                    style: TextStyle(color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/sms.png'),
                  ),
                  const Text(
                    '5',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
