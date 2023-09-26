import 'package:belajar_bloc/shared/independent/font_weight.dart';
import 'package:belajar_bloc/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class FiturBawah extends StatelessWidget {
  const FiturBawah({
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
              child: Image.asset('assets/icons/penugasan.png'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Penugasan',
              style: AppTextStyle.body4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 56,
              child: Image.asset('assets/icons/pelatihanku.png'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Pelatihan\nKu',
              style: AppTextStyle.body4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 56,
              child: Image.asset('assets/icons/simulasi_penilaian.png'),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Simulasi\n& Penilaian',
              style: AppTextStyle.body4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FractionallySizedBox(
                    heightFactor: 0.6,
                    child: Container(
                      // height: 600,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  'Semua Fitur',
                                  style: AppTextStyle.body2.setSemiBold(),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/rencana_pelatihan.png'),
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
                                          child: Image.asset(
                                              'assets/icons/layanan_konsultasi.png'),
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
                                          child: Image.asset(
                                              'assets/icons/nilai_sertifikat.png'),
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
                                          child: Image.asset(
                                              'assets/icons/forum_diskusi.png'),
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
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/penugasan.png'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'Penugasan',
                                          style: AppTextStyle.body4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/pelatihanku.png'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'Pelatihan\nKu',
                                          style: AppTextStyle.body4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/simulasi_penilaian.png'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'Simulasi\n& Penilaian',
                                          style: AppTextStyle.body4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/lainnya.png'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'Lainnya',
                                          style: AppTextStyle.body4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/rencana_pelatihan.png'),
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
                                          child: Image.asset(
                                              'assets/icons/layanan_konsultasi.png'),
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
                                          child: Image.asset(
                                              'assets/icons/nilai_sertifikat.png'),
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
                                          child: Image.asset(
                                              'assets/icons/forum_diskusi.png'),
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
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/penugasan.png'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'Penugasan',
                                          style: AppTextStyle.body4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/pelatihanku.png'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'Pelatihan\nKu',
                                          style: AppTextStyle.body4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/simulasi_penilaian.png'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'Simulasi\n& Penilaian',
                                          style: AppTextStyle.body4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 56,
                                          child: Image.asset(
                                              'assets/icons/lainnya.png'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          'Lainnya',
                                          style: AppTextStyle.body4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                });
          },
          child: Column(
            children: [
              SizedBox(
                width: 56,
                child: Image.asset('assets/icons/lainnya.png'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Lainnya',
                style: AppTextStyle.body4,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
