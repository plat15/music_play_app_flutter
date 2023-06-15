import '../base/base_viewmodel.dart';
import '../models/albumb_model.dart';
import '../models/music_model.dart';

class HomeVM extends BaseViewModel {
  List<AlbumModel> listDataAlbum = [];
  List<MusicModel> listViewMusic = [];

  @override
  void onInit() {
    fetchAlbumAll();
    fetchMusicAll();
  }

  Future fetchAlbumAll() async {
    listDataAlbum.add(AlbumModel(
        id: 0,
        title: 'Hip Hop',
        describe: 'MUSIC',
        imageUrl: 'assets/images/img_handphone.png'));

    listDataAlbum.add(AlbumModel(
        id: 1,
        title: 'BOLERO',
        describe: 'MUSIC',
        imageUrl: 'assets/images/img_handphone_two.png'));

    listDataAlbum.add(AlbumModel(
        id: 2,
        title: 'Hip Hop',
        describe: 'MUSIC',
        imageUrl: 'assets/images/img_handphone.png'));

    listDataAlbum.add(AlbumModel(
        id: 3,
        title: 'Hip Hop',
        describe: 'MUSIC',
        imageUrl: 'assets/images/img_handphone_two.png'));
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
    listViewMusic.add(MusicModel(
        id: 3,
        type: 1,
        title: 'The last best3',
        desciption: 'MUSIC',
        time: '3.30',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    listViewMusic.add(MusicModel(
        id: 4,
        type: 1,
        title: 'The last best4',
        desciption: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    listViewMusic.add(MusicModel(
        id: 5,
        type: 0,
        title: 'The last best5',
        desciption: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
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
    listViewMusic.add(MusicModel(
        id: 3,
        type: 1,
        title: 'The last best3',
        desciption: 'MUSIC',
        time: '3.30',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    listViewMusic.add(MusicModel(
        id: 4,
        type: 1,
        title: 'The last best4',
        desciption: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    listViewMusic.add(MusicModel(
        id: 5,
        type: 0,
        title: 'The last best5',
        desciption: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
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
    listViewMusic.add(MusicModel(
        id: 3,
        type: 1,
        title: 'The last best3',
        desciption: 'MUSIC',
        time: '3.30',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    listViewMusic.add(MusicModel(
        id: 4,
        type: 1,
        title: 'The last best4',
        desciption: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    listViewMusic.add(MusicModel(
        id: 5,
        type: 0,
        title: 'The last best5',
        desciption: 'MUSIC',
        time: '30.3',
        author: 'jack',
        imageUrl: 'assets/images/RnCPiXixooY.png',
        pathMusic: 'waveform.mp3',
        isLoadSound: false));
    notifyListeners();
  }
}
