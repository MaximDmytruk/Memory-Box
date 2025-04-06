import 'package:hive_flutter/hive_flutter.dart';

class AudioRepository {
  static const String _boxName = 'audioRecords';

  Future<void> saveAudio(String path) async {
    final Box<String> box = await Hive.openBox<String>(_boxName);
    await box.add(path);
  }

  Future<List<String>> getAllAudios() async {
    final Box<String> box = await Hive.openBox<String>(_boxName);
    return box.values.toList();
  }
}
