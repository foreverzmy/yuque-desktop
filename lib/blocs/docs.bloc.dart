import 'package:yuque/blocs/base.bloc.dart';
import 'package:yuque/models/doc.model.dart';

class DocsBloc extends BaseBloc<List<DocModel>> {
  DocsBloc() {
    this.add([]);
  }
}

DocsBloc docsbloc = DocsBloc();
