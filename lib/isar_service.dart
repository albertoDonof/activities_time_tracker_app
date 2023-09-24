//crea classe Isar service da video su doc di isar ed esponila con un provider
//crea metodi per crud su isar in ogni controller della pagina in cui serve,
//non qui dove si creerebbe un casino
import 'package:activities_time_tracker/models/activity_model.dart';
import 'package:activities_time_tracker/models/tasks_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

/*final isarProvider = FutureProvider<Isar>((ref) async {
  if (Isar.instanceNames.isEmpty) {
    return Isar.open(
      [ActivitySchema],
      inspector: true,
    );
  }
  return Future.value(Isar.getInstance());
});
*/

final isarServiceProvider = Provider((ref) => IsarService());

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [ActivitySchema, TaskSchema],
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  // Future<void> saveActivity(Activity newActivity) async {
  //   final isar = await db;
  //   isar.writeTxnSync(() => isar.activitys.putSync(newActivity));
  // }

  // Future<List<Activity>> getRecentActivities() async {
  //   final isar = await db;
  //   return await isar.activitys
  //       .filter()
  //       .dateTimeGreaterThan(DateTime.now())
  //       .findAll();
  // }

}
