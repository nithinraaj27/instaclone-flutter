import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

class user extends StatefulWidget {
  @override
  _userState createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(25),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://randomuser.me/api/portraits/men/11.jpg"),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                Container(
                  height: 40,
                  width: 250,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 12,),
                            Text("150",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                            SizedBox(width: 55,),
                            Text("15k",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),
                            SizedBox(width: 65,),
                            Text("150k",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))
                          ],
                        )
                      ),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Posts",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                              SizedBox(width: 15,),
                              Text("Following",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                              SizedBox(width: 15,),
                              Text("Followers",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))
                            ],
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text("palo Pabo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              fontFamily: 'fantasy'
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,right: 250),
            child: Text("Frontineer🎗\nDart dev👓\nUS🎫",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'oblique'
              ),),
          ),
          SizedBox(height: 10,),
          Container(
            height: 120,
            width: double.infinity,
            child : Column(
              children: [
                Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(width: 1)
                                ),
                                child: Text(
                                  "Edit Profile",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: "fantasy"
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(width: 1)
                                ),
                                child: Text(
                                  "Promotions",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "fantasy"
                                  ),
                                ),
                              )
                          ),
                        ],
                      ),
                    )
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1)
                            ),
                            child: Text(
                              "Insights",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "fantasy"
                              ),
                            ),
                          )
                      ),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1)
                            ),
                            child: Text(
                              "Add Shops",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "fantasy"
                              ),
                            ),
                          )
                      ),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1)
                            ),
                            child: Text(
                              "Text",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "fantasy"
                              ),
                            ),
                          )
                      ),
                      Container(
                        width: 30,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 12,bottom: 12,right: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1)
                        ),
                        child: Icon(
                          Icons.arrow_drop_down_outlined
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 290,
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                          child: Icon(Icons.border_all_rounded)),
                      Expanded(child: Icon(Icons.assignment_ind)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    height: 250,
                    child: GridView.count(
                      padding: const EdgeInsets.all(4),
                      crossAxisSpacing: 5,
                      crossAxisCount: 3,
                      children: <Widget>[
                        Image.network("https://images.unsplash.com/photo-1463171379579-3fdfb86d6285?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fG1hY3xlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29kZXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.unsplash.com/photo-1537498425277-c283d32ef9db?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y29tcHV0ZXJ8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.unsplash.com/photo-1514826786317-59744fe2a548?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1hY3xlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.unsplash.com/photo-1586244346603-b97b4fdb87e4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTY3fHxsYXB0b3B8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.pexels.com/photos/574071/pexels-photo-574071.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        Image.network("https://images.pexels.com/photos/1181269/pexels-photo-1181269.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        Image.network("https://images.pexels.com/photos/5429125/pexels-photo-5429125.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        Image.network("https://images.pexels.com/photos/4134783/pexels-photo-4134783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        Image.network("https://images.unsplash.com/photo-1463171379579-3fdfb86d6285?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fG1hY3xlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29kZXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.unsplash.com/photo-1537498425277-c283d32ef9db?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y29tcHV0ZXJ8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.unsplash.com/photo-1514826786317-59744fe2a548?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1hY3xlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.unsplash.com/photo-1586244346603-b97b4fdb87e4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTY3fHxsYXB0b3B8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        Image.network("https://images.pexels.com/photos/574071/pexels-photo-574071.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        Image.network("https://images.pexels.com/photos/1181269/pexels-photo-1181269.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        Image.network("https://images.pexels.com/photos/5429125/pexels-photo-5429125.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        Image.network("https://images.pexels.com/photos/4134783/pexels-photo-4134783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      ],
                    )
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
