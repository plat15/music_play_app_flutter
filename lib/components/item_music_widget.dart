import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_play_app_flutter/pages/deitail/music_detail_page.dart';

import '../gen/assets.gen.dart';
import '../models/albumb_model.dart';
import '../models/music_model.dart';

class ItemMusicWidget extends StatelessWidget {
  // const ItemMusicWidget({
  //   super.key,
  //   required this.model,
  //   required this.player,
  // });
  final MusicModel model;
  const ItemMusicWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MusicDetailPage(
                model: AlbumModel(
                    id: 0,
                    title: "HIP HOP",
                    describe: "MUSIC",
                    imageUrl: "assets/images/img_handphone_two.png"),
              ),
            ));
      },
      child: Container(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  shadowColor: Colors.grey,
                  child: CachedNetworkImage(
                    imageUrl: model.imageUrl ?? "",
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      model.author ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(model.time ?? ""),
                const SizedBox(
                  width: 20,
                ),
                Assets.icons.ictin.svg(),
                const SizedBox(
                  width: 30,
                ),
                Assets.icons.icmenu.svg(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
