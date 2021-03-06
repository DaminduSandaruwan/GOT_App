import 'package:flutter/material.dart';
import 'package:got_charc/models/characters.dart';
import 'package:got_charc/pages/character_detail.dart';
import 'package:got_charc/styles.dart';
import 'package:got_charc/widgets/clipper.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;
  final PageController pageController;
  final int currentPage;

  const CharacterWidget({Key key, this.character, this.pageController, this.currentPage}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return InkWell(
      onTap: (){
        Navigator.push(context, PageRouteBuilder(
          transitionDuration: const Duration(milliseconds:350),
          pageBuilder: (context, _, __) => CharacterDetailScreen(character:character)
        ));
      },
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context,child) {
          double value = 1;
          if(pageController.position.haveDimensions){
            value=pageController.page-currentPage;
            value=(1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
            //if(currentPage==1) print("value $value");
          }
          return Stack(

            children:[
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: CharacterCardBackgroundClipper(),
                  child: Hero(
                    tag: "background-${character.name}",
                    child: Container(
                      height: 0.55 * screenHeight,
                      width: 0.9 * screenWidth,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: character.colors,
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft
                        )
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0,-0.8),
                child: Hero(
                  tag: "image-${character.name}",
                  child: Image.asset(
                    character.imagePath,
                    height: screenHeight * 0.55 * value,
                  ),
                ),
                
              ),
              
              Padding(
                padding: const EdgeInsets.only(left:48,right: 16, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: "name-${character.name}",
                      child: Material(
                        color: Colors.transparent,
                        child: Container(                    
                          child: Text(
                            character.name, 
                            style: AppTheme.heading
                            )
                          )
                        ),
                    ),
                    Text("Click to Read More",style: AppTheme.subHeading),
                  ],
                ),
              )
            ],
          );
        },        
      ),
    );
  }
}

