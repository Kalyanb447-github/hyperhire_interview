import 'package:flutter/material.dart';

import 'ChipWidgets.dart';

class TitleAndDescWidget extends StatelessWidget {
  const TitleAndDescWidget({
    super.key,
    required this.chipTitle,
  });

  final List<String> chipTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
    );
  }
}
