
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);
 List<String> _productList = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const SizedBox(
                height: 60,
              ),
          
              const Text('Hello Akash',
              style:TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ) ,
              ),
          
              const SizedBox(
                height: 10,
              ),
          
              const Text('Let’s gets something?',
              style:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff4F4C4C),
              ) ,
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    
                    Container(
                      height: 118,
                      width: 287,
                      decoration: BoxDecoration(
                        color: const Color(0xffF46D38),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('40% Off During \n Covid 19',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset('assets/images/fruits-and-vegetables 1.png',
                              height: 52,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
              
                    Container(
                      height: 118,
                      width: 287,
                      decoration: BoxDecoration(
                        color: const Color(0xff3861F4),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('40% Off During \n Covid 19',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset('assets/images/fruits-and-vegetables 1.png',
                              height: 52,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              
                  ],
                ),
              ),
          
              const SizedBox(
                height: 20,
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
              const Text('Top Categories',
              style:const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ) ,
              ),
              
                  
              const Text('View All',
              style:const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xffFF4800)
              ) ,
              ),
              
                ],
              ),
          
             const SizedBox(
               height: 10,
             ),
             
          
            Container(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: _productList.length,
                itemBuilder: (context, index) {
                  return  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.only(top: 6,left: 15,right: 15),
                    height: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xffC4C4C4),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text(_productList[index],style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),),
                  );
                }),
              ),
            
            // SizedBox(height: 90,),
          
          
            Container(
              height: 1000,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 6,
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
          

            ],
          ),
        ),
      ),
    ),
    );
  }
}