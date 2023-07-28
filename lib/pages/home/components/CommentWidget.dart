import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          title: const Row(
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
          trailing: IconButton(
            onPressed: () {},
            icon: const Text(
              '•••',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '''어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!''',
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
