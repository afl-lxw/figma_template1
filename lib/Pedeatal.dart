import 'package:flutter/material.dart';

class Pedeatal extends StatefulWidget {
  const Pedeatal({super.key});

  @override
  State<Pedeatal> createState() => _PedeatalState();
}

class _PedeatalState extends State<Pedeatal> {
  final List<int> colors = [
    0xFF6D60F6,
    0xFF6D60F6,
    0xFF6D60F6,
  ];

  // ignore: non_constant_identifier_names
  Widget _TopWeight(BuildContext context) {
    return Container(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/user.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0), //容器外补白
                child: const Text(
                  '@shan.design 666', // 替换为您的文字
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _CenterWeight(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.fromLTRB(50, 30, 0, 0),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          'Free',
          style: TextStyle(
              fontFamily: 'Times New Roman',
              color: Colors.white,
              fontSize: 68,
              height: 1),
        ),
        Text(
          'iphone',
          style: TextStyle(
              fontFamily: 'Times New Roman',
              color: Colors.white,
              fontSize: 68,
              height: 1),
        ),
        Text(
          'Mockup',
          style: TextStyle(
              fontFamily: 'Times New Roman',
              color: Colors.white,
              fontSize: 68,
              height: 1),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'iphone with Pedeatal',
          style: TextStyle(
              fontFamily: 'Times New Roman', color: Colors.white, fontSize: 24),
        ),
        Text(
          '3D Background',
          style: TextStyle(
              fontFamily: 'Times New Roman', color: Colors.white, fontSize: 24),
        )
      ]),
    ));
  }

  Widget _BottomWeight(BuildContext context) {
    return Container(
      height: 150,
      child: Padding(
        padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_downward,
              color: Colors.white,
              size: 50,
              semanticLabel: '向下',
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Download Form',
                    style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.white,
                        fontSize: 24),
                  ),
                  Text(
                    'Figma Community',
                    style: TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.white,
                        fontSize: 24),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.vertical, // 设置页面滚动方向
        itemBuilder: (context, index) {
          return Container(
            color: Color(colors[index]), // 设置页面背景颜色
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TopWeight(context),
                _CenterWeight(context),
                _BottomWeight(context),
              ],
            ),
          );
        },
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: CustomScrollView(
  //       slivers: [
  //         SliverAppBar(
  //           // 顶部栏的样式
  //           backgroundColor: Colors.blue, // 设置顶部栏颜色与内容区颜色一致
  //           pinned: true,
  //           expandedHeight: 200,
  //           flexibleSpace: FlexibleSpaceBar(
  //             title: Text('Top Bar'),
  //             background: Image.network(
  //               'https://via.placeholder.com/350x150',
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         ),
  //         SliverList(
  //           delegate: SliverChildBuilderDelegate(
  //             (context, index) => ListTile(
  //               title: Text('Item $index'),
  //             ),
  //             childCount: 20,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
