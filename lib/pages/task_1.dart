import 'package:flutter/material.dart';

class Task_1 extends StatefulWidget {
  const Task_1({super.key});
  static const String id = "task_1";

  @override
  State<Task_1> createState() => _Task_1State();
}

class _Task_1State extends State<Task_1> {
  final List<String> _listItem = [
    "assets/images/image_1.jpeg",
    "assets/images/image_2.jpg",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
    "assets/images/image_3.png",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        leading: const Icon(Icons.menu,color: Colors.white,),
        title:const
        Text("Shop app", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepOrange,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 36,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "7",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              )

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
              height: 235,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/image_4.jpg"),
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
                crossAxisCount:1,
                children: _listItem.map((item) => cellOfList(item)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Widget cellOfList(String item){
//   return Card(
//     color: Colors.transparent,
//     elevation: 0,
//     child: Container(
//       padding:const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         image: DecorationImage(
//           image: AssetImage(item),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: const Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//         Positioned(
//         top: 0.0,
//         right: 0.0,
//         child: Icon(
//           Icons.favorite,
//           color: Colors.red,
//           size: 35,
//          ),
//         ),
//         ],
//       ),
//     ),
//   );
// }
Widget cellOfList(String item) {
  return Card(
    color: Colors.transparent,
    elevation: 0,
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(item),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 35,
            ),
          ),
        ),
      ],
    ),
  );
}
