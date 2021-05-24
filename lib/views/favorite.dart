import 'package:flutter/material.dart';

class fav extends StatefulWidget {
  @override
  _favState createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ltile("https://randomuser.me/api/portraits/women/26.jpg","baqkku Liked your comment"),
            ltile("https://randomuser.me/api/portraits/women/25.jpg","baqkku Liked your comment"),
            ltile("https://randomuser.me/api/portraits/men/55.jpg","baqkku Liked your post"),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text("Today",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18
              ),),
            ),
            SizedBox(height: 4,),
            ltile("https://randomuser.me/api/portraits/women/23.jpg","gill commented on your post"),
            ltile("https://randomuser.me/api/portraits/women/99.jpg","pjil Liked your post"),
            ltile("https://randomuser.me/api/portraits/men/95.jpg","kukku comenntted nice"),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("Yestraday",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18
              ),),
            ),
            SizedBox(height: 4,),
            ltile("https://randomuser.me/api/portraits/women/94.jpg","livite Liked your comment"),
            ltile("https://randomuser.me/api/portraits/men/85.jpg","kwalir Liked yory reel"),
            ltile("https://randomuser.me/api/portraits/women/66.jpg","zoras Liked your comment"),
            ltile("https://randomuser.me/api/portraits/men/64.jpg","zinna Liked your post"),
            ltile("https://randomuser.me/api/portraits/women/47.jpg","sitava liked ur reel"),
            ltile("https://randomuser.me/api/portraits/women/44.jpg","juja Liked your reel"),
          ],
        ),
      )
    );
  }

  ListTile ltile(String imgurl,String desc) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgurl),
      ),
      title: Text(desc,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15
      ),),
    );
  }
}
