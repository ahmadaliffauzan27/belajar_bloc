import 'package:belajar_bloc/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class FiturAtas extends StatelessWidget {
  const FiturAtas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              width: 56,
              child: Image.asset('assets/icons/rencana_pelatihan.png'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Rencana\nPelatihan',
              style: AppTextStyle.body4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 56,
              child: Image.asset('assets/icons/layanan_konsultasi.png'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Layanan\nKonsultasi',
              style: AppTextStyle.body4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 56,
              child: Image.asset('assets/icons/nilai_sertifikat.png'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Nilai\n& Sertifikat',
              style: AppTextStyle.body4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 56,
              child: Image.asset('assets/icons/forum_diskusi.png'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Forum\nDiskusi',
              style: AppTextStyle.body4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
