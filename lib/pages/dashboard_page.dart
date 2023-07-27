import 'package:facesync/routes/app_routes.dart';
import 'package:facesync/utils/dummy.dart';
import 'package:facesync/utils/helper.dart';
import 'package:flutter/material.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String now = Helper.getFormattedDateNow();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        drawer: _buildDrawer(),
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 20,
          ),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://cdn1-production-images-kly.akamaized.net/2jNeciXyH193r7jxfoUuzfeLlPg=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/1439641/original/042027300_1482131661-reddit.jpg',
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Fredi Budiman',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Mobile App Developer',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.CAMERA);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.camera_front_outlined,
                    size: 40,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
        _customDivider(),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.access_time),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Total Jam Kerja Hari Ini',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '08:00',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 0.75,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Text('Jam Masuk'),
                          Text(
                            '08:00',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_rounded,
                        size: 30,
                      ),
                      Column(
                        children: const [
                          Text('Jam Keluar'),
                          Text(
                            '17:00',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        _customDivider(),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Riwayat Absensi',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: dummyAbsensi.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.access_time),
                        title: Text(
                          dummyAbsensi[index].tipe,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          dummyAbsensi[index].tanggal,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              dummyAbsensi[index].jam,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                dummyAbsensi[index].status,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Container _customDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: const Divider(
        thickness: 1,
        color: Colors.grey,
      ),
    );
  }

  _buildAppBar() {
    String now = Helper.getFormattedDateNow();
    return AppBar(
      elevation: 0,
      title: Text(now),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
      ],
    );
  }
  
  _buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Fredi Budiman'),
            accountEmail: Text('Mobile App Developer'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn1-production-images-kly.akamaized.net/2jNeciXyH193r7jxfoUuzfeLlPg=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/1439641/original/042027300_1482131661-reddit.jpg',
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.person),
            title: const Text('Profil'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.date_range),
            title: const Text('Cuti'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.settings),
            title: const Text('Pengaturan'),
          ),
          const Spacer(),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.logout_rounded),
            title: const Text('Keluar'),
          ),
        ],
      ),
    );

  }
}
