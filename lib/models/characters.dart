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

  Character(
    name: "Arya Stark",
    imagePath: "assets/images/AryaStark.png",
    description:
    "Arya Stark is the third child of Eddard Stark and Catelyn Stark. After narrowly escaping the persecution of House Stark by House Lannister, Arya is trained as a Faceless Man at the House of Black and White in Braavos, and uses her new skills to bring those who have wronged her family to justice.",
      colors: [Colors.grey.shade800, Colors.grey.shade800]
  ),

  Character(
    name: "Sansa Stark",
    imagePath: "assets/images/QueenSansa.png",
    description:
    "Sansa Stark is the eldest daughter of Eddard Stark of Winterfell and his wife Catelyn. She initially starts off with a very naive view of the world, but as time goes on and she and her family suffer one cruelty and betrayal after another, she becomes a more hardened and learned individual.",
      colors: [Colors.grey.shade800, Colors.grey.shade800]
  ),
];