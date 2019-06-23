import 'package:yuque/blocs/base.bloc.dart';

// 是否显示文章详情
class ShowDetailBloc extends BaseBloc<bool> {
  ShowDetailBloc() {
    this.add(false);
  }

  showDetail() {
    this.add(true);
  }

  showTocs() {
    this.add(false);
  }

  @override
  void dispose() {}
}

final showDetailBloc = ShowDetailBloc();
