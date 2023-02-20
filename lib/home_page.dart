import 'package:flutter/material.dart';

import 'image_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final coolImages = [
      'https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg?w=2000',
      'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg',
      'https://thumbs.dreamstime.com/b/purple-flower-2212075.jpg',
      'https://cdn2.stylecraze.com/wp-content/uploads/2013/07/25-Most-Beautiful-Blue-Flowers.jpg',
      'http://www.coolphptools.com/userfiles/images/sample.jpg?rand=',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/09c5ea6df1bd4be6baaaac5e003e7047_9366/Forum_Low_Shoes_White_FY7756_01_standard.jpg'
    ];
    return ImageColors(
      image: NetworkImage(coolImages[2]),
      imageSize: const Size(256.0, 160.0),
    );
  }
}
