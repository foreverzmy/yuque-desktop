import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:yuque/blocs/doc_detail.bloc.dart';
import 'package:yuque/blocs/provider.dart';
import 'package:yuque/models/doc_detail.model.dart';

class DocEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final docDetailBloc = BlocProvider.of<DocDetailBloc>(context);

    return StreamBuilder(
      stream: docDetailBloc.stream,
      initialData: docDetailBloc.stream.value,
      builder: (BuildContext context, AsyncSnapshot<DocDetailModel> snapshot) {
        final doc = snapshot.data;
        String text = "nothing";
        if (doc != null) {
          text = doc.body_html;
        }

        return SingleChildScrollView(
          child: Html(
            data: text,
            padding: EdgeInsets.all(8.0),
            backgroundColor: Colors.white70,
            defaultTextStyle: TextStyle(fontFamily: 'serif'),
            onLinkTap: (url) {
              // open url in a webview
            },
          ),
        );
      },
    );
  }
}
