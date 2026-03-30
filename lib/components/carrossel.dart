import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carrossel extends StatelessWidget {
  final List<String> imagens = [
    'https://i.redd.it/tsumugi-rintarou-icons-v0-nyjf7nfq8fbf1.png?width=720&format=png&auto=webp&s=57ea202f5adfe0b874cd7d03cc002c11a07f2ebd',
    'https://i.redd.it/maomao-got-the-cat-ears-out-as-soon-as-she-heard-something-v0-b4r06nya1pde1.jpg?width=1080&format=pjpg&auto=webp&s=9d05101897bad6e7f25c3d5e54e25eadbccee40f',
    'https://static.wikia.nocookie.net/owarinoseraph/images/1/1e/Mikaela_Hyakuya_%28Anime%29_%282%29.png/revision/latest?cb=20200704125649',
    'https://static.wikia.nocookie.net/tokyo-revengers/images/e/e6/Keisuke_Baji_%28Anime%29.png/revision/latest?cb=20220411063346',
    'https://static.wikia.nocookie.net/saikikusounosainan/images/b/b0/Saiki_anime_1.png/revision/latest/scale-to-width-down/1200?cb=20191026233137',
    'https://i.redd.it/did0ra24dl1c1.jpg',
    'https://pbs.twimg.com/media/FxMsidmXwAAB6MY.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        // width: 250,
        height: 250,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: imagens.map((url) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.network(
            url,
            fit: BoxFit.cover,
            width: double.infinity,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error, color: Colors.red),
          ),
        );
      }).toList(),
    );
  }
}
