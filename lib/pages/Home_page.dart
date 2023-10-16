import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    "assets/images/image_1.jpeg",
    "assets/images/image_2.jpg",
    "assets/images/image_3.png",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
    "assets/images/image_3.png",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.menu,color: Colors.white,),
        title:const
        Text("Shop app", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        actions: [
           Padding(
              padding: EdgeInsets.all(20),
             child: Container(
               width: 36,
               height: 30,
               decoration: BoxDecoration(
                 color: Colors.grey,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: const Center(
                 child: Center(child: Text("8" , style: TextStyle(color: Colors.white),)),
               ),
             ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
          //   #header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/image_3.png"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.3),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Lifestyle sale" , style: TextStyle(color: Colors.white, fontSize: 35),),
                    const SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,                        
                      ),
                      child: Center(
                        child: Text("Shop Now" ,style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),),
                      ),
                    ),
                   const SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 20,),
          //   body
            Expanded(
                child: GridView.count(
                  crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount:2,
                  children: _listItem.map((item) => cellOfList(item)).toList(),
                ),
            ),
          ],
        ),
      ),
    );
  }
}


Widget cellOfList(String item){
return Card(
  color: Colors.transparent,
  elevation: 0,
  child: Container(
    padding:const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(item),
        fit: BoxFit.cover,
      ),
    ),
    child: const  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.star_border,
          color: Colors.yellowAccent,size: 35,
        ),
      ],
    ),
  ),
);
}