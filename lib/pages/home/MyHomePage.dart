import 'package:flutter/material.dart';

import 'components/BottomTextField.dart';
import 'components/ChipWidgets.dart';
import 'components/PostImage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> chipTitle = [
    '#2023',
    '#TODAYISMONDAY',
    '#TOP',
    '#POPS!',
    '#WOW',
    '#ROW',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/bell.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const ListTile(
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '''지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?\n 
후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???\n
올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~! ''',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 10,
                    children: List.generate(chipTitle.length, (index) {
                      String title = chipTitle[index];
                      return ChipWidgets(title: title);
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //* post Image
            const PostImage(),
            SizedBox(
              height: 50,
              child: ListTile(
                title: Row(
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
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/bookmark.png'),
                    ),
                    const Text(
                      '•••',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: .5,
            ),
            const SizedBox(
              height: 10,
            ),

            //* First  comments
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

            //* comment of comment
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

            const BottomTextField(),
          ],
        ),
      ),
    );
  }
}
