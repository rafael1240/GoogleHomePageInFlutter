import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController contr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Gmail",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13
                ),
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Imagens",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13
                ),
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 7, 0),
            child: TextButton(
              onPressed: () {},
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.apps),
                color: Colors.black54,
              )
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Center(child: Image.asset("../assets/logo.png")),
          ),
          Container(
            height: 44,
            width: 561,
            padding: EdgeInsets.symmetric(horizontal: 5),
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset.zero,
                    blurStyle: BlurStyle.normal,
                    spreadRadius: 2,
                  )
                ]),
            child: TextFormField(
              controller: contr,
              cursorColor: Colors.black12,
              cursorWidth: 1,
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                  hintText: "Pesquise no Google ou digite um URL",
                  iconColor: Colors.black38,
                  icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    iconSize: 22,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                  suffixIconColor: Colors.black38,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic),
                    iconSize: 22,
                    color: Colors.black54,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 130,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0x09000000)),
                          child: Image.asset("../assets/download.png", scale: 1.4)
                        ),
                        const Text(
                          "Web Store",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 130,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0x09000000)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "Adicionar ata..",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ),
                )
              ],
            ), 
          )
        ],
      ),
      floatingActionButton: TextButton(
        onPressed: (){},
        child: Container(
          height: 30,
          width: 180,
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset.zero,
                blurStyle: BlurStyle.normal,
                spreadRadius: 2,
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.edit,size: 18,),
              Text("Personalizar o Chrome",style: TextStyle(fontSize: 13),),
            ],
          ),
        )
      ),
    );
  }
}
