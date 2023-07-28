import 'package:flutter/material.dart';

import 'components/BottomTextField.dart';
import 'components/CommentWidget.dart';
import 'components/IconListWidget.dart';
import 'components/PostImage.dart';
import 'components/ProfileDetailsWidget.dart';
import 'components/SubCommentWidget.dart';
import 'components/TitleAndDescWidget.dart';

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
            const ProfileDetailsWidget(),
            TitleAndDescWidget(chipTitle: chipTitle),
            const SizedBox(
              height: 10,
            ),
            //* post Image
            const PostImage(),
            // icon of post like comment button
            const IconListWidget(),
            const Divider(
              thickness: .5,
            ),
            const SizedBox(
              height: 10,
            ),

            //* First  comments
            const CommentWidget(),

            //* sub comment
            const SubCommentWidget(),
            // bottom textfield and send
            const BottomTextField(),
          ],
        ),
      ),
    );
  }
}
