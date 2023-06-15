import 'package:flutter/material.dart';
import 'package:music_play_app_flutter/components/item_album_widget.dart';
import 'package:music_play_app_flutter/models/albumb_model.dart';
import 'package:music_play_app_flutter/models/music_model.dart';
import 'package:provider/provider.dart';

import '../../gen/assets.gen.dart';
import 'music_detail_viewmodel.dart';
import 'widgets/iteam_music_widget.dart';

class MusicDetailPage extends StatefulWidget {
  final AlbumModel model;
  const MusicDetailPage({Key? key, required this.model}) : super(key: key);
  @override
  State<MusicDetailPage> createState() => _MusicDetailPageState();
}

class _MusicDetailPageState extends State<MusicDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 30.0),
            child: Assets.icons.icdrawer.svg(),
          ),
        ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: SizedBox(
              height: 340.0,
              child: ItemAlbumbWidget(
                model: widget.model,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 10.0),
              child: Selector<MusicDetailVM, List<MusicModel>>(
                selector: (_, vm) => vm.listViewMusic,
                shouldRebuild: (data1, data2) => true,
                builder: (_, data, __) {
                  return ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemMusicWidget(
                        model: data[index],
                        callback: (MusicModel value) {
                          setState(() {
                            // playing = !playing;
                          });
                        },
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
