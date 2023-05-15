




import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

  class Hangman extends StatefulWidget {

  @override
  State<Hangman> createState() => _HangmanState();
}

  class _HangmanState extends State<Hangman> {
  Color colorContainer = Colors.black45;
  TextStyle texstyle=TextStyle(color: Colors.white,fontSize: 20);
  List Letters=["A","B","C","D","E","F","G","H","I",
      "J","K","L","M","N","O","P","Q","R",
      "S","T","U","V","W","X","Y","Z"];

    bool  hang=false;
    bool  head=false;
    bool  body=false;
    bool  rh=false;
    bool  lh=false;
    bool  rl=false;
    bool  ll=false;

    bool  Fvisible=false;
    bool  Lvisible=false;
    bool  Uvisible=false;
    bool  Tvisible=false;
    bool  Evisilbe=false;
    bool  Rvisible=false;

    int count=0;
    int flag=0;
    void reset(){
        hang=false;
        head=false;
        body=false;
        rh=false;
        lh=false;
        rl=false;
        ll=false;

        Fvisible=false;
        Lvisible=false;
        Uvisible=false;
        Tvisible=false;
        Tvisible=false;
        Evisilbe=false;
        Rvisible=false;

       count=0;
       flag=0;
       colorContainer = Colors.black45;

    }

  void displayanswer(String text){
    setState(() {
      if(count==5){
        Alert(context:this. context,
          title: "Game Over",
          desc: "oops! you failed",
        ).show();
        reset();
      }
      else if(flag==5){
        Alert(context: this.context,
          title: "Game Over",
          desc: "Congarts!  You Won",
        ).show();
        reset();
      }
      else{
        if(text=='F'){
          Fvisible=true;

          flag++;
        }
        else if(text=='L'){
          Lvisible=true;
          flag++;

        }
        else if(text=='U'){
          Uvisible=true;
          flag++;
        }
        else if(text=='T'){
          Tvisible=true;
          flag++;
        }
        else if(text=='E'){
          Evisilbe=true;
          flag++;
        }
        else if(text=='R'){
          Rvisible==true;
          flag;
        }
        else{
         count++;
         if(count==1){
           head=true;
         }
         else if(count==2){
           lh=true;
         }
         else if(count==3){
           rh=true;
         }
         else if(count==4){
           body=true;
         }
         else if(count==5){
           ll=true;
         }
         else if(count==6){
           rl=true;
         }
        }
      }
    });
    }
    @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        children: [
          SizedBox(height: 50,),
          Stack(
children: [
  Image(image: AssetImage("images/hang.png")),
  Visibility(
    visible: body,
      child: Image(image: AssetImage("images/body.png"),
      ),
  ),
  Visibility(
    visible: head,
      child: Image(image: AssetImage("images/head.png"),)),
  Visibility(
    visible: lh,
      child: Image(image: AssetImage("images/la.png"),)),
  Visibility(
    visible: ll,
      child: Image(image: AssetImage("images/ll.png"),)),
  Visibility(
      visible:rh,
    child: Image(image: AssetImage("images/ra.png"),)),
  Visibility(
      visible:rl,
      child: Image(image: AssetImage("images/rl.png"),)),
],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(child: Visibility(
                        visible: Fvisible,
                        child: Text("F",style: texstyle,))),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(child: Visibility(
                        visible: Lvisible,
                        child: Text("L",style: texstyle,))),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                child: Container(
                width: 30,
                height: 50,
                decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(2),
                ),

                child: Center(child: Visibility(
                    visible: Uvisible,
                    child: Text("U",style: texstyle,))),
                ),

                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(child: Visibility(
                      visible: Tvisible,

                        child: Text("T",style: texstyle,))),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(child: Visibility(

                      visible: Tvisible,
                      child: Text("T",
                        style: texstyle),
                    ),
                  ),
                  ),
                ),
                SizedBox(width: 10),

                Expanded(
                  child: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(child: Visibility(
                        visible: Evisilbe,
                        child: Text("E",style: texstyle,))),
                  ),
                ),
                SizedBox(width: 10,),

                Expanded(
                  child: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(child: Visibility(
                        visible: Rvisible,
                        child: Text("R",style: texstyle,))),
                  ),
                ),


              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(

                shrinkWrap: true,
                itemCount: Letters.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2



                  ),
                  itemBuilder: (context,index){

                  return GestureDetector(

                    onTap: (){
                      setState(() {
                        colorContainer = colorContainer == Colors.blue ?
                        Colors.black45 :
                        Colors.blue;

                      });
                      displayanswer(Letters[index]);
                    },
                    child: Container(

                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: colorContainer ,

                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Center(
                        child: Text(Letters[index],
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),


                    ),


                  );
                  }),
            ),
          ),





        ],
      ),
    );
  }




}

