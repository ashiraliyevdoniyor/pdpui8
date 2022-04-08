import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Image(
                image: AssetImage("assets/images/amazon_logo.png"),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.mic,color: Colors.white,)
                  ),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.shopping_cart,color: Colors.white,)
                  ),
                ],
              ),
            )
          ],
        ),
        
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            //search
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              color: Color(0xFF018197),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "What are you looking for?",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.search,color: Color(0xFF018197)),
                          ),
                        )
                    ),
                    Icon(Icons.camera_alt,color: Color(0xFF018197))
                  ],
                ),
              ),

            ),

            //body
            Expanded(
                child: ListView(
                  children: [
                    //location
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      height: 45,
                      color: Colors.blueGrey,
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.white,),
                          SizedBox(width: 5),
                          Text('Deliver to Uzbekistan,Republic of',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),

                    //advertising
                    Container(
                      width: double.infinity,
                      height: 140,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(70),bottomRight: Radius.circular(70)),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/image_1.jpeg"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              alignment: Alignment.center,
                              height: 140,
                              color: Colors.white,
                              child: Text("We ship 45 million products",style: TextStyle(fontSize: 16),),

                            ),),
                        ],
                      ),
                    ),

                    SizedBox(height: 8),

                    //Sign in
                    Container(
                      color: Colors.white,
                      padding:EdgeInsets.only(left: 16,right: 16),
                      height: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sign in for the best experience",style: TextStyle(fontSize: 18,color: Colors.black),),
                          SizedBox(height: 15),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 50,
                            color: Colors.yellow[800],
                            child: Text("Sign in"),
                          ),
                          SizedBox(height: 15),
                          Text('Create an account',style: TextStyle(color: Colors.blueAccent,fontSize: 18))
                        ],
                      ),
                    ),
                    SizedBox(height: 8),

                    //Deal of the day
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Deal of the day",style: TextStyle(color: Colors.black,fontSize: 22),),
                          SizedBox(height: 8,),
                          Image(
                            height: 240,
                            width: double.infinity,
                            image: AssetImage('assets/images/item_7.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 16),
                          Text("Up to 31% off APC UPC Battery Back"),
                          SizedBox(height: 8),
                          Text("\$10.99-\$119.9"),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),

                    //Best
                    Container(
                      padding: EdgeInsets.all(16),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text("Best sellers in Electronics",style: TextStyle(color: Colors.black,fontSize: 22)),
                          SizedBox(height: 8),
                          Container(
                            height: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Expanded(child: Image(
                                            image: AssetImage("assets/images/item_1.jpeg"),
                                            fit: BoxFit.cover,
                                          )),
                                          SizedBox(height: 5,),
                                          Expanded(child: Image(
                                            image: AssetImage("assets/images/item_2.jpeg"),
                                            fit: BoxFit.cover,
                                          )),
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(width: 5),
                                Expanded(
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Expanded(child: Image(
                                            image: AssetImage("assets/images/item_3.jpeg"),
                                            fit: BoxFit.cover,
                                          )),
                                          SizedBox(height: 5,),
                                          Expanded(child: Image(
                                            image: AssetImage("assets/images/item_4.jpeg"),
                                            fit: BoxFit.cover,
                                          )),
                                        ],
                                      ),
                                    )
                                ),
                              ],
                            ),
                          )

                        ],
                        
                      ),
                    ),
                    SizedBox(height: 8),

                    //Top products
                    Container(
                      padding: EdgeInsets.all(16),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Top products in Camera",style: TextStyle(color: Colors.black,fontSize: 22)),
                          SizedBox(height: 8),
                          Container(
                            height: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/item_5.jpeg"),
                                        fit: BoxFit.cover,

                                      )
                                    ),
                                  )
                                ),
                                SizedBox(height: 5),
                                Expanded(
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Expanded(child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage("assets/images/item_6.jpeg"),
                                                  fit: BoxFit.cover,

                                                )
                                            ),
                                          )),
                                          SizedBox(width: 5,),
                                          Expanded(child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage("assets/images/item_7.jpeg"),
                                                  fit: BoxFit.cover,

                                                )
                                            ),
                                          )),
                                        ],
                                      ),
                                    )
                                ),
                              ],
                            ),
                          )

                        ],

                      ),
                    ),

                  ],
                )
            )
          ],
        ),
      )
    );
  }
}
