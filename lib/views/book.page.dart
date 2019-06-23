import 'package:flutter/material.dart';
import 'package:yuque/blocs/doc_detail.bloc.dart';
import 'package:yuque/blocs/docs.bloc.dart';
import 'package:yuque/blocs/provider.dart';
import 'package:yuque/blocs/show_detail,bloc.dart';
import 'package:yuque/blocs/toc.bloc.dart';
import 'package:yuque/models/book.model.dart';
import 'package:yuque/models/doc.model.dart';
import 'package:yuque/models/toc.model.dart';
import 'package:yuque/services/doc.service.dart';
import 'package:yuque/services/repo.service.dart';
import 'package:yuque/widgets/doc_edit.widget.dart';

import 'package:yuque/widgets/docs.widget.dart';

class BookPage extends StatelessWidget {
  final BookModel _book;

  BookPage(this._book);

  initToc() async {
    List<DocModel> docs = await DocService.getDocsById(_book.id);
    List<TocModel> tocs = await RepoService.getRepoDoc(_book.id);

    docsbloc.add(docs);
    tocsbloc.add(tocs);
  }

  @override
  Widget build(BuildContext context) {
    initToc();

    return BlocProvider(
      bloc: TocsBloc(),
      child: BlocProvider(
        bloc: DocDetailBloc(),
        child: BookLayout(),
      ),
    );
  }
}

class BookLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder(
        stream: showDetailBloc.stream,
        initialData: showDetailBloc.stream.value,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          final showDetail = snapshot.data;
          final mq = MediaQuery.of(context);

          final height = mq.size.height;
          final tocWidth = showDetail ? 300.0 : mq.size.width;

          final children = <Widget>[
            Container(
              width: tocWidth,
              height: height,
              child: Docs(),
            ),
          ];

          if (showDetail) {
            children.addAll([
              Listener(
                onPointerDown: (PointerDownEvent details) {
                  showDetailBloc.showTocs();
                },
                child: Container(
                  width: 20.0,
                  height: height,
                  color: Theme.of(context).focusColor,
                  child: null,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - tocWidth - 20.0,
                height: height,
                child: DocEdit(),
              )
            ]);
          }

          return Row(
            children: children,
          );
        },
      ),
    );
  }
}
