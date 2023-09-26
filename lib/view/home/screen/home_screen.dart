import 'package:belajar_bloc/common/gen/assets.gen.dart';
import 'package:belajar_bloc/shared/independent/font_weight.dart';
import 'package:belajar_bloc/shared/themes/themes.dart';
import 'package:belajar_bloc/view/home/widgets/catalog_carousel.dart';
import 'package:belajar_bloc/view/home/widgets/fitur_atas.dart';
import 'package:belajar_bloc/view/home/widgets/fitur_bawah.dart';
import 'package:belajar_bloc/view/home/widgets/sertifikat_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'assets/images/carousel1.png',
    'assets/images/carousel1.png',
    'assets/images/carousel1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        // alignment: Alignment.topCenter,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 64, 16, 96),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 25,
                    child: Image.asset(
                      'assets/images/avatar.png',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo',
                        style: AppTextStyle.body3
                            .copyWith(color: AppColors.neutral.ne01)
                            .setRegular(),
                      ),
                      Text(
                        'John Snow',
                        style: AppTextStyle.body2
                            .copyWith(color: AppColors.neutral.ne01)
                            .setMedium(),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Assets.icons.search.svg(width: 30),
                  const SizedBox(
                    width: 16,
                  ),
                  Assets.icons.notification.svg(width: 30),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/ornamen.png',
              width: 180,
              height: 134,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 208,
            bottom: 0,
            child: SingleChildScrollView(
              // Tambahkan SingleChildScrollView agar konten dapat discroll
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 107,
                      ),
                      Text(
                        'Fitur',
                        style: AppTextStyle.body2.setMedium(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const FiturAtas(),
                      const SizedBox(
                        height: 16,
                      ),
                      const FiturBawah(),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Katalog',
                        style: AppTextStyle.body2.setMedium(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      // Daftar katalog yang dapat di-scroll
                      CarouselKatalog(imageList: imageList),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SertifikatContainer(),
        ],
      ),
    );
  }
}
