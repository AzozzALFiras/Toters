import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';

import 'NewPage/TalbetaInfoItem.dart';
import 'data.dart';

    class Toto extends StatefulWidget {

      const Toto({Key? key}) : super(key: key);

      @override
      State<Toto> createState() => _TotoState();
    }

    class _TotoState extends State<Toto> {
      final List<String> listImages = [
        'asset/images/GdbwIuahIVVrli21.jpg',
        'asset/images/yLAaBYVyF2Hqf2Fh.jpeg',
        'asset/images/RvqSHatXxjCrRg0O.png',

      ];
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          bottomNavigationBar: Footer(),
          appBar: AppBar(

            actions: [
    Column(
      children: [

      Padding(padding: EdgeInsets.only(left: 20),
      child:   Text(" توصيل الئ ",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: "Cario",
        ),
      ),
      ),
        Row(
          children: [
            Icon(Icons.arrow_drop_down,color: Colors.black,),
            Text("العراق بغداد ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: "Cario",
              ),

            ),

          ],

        ),
      ],
    ),
            ],
            backgroundColor: Colors.white,

            leading: Icon(Icons.tune,color: Colors.green,),
          ),


     body: ListView(
     children: [
       Padding(padding: EdgeInsets.only(top: 10,right: 10),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [

             Text("سجل الدخول باستخدام تطبيق توترز واستمتع بمزايا حرصية",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 12,
                 fontWeight: FontWeight.bold,
                 fontFamily: "Cario",
               ),
             ),
             Icon(Icons.login,color: Colors.green,size: 25,),
           ],
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(top: 10),
         child: CarouselImages(
           scaleFactor: 0.6,
           listImages: listImages,
           height: 250.0,
           borderRadius: 30.0,
           cachedNetworkImage: true,
           verticalAlignment: Alignment.bottomCenter,
           onTap: (index) {
             print('Tapped on page $index');
           },
         ),
       ),
       Container(
         height: 250,
         width: MediaQuery.of(context).size.width,
        color: Colors.white,

        child: Column(
          children: [
         Padding(padding: EdgeInsets.only(top: 20),
         child:  Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             ListItemFist("https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/food20.png","مطاعم"),
             ListItemFist("https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/groceries20.png","البقالة"),
           ],
         ),
         ),
          Padding(padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListItemLast("https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/retail8.png","متاجر"),
                ListItemLast("https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/butler20.png","المندوب"),
                ListItemLast("https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/add_funds8.png","آضف رصيد"),

              ],
            ),
          ),




          ],
        ),
       ),

       SizedBox(height: 20,),
       Column(

         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 10,top: 10),
                 child: Icon(Icons.arrow_back_ios,color: Colors.green,),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 10,top: 10),
                 child: Text("خصومات اسبوعية",style: TextStyle(
                   color: Colors.black,
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   fontFamily: "Cario",
                 ),
                 ),
               ),
             ],
           ),
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 10,right: 25),
             child: Text("احصل علئ خصم 50% علئ مطاعم هذا الاسبوع",style: TextStyle(
               color: Colors.black,
               fontSize: 15,
               fontWeight: FontWeight.bold,
               fontFamily: "Cario",
             ),
             ),
           ),
         ],
       ),
         ],
       ),

       Column(
         children: [

           Padding(padding: EdgeInsets.only(top: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Icon(Icons.arrow_back_ios,color: Colors.green,size: 25,),
                 ),

                 Padding(padding: EdgeInsets.only(right: 10),
                   child:  Text("اجة وكت الريوك",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       fontFamily: "Cario",
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Padding(padding: EdgeInsets.only(top: 10,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [

                 Padding(padding: EdgeInsets.only(right: 10),
                   child:  Text("اختر افطارك المفضل من توتوز",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                       fontFamily: "Cario",
                     ),
                   ),
                 ),
               ],
             ),
           ),

           SizedBox(height: 10,),
           Row(
             children: [
               Container(
                 height: 300,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   // color: Colors.grey.withOpacity(0.2),
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     // ImageRow

                     // imagePost(ImageRow2," وجبة افاطر"),
                     // imagePost(ImageRow1,"طبق المندي"),
                     imagePost(
                       ImageRow,
                       "كوست بركر",
                       "كوست بركر الافضل في العراق جرب طعمها ولن تنساها",
                       "34-46",
                       "احصل علئ خصم",
                       "احصل علئ نقاط",
                       "قيم البركر واحصل علئ خصم",
                       "4.9",
                       "افضل بركر علئ مستوئ العالم بالنسبة لي وانصح الجميع في تجربتها",
                       "Azozz",
                     ),

                     
                     imagePost(
                       ImageRow1,
                       " طبق المندي",
                       " طبق المندي الافضل في العراق جرب طعمها ولن تنساها",
                       "45-60",
                       "احصل علئ خصم",
                       "احصل علئ نقاط",
                       "قيم الطبق واحصل علئ خصم",
                       "4.9",
                       "افضل طبق علئ مستوئ العالم بالنسبة لي وانصح الجميع في تجربتها",
                       "Suzan",
                     ),

                     imagePost(
                       ImageRow2,
                       "وجبه افطار",
                       "  وجبه افطار الافضل في العراق جرب طعمها ولن تنساها",
                       "15-20",
                       "احصل علئ خصم",
                       "احصل علئ نقاط",
                       "قيم الوجبه واحصل علئ خصم",
                       "4.9",
                       "افضل وجبه علئ مستوئ العالم بالنسبة لي وانصح الجميع في تجربتها",
                       "Suzan",
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ],
       ),
     ],
     ),
        );
      }
      //   CommentItem: '', RetingItem: 'احصل علئ خصم', HoursItem: '35-46', PriceItem: 'احصل علئ نقاط', ImageUrl: url, StatItem: '', SaveItem: '4.6', NameItem: ItemName, DesItem: '', CommentUser: 'Azozz',)));
      Container imagePost(String url,String ItemName, String DesItem, String HoursItem, String RetingItem, String PriceItem, String StatItem, String SaveItem, String CommentItem, String CommentUser) {
        return Container(
          height: 220,
          child: Column(
            children: [

          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TalbetaInfoItem(CommentItem: CommentItem, RetingItem: RetingItem, HoursItem: HoursItem, PriceItem: PriceItem, ImageUrl: url, StatItem: StatItem, SaveItem: SaveItem, NameItem: ItemName, DesItem: DesItem, CommentUser: CommentUser,)));
                    },

         child: Column(
           children: [
             Stack(
             children: [
               Padding(padding: EdgeInsets.only(right: 10),
                 child:   Container(
                   height: 150,
                   width: MediaQuery.of(context).size.width - 100,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       //   color: Colors.grey.withOpacity(0.6),
                       image:
                       DecorationImage(fit: BoxFit.cover, image: AssetImage(url))),
                 ),
               ),
               Row(
                 children: [
                   Padding(padding: EdgeInsets.only(top: 120,left: 10),
                     child:  Container(
                       height: 50,
                       width: 60,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Color(0xfffefffd),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5),
                             spreadRadius: 5,
                             blurRadius: 7,
                             offset: Offset(0, 3), // changes position of shadow
                           ),
                         ],
                       ),

                       child: Padding(padding: EdgeInsets.only(left: 0,top: 0),
                         child: Column(
                           children: [
                             Text("1",style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontFamily: "Cario",
                                 fontSize: 15
                             ),),
                             Text("س",
                               style: TextStyle(
                                   color: Color(0xff818181),
                                   fontFamily: "Cario",
                                   fontSize: 10
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ],
               ),

               Positioned(
                 left: 20,
                 bottom: 130,
                 child: Row(
                   children: [
                     Icon(Icons.favorite,color: Colors.white,),

                   ],
                 ),
               ),

             ],
           ),
             Padding(padding: EdgeInsets.only(left: 160),
               child: Text(ItemName,style: TextStyle(
                 color: Colors.black,
                 fontSize: 20,
                 fontFamily: "Cario",
               ),
               ),
             ),
             Padding(padding: EdgeInsets.only(left: 200),
               child: Text("فطور .  \$\$",style: TextStyle(
                 color: Colors.black,
                 fontSize: 15,
                 fontFamily: "Cario",
               ),
               ),
             ),
             Padding(padding: EdgeInsets.only(left: 120),
               child: Row(
                 children: [
                   Padding(padding: EdgeInsets.only(right: 10),
                     child:  Container(
                       height: 30,
                       width: 100,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Color(0xffe8f2fb),
                       ),
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 2),
                             child: Text("اكسب نقاط",style: TextStyle(
                               color: Color(0xff7ea8bd),
                               fontFamily: "Cario",
                             ),
                             ),
                           ),
                           Icon(Icons.playlist_add_outlined,color: Color(0xff7ea8bd),),

                         ],
                       ),

                     ),),
                   Container(
                     height: 30,
                     width: 50,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5),
                       color: Color(0xfff8f8fa),
                     ),
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 1),
                           child: Text("4.9"),
                         ),
                         Icon(Icons.star_rate,color: Colors.green,),

                       ],
                     ),

                   ),
                 ],
               ),
             )],
         ),

          ),

            ],
          ),

        );
      }
      Container ListItemFist(String ImageItem, String NameItem){
        return Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
           children: [
             Image.network(ImageItem,
             width: 100,
               height: 70,
             ),
           Text(NameItem,
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   fontFamily: "Cario",
                 ),
               ),
           ],
          ),
        );
      }
      Container ListItemLast(String ImageItem, String NameItem){
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Image.network(ImageItem,
                width: 100,
                height: 60,
              ),
              Text(NameItem,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cario",
                ),
              ),
            ],
          ),
        );
      }
    }