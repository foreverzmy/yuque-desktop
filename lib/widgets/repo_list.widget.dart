import 'package:flutter/material.dart';
import 'package:yuque/blocs/repos.bloc.dart';
import 'package:yuque/models/book.model.dart';
import 'package:yuque/widgets/repo.widget.dart';

class RepoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: reposbloc.stream,
      initialData: reposbloc.stream.value,
      builder: (BuildContext context, AsyncSnapshot<List<BookModel>> snapshot) {
        final repos = snapshot.data;

        return Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.start,
          children: repos.map((repo) => Repo(repo)).toList(),
        );
      },
    );
  }
}
