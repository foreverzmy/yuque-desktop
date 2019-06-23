import 'package:yuque/blocs/base.bloc.dart';
import 'package:yuque/models/user_detail.model.dart';

class UserBloc extends BaseBloc<UserDetailModel> {
  UserBloc() {}
}

// 全剧单例
UserBloc userbloc = UserBloc();
