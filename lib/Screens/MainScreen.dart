import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Constants.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // constraints: BoxConstraints(maxWidth: maxwid),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: SlideMenu())
            ,
            Expanded(
                flex: 7,
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AspectRatio(aspectRatio: 3,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset('assets/stockholm.jpg',
                                fit: BoxFit.cover,),
                              Container(
                                color: DarkColor.withOpacity(0.66),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: defpading/2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Discover My Amazing \n Art Space',
                                      style: Theme.of(context).textTheme.headline3!.
                                      copyWith(
                                          fontWeight:FontWeight.bold,
                                          color: Colors.white
                                      ),),
                                    DefaultTextStyle(
                                      style: Theme.of(context).textTheme.subtitle1!,
                                      child: Row(
                                        children: [
                                          boxText(),
                                          Text('I Build '),
                                          AnimatedTextKit(animatedTexts: [
                                            TyperAnimatedText(
                                                'Reponsive Web And Mobile'
                                            ),
                                            TyperAnimatedText(
                                                'Complet EcommercApp Ui'
                                            ),
                                            TyperAnimatedText(
                                                'Chat App with Dark And Light Theme'
                                            )
                                          ]),
                                          boxText(),

                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: defpading/2),
                                      child: ElevatedButton(onPressed: (){},
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: defpading*2,
                                                  vertical: defpading
                                              ),
                                              backgroundColor: PrimaryColor
                                          ),
                                          child: Text('Explore Now',style: TextStyle(
                                              color: Colors.black
                                          ),)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ) ,)


                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class boxText extends StatelessWidget {
  const boxText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
          text: 'Flutter',
            style: TextStyle(
                color: PrimaryColor
            ),
          ),
          TextSpan(
            text: '>',

          )
        ],

      )
    );
  }
}

class SlideMenu extends StatelessWidget {
  const SlideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
               child: Column(
                 children: [
                  AspectRatio(aspectRatio: 1.23,
       child: Container(
         color: Color(0xff242430),
         child: Column(
           children: [
             Spacer(flex: 2,),
             Padding(
               padding: const EdgeInsets.only(top: 8.0),
               child: CircleAvatar(
                 radius: 40,
                 child: Image.asset('assets/iconepro.png'),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8.0),
               child: Text('Nima Moradi',
               textAlign: TextAlign.center,
               style: Theme.of(context).textTheme.subtitle2,),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8.0),
               child: Text('Flutter and Android Developer',
                 textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    height: 1.5
                  ),),
             ),
             Spacer(flex: 2,),
           ],
         ),
       ),),
                   Expanded(
                       child: SingleChildScrollView(
                         padding: EdgeInsets.all(defpading),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Part1(),
                         Divider(),
                         Part2(),
                         Divider(),
                         RowInfo2(0.8,'Dart'),
                         RowInfo2(0.65,'C#'),
                         RowInfo2(0.85,'Java'),
                         RowInfo2(0.85,'Kotlin'),
                         Divider(),
                         Padding(
                           padding: const EdgeInsets.only(bottom: 8.0),
                           child: Text('Knowledge',
                           style: Theme.of(context).textTheme.subtitle2,),
                         ),
                         RowKnowledg('Material Design'),
                         RowKnowledg('Git'),
                         RowKnowledg('Json'),
                         Divider(),
                         
                         TextButton(onPressed: (){}, child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                              Text('Download Cv',
                              style: TextStyle(
                                color: Theme.of(context).textTheme.subtitle1!.color
                              ),),
                             SizedBox(width: defpading/2,),
                             Icon(Icons.download_sharp,color: Colors.white,)
                           ],
                         )),
                         Container(
                           margin: EdgeInsets.all(defpading/2),
                           color: Color(0xff24242e),
                           child: Row(
                             children: [
                               Spacer(),
                               IconButton(onPressed: (){}, icon: Icon(Icons.satellite,color: Colors.white,)),
                               IconButton(onPressed: (){}, icon: Icon(Icons.satellite,color: Colors.white,)),
                               IconButton(onPressed: (){}, icon: Icon(Icons.satellite,color: Colors.white,)),
                               Spacer(),
                             ],
                           ),
                         )





                       ],
                     ) ,
                   ))

     ],
               ),
            );
  }
}

class RowKnowledg extends StatelessWidget {

  String Lable;


  RowKnowledg(this.Lable);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
         Icon(Icons.wb_cloudy_rounded, color: PrimaryColor,),
          SizedBox(width: defpading/2,),
          Text(Lable,
          style:  TextStyle(
              color: Colors.white
          ),)
        ],
      ),
    );
  }
}

class RowInfo2 extends StatelessWidget {
  double Per;

  String Label;


  RowInfo2(this.Per, this.Label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:defpading/2),
          child: Text('Coding',
            style: Theme.of(context).textTheme.subtitle2,),
        ),
        TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: Per), duration: defDuration, builder: (context,double value, child) =>
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Label,style: TextStyle(
                        color: Colors.white
                    ),),
                    Text((value * 100).toInt().toString()+'%',style: TextStyle(
                        color: Colors.white
                    ),),
                  ],
                ),
                SizedBox(height: defpading/2,),
                LinearProgressIndicator(
                  value: value,
                  backgroundColor: DarkColor,
                  color: PrimaryColor,
                ),
              ],
            ))
      ],
    );
  }
}

class Part1 extends StatelessWidget {
  const Part1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoRow('Residence','Iran'),
        InfoRow('City','Ahvaz'),
        InfoRow('Age','23'),
      ],
    );
  }
}

class Part2 extends StatelessWidget {
  const Part2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:defpading),
          child: Text('Skills',
            style: Theme.of(context).textTheme.subtitle2,),
        ),
        Row(
          children: [
            Expanded(child: AnimatedSkill(0.9,'Android')),
            SizedBox(width: defpading,),
            Expanded(child: AnimatedSkill(0.7,'Flutter')),
            SizedBox(width: defpading,),
            Expanded(child: AnimatedSkill(0.8,'Firebase')),
          ],
        ),
      ],
    );
  }
}

class AnimatedSkill extends StatelessWidget {
   double Percentage;
   String Labe;

   AnimatedSkill(this.Percentage, this.Labe);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: Percentage),
              duration: defDuration, builder: (context, double value, child) =>
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value:value,
                        color: PrimaryColor,
                        backgroundColor: DarkColor,
                      ),
                      Center(
                        child: Text(
                          (value*100).toInt().toString()+'%',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      )
                    ],

                  )
            ),
        ),
        SizedBox(height: defpading/2,),
        Text(Labe,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.subtitle2,)
      ],
    );
  }
}

class InfoRow extends StatelessWidget {
   String Title,Value;


   InfoRow(this.Title, this.Value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defpading/2),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Text(Title,style: TextStyle(color: Colors.white),),
          Text(Value,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
