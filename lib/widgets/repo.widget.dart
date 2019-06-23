import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:yuque/models/book.model.dart';
import 'package:yuque/views/book.page.dart';

class Repo extends StatefulWidget {
  final BookModel _book;
  Repo(this._book, {Key key}) : super(key: key);

  @override
  _RepoState createState() => _RepoState();
}

class _RepoState extends State<Repo> {
  @override
  Widget build(BuildContext context) {
    void _onPointerDown(PointerDownEvent details) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookPage(widget._book),
        ),
      );
    }

    return ConstrainedBox(
      constraints: BoxConstraints.tight(
        Size(
          200.0,
          230.0,
        ),
      ),
      child: Listener(
        onPointerDown: _onPointerDown,
        child: Padding(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4.0,
                  offset: Offset(1.0, 1.0),
                )
              ],
              color: Colors.white,
            ),
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 20),
                  child: Icon(
                    Icons.assignment,
                    color: Theme.of(context).accentColor,
                    size: 60.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    widget._book.name,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
                Text(
                  widget._book.description,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
