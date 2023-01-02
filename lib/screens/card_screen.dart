import 'package:flutter/material.dart';

import 'package:app_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              lTitle: 'takotime',
              rTitle: 'WAH!',
              imageUrl: 'https://images5.alphacoders.com/114/1143864.jpg'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              lTitle: 'inart',
              rTitle: 'WAH!',
              imageUrl:
                  'https://w0.peakpx.com/wallpaper/407/623/HD-wallpaper-anime-virtual-youtuber-hololive-ninomae-ina-nis.jpg'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              lTitle: 'takodachi',
              imageUrl:
                  'https://images.hdqwalls.com/wallpapers/ninomae-ina-nis-hololive-xd.jpg'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl:
                  'https://images.wallpapersden.com/image/wxl-virtual-youtuber-hd-ninomae-ina-nis_85973.jpg'),
        ],
      ),
    );
  }
}
