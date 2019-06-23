import 'package:yuque/blocs/base.bloc.dart';
import 'package:yuque/models/doc_detail.model.dart';
import 'package:yuque/services/doc.service.dart';

class DocDetailBloc extends BaseBloc<DocDetailModel> {
  DocDetailBloc() {}

  getDocDetail(int book_id, int id) {
    DocService.getDocDetail(book_id, id).then((res) {
      this.add(res);
    });
  }
}
