import 'package:yuque/blocs/base.bloc.dart';
import 'package:yuque/models/book.model.dart';

class ReposBloc extends BaseBloc<List<BookModel>> {
  @override
  void dispose() {}
}

ReposBloc reposbloc = ReposBloc();
