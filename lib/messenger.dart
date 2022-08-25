import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/assassinationclassroom/images/f/fb/Korosensei_Koro-Q.png/revision/latest?cb=20170122023716'),
            ),
            SizedBox(width: 15,),
            Text(
              'Chat',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(icon: CircleAvatar(
            radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(Icons.camera_alt,
              size: 16,
              color: Colors.white,)), onPressed: (){}),
          IconButton(icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(Icons.edit,
                size: 16,
                color: Colors.white,)), onPressed: (){})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[400],
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 15,),
                  Text('Search'),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100 ,
              child: ListView.separated(itemBuilder: (index, context)=>storyBuilder(),
                itemCount: 30,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index)=> SizedBox(width: 10,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget storyBuilder ()=> Container(
  width: 60,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNH2ntK5SBdxwL0ci4l8an96PPZyKyfokw2A&usqp=CAU'),

          ),
          CircleAvatar(backgroundColor: Colors.white,radius: 9,),
          CircleAvatar(backgroundColor: Colors.green,radius: 8,)
        ],
      ),
      SizedBox(height: 5,),
      Text('Ali Izzeldin Ali',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,),
    ],
  ),
);
