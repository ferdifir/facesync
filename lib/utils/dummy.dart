class Absen {
  final String tipe;
  final String jam;
  final String tanggal;
  final String status;

  Absen({
    required this.tipe,
    required this.jam,
    required this.tanggal,
    required this.status,
  });
}

List<Absen> dummyAbsensi = [
  Absen(
    tipe: 'Masuk',
    jam: '08:50',
    tanggal: 'Senin, 20 September 2021',
    status: 'Terlambat',
  ),
  Absen(
    tipe: 'Keluar',
    jam: '16:45',
    tanggal: 'Senin, 20 September 2021',
    status: 'Lebih Cepat',
  ),
  Absen(
    tipe: 'Masuk',
    jam: '08:00',
    tanggal: 'Senin, 20 September 2021',
    status: 'Tepat Waktu',
  ),
  Absen(
    tipe: 'Keluar',
    jam: '17:37',
    tanggal: 'Senin, 20 September 2021',
    status: 'Lebih Lambat',
  ),
];
