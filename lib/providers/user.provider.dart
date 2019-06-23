import 'package:yuque/providers/base.provider.dart';

class UserProvider extends BaseTable {
  UserProvider(String tableName) : super('user');
}

final userProvider = UserProvider('user');
