import 'package:hive_flutter/hive_flutter.dart';

class UserGuestRepository {
  static const String _boxName = 'profile';

  Future<void> init() async {
    final Box<String> box = await Hive.openBox<String>(_boxName);

    if (!box.containsKey('name')) {
      await box.put('name', 'Guest');
    }

    if (!box.containsKey('phoneNumber')) {
      await box.put('phoneNumber', '');
    }
  }

  String getName() {
    final Box<String> box = Hive.box<String>(_boxName);
    return box.get('name', defaultValue: 'GuestDEFAULT')!;
  }

  String getPhoneNumber() {
    final Box<String> box = Hive.box<String>(_boxName);
    return box.get('phoneNumber', defaultValue: 'DEFAULT')!;
  }

  Future<void> updateName(String newName) async {
    final Box<String> box = Hive.box<String>(_boxName);
    await box.put('name', newName);
  }

  Future<void> updatePhoneNumber(String newPhone) async {
    final Box<String> box = Hive.box<String>(_boxName);
    await box.put('phoneNumber', newPhone);
  }
}
