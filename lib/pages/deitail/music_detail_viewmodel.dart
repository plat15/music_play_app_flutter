import 'package:music_play_app_flutter/base/base_viewmodel.dart';

import '../../models/music_model.dart';

class MusicDetailVM extends BaseViewModel {
  List<MusicModel> listViewMusic = [];

  @override
  void onInit() {
    fetchMusicAll();
  }

  Future<void> fetchMusicAll() async {
    listViewMusic.clear();
    listViewMusic.add(MusicModel(
        id: 1,
        type: 0,
        title: 'The last best1',
        desciption: 'MUSIC',
        time: '3.30',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'making_my_way.mp3',
        isLoadSound: false));
    listViewMusic.add(MusicModel(
        id: 2,
        type: 1,
        title: 'The last best2',
        desciption: 'MUSIC',
        time: '3.30',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'Infinity.mp3',
        isLoadSound: false));
    notifyListeners();
  }
}
