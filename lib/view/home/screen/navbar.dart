import 'package:belajar_bloc/common/gen/assets.gen.dart';
import 'package:belajar_bloc/shared/themes/themes.dart';
import 'package:belajar_bloc/view/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // agar label tidak hilang
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home1.svg(color: Colors.grey),
            label: 'Beranda',
            activeIcon: Assets.icons.home1.svg(color: Colors.blue),
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.pelatihan.svg(),
            label: 'Pelatihan-Ku',
            activeIcon: Assets.icons.pelatihan.svg(color: Colors.blue),
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.penugasanSvg.svg(),
            label: 'Penugasan',
            activeIcon: Assets.icons.penugasanSvg.svg(color: Colors.blue),
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.akun.svg(),
            label: 'Akun',
            activeIcon: Assets.icons.akun.svg(color: Colors.blue),
          ),
        ],
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedLabelStyle:
            AppTextStyle.body4, // Gaya teks kustom untuk label terpilih
        unselectedLabelStyle:
            AppTextStyle.body4, // Gaya teks kustom untuk label tidak terpilih
      ),
      body: <Widget>[
        const HomeScreen(),
        Container(
          color: AppColors.neutral.ne05,
          alignment: Alignment.center,
          child: const Text('Transaksi'),
        ),
        Container(
          color: AppColors.neutral.ne05,
          alignment: Alignment.center,
          child: const Text('Keringanan'),
        ),
        Container(
          color: AppColors.neutral.ne05,
          alignment: Alignment.center,
          child: const Text('Profile'),
        ),
      ][currentPageIndex],
    );
  }
}
