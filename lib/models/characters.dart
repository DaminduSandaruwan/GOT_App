import 'package:flutter/material.dart';

class Character{
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character({this.name,this.imagePath,this.description,this.colors});
}

List characters = [
  Character(
    name: "John Snow",
    imagePath: "assets/images/JohnSnow.png",
    description:
        "Jon Snow, born Aegon Targaryen, is the son of Lyanna Stark and Rhaegar Targaryen, the late Prince of Dragonstone. After successfully capturing a wight and presenting it to the Lannisters as proof that the Army of the Dead are real, Jon pledges himself and his army to Daenerys Targaryen.",
    colors: [Colors.grey.shade800, Colors.grey.shade800]
  ),

  Character(
    name: "Daenerys I Targaryen",
    imagePath: "assets/images/Danereous.png",
    description:
    "Queen Daenerys I Targaryen is the younger sister of Rhaegar Targaryen and Viserys Targaryen, the paternal aunt of Jon Snow, and the youngest child of King Aerys II Targaryen and Queen Rhaella Targaryen, who were both ousted from the Iron Throne during Robert Baratheon's rebellion.",
      colors: [Colors.grey.shade800, Colors.grey.shade800]
  ),
];