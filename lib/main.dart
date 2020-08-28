import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Instagram(),
  ));
}

class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Instagram',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        leading: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.camera_alt,
            color: Colors.black,
            size: 32.0,
          ),
        ),
        actions: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.send,
              color: Colors.black,
              size: 32.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 150.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 35,
                        itemBuilder: (context, index) => Story(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context, index) => Page()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          iconSize: 30.0,
          selectedItemColor: Colors.black,


          items: [BottomNavigationBarItem(

            icon: Icon(
              Icons.home,

            ),
            title: Text(''),
          ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
              ),
              title: Text(''),
            ),

      ]),
    );
  }

  Widget Page() => Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            //name, location and ProfilePhoto
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.person,
                      color: Colors.grey[300],
                      size: 35.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Location',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.linear_scale,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            //photo or post
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: Icon(
                      Icons.photo,
                      size: 200.0,
                    ),
                  ),
                ),
              ],
            ),
            //like,comment,share
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  Icons.favorite_border,
                  size: 30.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  Icons.add_comment,
                  size: 30.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  Icons.send,
                  size: 30.0,
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.bookmark_border,
                  size: 30.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            //likes
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Likes',
                )
              ],
            ),
            //name and cation
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('Caption..........'),
              ],
            ),
            //comments
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'View Comments',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            //user add comment
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.person,
                    color: Colors.grey[300],
                    size: 20.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Add a comment.....',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.tag_faces,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            //time and translation
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Time',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'See Translation',
                ),
              ],
            ),
          ],
        ),
      );

  Widget Story() => Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.grey[100],
              child: Icon(
                Icons.person,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Name'),
          ],
        ),
      );
}
