import 'package:yuque/blocs/base.bloc.dart';
import 'package:yuque/models/toc.model.dart';

class TocsBloc extends BaseBloc<List<TocModel>> {
  TocsBloc() {
    this.add([]);
  }
}

TocsBloc tocsbloc = TocsBloc();
