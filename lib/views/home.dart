import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/postdata.dart';

import '../details.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  // ignore: deprecated_member_use
  List<postdata> pos = new List();

  @override
  void initState() {
    pos = postsdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        width: 50,
                        height: 50,
                        child: Stack(
                          children: [
                            ClipOval(
                              child: Image.network(
                                "https://randomuser.me/api/portraits/men/65.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xff25d366),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/men/75.jpg",true),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/26.jpg",false),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/25.jpg",true),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/18.jpg",true),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/4.jpg",false),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/23.jpg",true),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/44.jpg",true),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/7.jpg",false),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/men/50.jpg",true),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/men/85.jpg",false),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/55.jpg",false),
                    SizedBox(width: 10,),
                    tile("https://randomuser.me/api/portraits/women/42.jpg",true),
                  ],
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                  itemCount: pos.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index){
                    return posts(
                      name: pos[index].name,
                      imgurl: pos[index].imgurl,
                      post: pos[index].post,
                      likedby: pos[index].likedby,
                      cmnts: pos[index].cmnts,
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }

  Container tile(String img,bool clr) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color:Colors.orange,width: clr ? 2 : 0)
      ),
      child: CircleAvatar(
        radius: 25,
        backgroundImage:
            NetworkImage(img),
      ),
    );
  }
}

class posts extends StatelessWidget {

  final String name;
  final String imgurl;
  final String post;
  final String likedby;
  final String cmnts;

  posts({Key key, this.name, this.imgurl, this.post, this.likedby, this.cmnts});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        // color: Colors.redAccent,
        border: Border.all(width: 0.015),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(2.0,2.0)
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(width: 0.06)
            ),
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2,color: Colors.orange),
                ),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(imgurl),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,fontFamily: "fantasy"),),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
          ),
          Container(
            height: 250,
            width: 500,
            child: Image.network(post),
          ),
          Container(
            height: 40,
            width: 500,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.favorite_border,size: 30,),
                SizedBox(width: 10,),
                Icon(FontAwesomeIcons.comment,size: 25,),
                SizedBox(width: 10,),
                Icon(FontAwesomeIcons.telegramPlane,size: 25,),
                SizedBox(width: 230,),
                Icon(FontAwesomeIcons.bookmark,size: 20,)
              ],
            ),
          ),
          Container(
            height: 25,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                ),
                Text(likedby,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,fontFamily: "fantasy"))
              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(right: 240.0),
            child: Text(cmnts,style: TextStyle(color: Colors.grey,wordSpacing: 2,fontWeight: FontWeight.w500,fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
