import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';


class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {

  List<String> imageList =[
    "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1545126178-862cdb469409?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aW5kaWF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1514222134-b57cbb8ce073?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGluZGlhfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1535280783-cd33989a9522?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzR8fGluZGlhfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1603766806347-54cdf3745953?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dGhhbmphdnVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1566915682737-3e97a7eed93b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHRoYW5qYXZ1cnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1614844848029-058f34a0508b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTh8fHRhbWlsbmFkdXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1615196570203-222ade7954da?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAyfHx0YW1pbG5hZHV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1563362554-5b521e37aa2a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTg1fHxpbmRpYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1597080896847-9a2a70b74609?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTkyfHxpbmRpYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1605302977694-88b66de40a08?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjQ3fHxpbmRpYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1562183649-de831007b25f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjQ5fHxpbmRpYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2,color: Colors.black),
            ),
            margin: EdgeInsets.all(15),
            height: 50,
            width: 500,
            child:Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.search,size: 30,color: Colors.black,),
                SizedBox(width: 10,),
                Text("Search",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  letterSpacing: 1
                ),),
              ],
            ),
          ),
          Container(
            height: 570,
            margin: EdgeInsets.all(15),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 10,
              itemCount: imageList.length,
              itemBuilder: (context, index){
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.transparent
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index){
                return StaggeredTile.count(1, index.isEven? 1.2 : 1.8);
              },
            ),
          ),
        ],
      ),
    );
  }
}

