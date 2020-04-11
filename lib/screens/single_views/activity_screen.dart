import 'package:betogether/main.dart';
import 'package:betogether/models/activity.dart';
import 'package:betogether/services/api_service.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.activity}) : super(key: key);

  Activity activity;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                snap: false,
                actionsIconTheme: IconThemeData(opacity: 0.0),
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                        child: Image.network(
                          "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ),
              SliverPadding(
                padding: new EdgeInsets.only(top: 5, left: 10, right: 10),
                sliver: new SliverList(
                  delegate: new SliverChildListDelegate([
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {},
                          child: new Column(
                            children: <Widget>[
                              new Icon(Icons.favorite_border),
                              new Text('Favorito')
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () => {},
                          child: new Column(
                            children: <Widget>[
                              new Icon(Icons.share),
                              new Text('Compartir')
                            ],
                          ),
                        ),

                      ],
                    ),
                  ]),
                ),
              ),
            ];
          },
          body: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new RaisedButton(
                  child: new Text('Link'),
                  color: primaryColorDark,
                  onPressed: ()=> {},
                ),
                new Container(
                  margin: EdgeInsets.only(top: 40),
                ),
                new Text(widget.activity.title, style: title,),
                new Container(
                  margin: EdgeInsets.only(top: 15),
                ),
                new Text(widget.activity.description)
              ],
            ),
          ),
        )
    );
  }


}