import 'package:flutter/material.dart';
import 'package:yuque/blocs/doc_detail.bloc.dart';
import 'package:yuque/blocs/provider.dart';
import 'package:yuque/blocs/docs.bloc.dart';
import 'package:yuque/blocs/show_detail,bloc.dart';
import 'package:yuque/blocs/toc.bloc.dart';
import 'package:yuque/models/doc.model.dart';
import 'package:yuque/models/toc.model.dart';

class Docs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: tocsbloc.stream,
      initialData: tocsbloc.stream.value,
      builder: (BuildContext context, AsyncSnapshot<List<TocModel>> snapshot) {
        final tocs = snapshot.data;

        return Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 0),
          child: ListView(
            children: tocs.map((toc) {
              DocModel doc;
              docsbloc.stream.value.forEach((_doc) {
                // 未创建的文档没有 doc
                if (_doc.slug == toc.slug) {
                  doc = _doc;
                }
              });
              return Doc(toc, doc);
            }).toList(),
          ),
        );
      },
    );
  }
}

class Doc extends StatelessWidget {
  final double dotSize = 12.0;
  final TocModel toc;
  final DocModel doc;

  Doc(this.toc, this.doc);

  void _onPointerDown(BuildContext context, PointerDownEvent details) {
    final docDetailBloc = BlocProvider.of<DocDetailBloc>(context);
    if (this.doc != null) {
      showDetailBloc.showDetail();
      docDetailBloc.getDocDetail(doc.book_id, doc.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent details) =>
          _onPointerDown(context, details),
      child: Center(
        child: Card(
          color: this.doc != null
              ? Theme.of(context).accentColor
              : Theme.of(context).disabledColor,
          elevation: 2.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(0.0),
            ),
          ), //设置圆角
          margin: EdgeInsets.only(
            top: 1.0,
            left: 20.0 * (toc.depth - 1),
          ),
          child: ListTile(
            title: Text(
              toc.title,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Row(
              children: <Widget>[
                Text(
                  doc?.public == 1 ? '公开' : '私密',
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  doc?.status == 1 ? '/正常' : '/草稿',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
