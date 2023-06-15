import 'package:flutter/material.dart';
import 'package:music_play_app_flutter/components/item_album_widget.dart';

import '../base/base_page.dart';
import '../components/item_music_widget.dart';
import '../gen/assets.gen.dart';
import '../generated/l10n.dart';
import 'home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with MixinBasePage<HomeVM> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
              _scaffoldKey.currentState?.openEndDrawer();
            } else {
              _scaffoldKey.currentState?.openDrawer();
            }
          },
          child: Container(
            margin: const EdgeInsets.only(left: 30.0),
            child: Assets.icons.icdrawer.svg(),
          ),
        ),
        // leading: Container(
        //   margin: const EdgeInsets.only(left: 30.0),
        //   child: Assets.icons.icdrawer.svg(),
        // ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: Assets.icons.icsearch.svg(),
          )
        ],
        title: const Text(
          "Music Players",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(S.of(context).txt_no_data),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: builder(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 8.0),
              child: Text(
                S.of(context).txt_top_album,
                style: const TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: SizedBox(
                height: 340.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: provider.listDataAlbum.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemAlbumbWidget(
                        model: provider.listDataAlbum[index]);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, bottom: 8.0),
              child: Text(
                S.of(context).txt_recommended,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                child: SizedBox(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: provider.listViewMusic.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemMusicWidget(
                        model: provider.listViewMusic[index],
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  HomeVM create() => HomeVM();

  @override
  void initialise(BuildContext context) {}
}
