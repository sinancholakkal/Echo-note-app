import 'package:echo_note_app/presentation/home_screen/widget/item_card_widget.dart';
import 'package:echo_note_app/presentation/view_content/view_content.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    scrollController.addListener((){
      print(scrollController.offset);
    });
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                      color: Colors.green.withOpacity(0.6),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Your Notes",
                      style: TextStyle(
                          fontSize: 45, letterSpacing: -4, color: Colors.black54),
                    ),
                    Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                GridView(
                  controller: scrollController,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //crossAxisSpacing: 10,
                    mainAxisSpacing: 30,
                    mainAxisExtent: 220,
                  ),
                  children: List.generate(10, (index) {
                    return Padding(
                      padding: index%2==0? const EdgeInsets.only(left: 10,top: 6) : const EdgeInsets.only(right: 10,top: 6),
                      child: Container(
                        child: ItemCard(
                          index: index,
                        ),
                      ),
                    );
                  }),
                ),
                //ItemCard(screenSize: screenSize)
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      floatingActionButton: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenAddEditNote(type: ActionType.addNote)));
        },
        child: Container(
          
          width: 110,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.add,color:  Colors.black54,),
                Text("Add new",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
