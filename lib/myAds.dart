import 'dart:ui';

import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  const MyAds({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2, 
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text('My Ads',style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color(0xff3A3030)
          ),
         ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,),text: 'My Ads',),
              Tab(icon: Icon(Icons.favorite_border_outlined),text: 'My Favourite',)
            ],
            labelColor: Colors.black,
            ),
          ),

          body: TabBarView(
            children: [
               SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: Container(
                  height: 1000,
                  child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 5,
                    childAspectRatio: 10/18,
                    ), 
                  itemBuilder: (context,index){
                    return   Container(
                      padding: EdgeInsets.only(top: 40),
                      child: FittedBox(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Stack(
                            overflow: Overflow.visible,
                            clipBehavior: Clip.none,
                              children: [
                            Container(
                              height: 217,
                              width: 178,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Color(0xffFFFFFF),
                              // color: Colors.blueAccent
                              ),
                                            ),
                            Positioned(
                              top: -80,
                              right: 6,
                              child: Container(
                              height: 160,
                              child: Image.asset('assets/images/image-removebg-preview (6).png'),
                              ),
                                            ),
                              Positioned(
                              top: 100,
                              left: 25,
                              child: Container(
                              child: Column( 
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Apple Watch',style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                              
                                  const Text('Series 6 . Red',style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff868686)
                                  ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                              
                                  const Text("\$ 359",style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff5956E9)
                                  ),
                                  ),
                                  
                              
                                ],
                                ),
                                
                              ),
                                            ),
                                            
                            
                                          ],
                                    ),
                          ],
                        ),
                      ),
                    );
                  }
                  ),
                           ),
               ),
               
               ListView.builder(
                 itemCount: 10,
                 itemBuilder: (context,index){
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 5),
                     child: Card(
                       child: ListTile(
                                      contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10) ,
                                      leading: Image.asset('assets/images/image-removebg-preview (6).png'),
                                      title: Text('Apple Watch',style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w600
                                      ),
                                      ),
                                      subtitle: Text('Series 6 . Red',style: TextStyle(
                       color: Color(0xff868686),
                       fontSize: 16,
                       fontWeight: FontWeight.w600,
                                      ),),
                                      trailing: Text('\$ 359',style: TextStyle(
                       color: Color(0xff5956E9),
                       fontSize: 17,
                       fontWeight: FontWeight.w700
                                      ),),
                                    ),
                     ),
                   );
                 }
                 ),
               
          
          ]),
          
        ),
        ),
    );
  }
}