
class Game {

  String image,icon, name, type,description;
  num score, download, review;
  List<String> imgs;

  Game({
    required this.image,
    required this.name,
    required this.type,
    required this.description,
    required this.score,
    required this.download,
    required this.review,
    required this.imgs,
    required this.icon,
  });

}

    List<Game> gameDetail = [
      
      Game(image: "assets/images/ori1.jpg",
          name: "Ori and The Blind Forest",
          type: "Adventure",
          description: "If you take a look at the most successful game descriptions, they all follow a common structure. Let’s break down this structure and explore how the devs of the successful indie game, Don’t Starve, created an awesome game description that captivated players!.Let’s face it - not everyone is going to like your game. If you’re making something amazing and unique, there will always be some people who will absolutely love it, and others who won’t care for it at all. And that’s okay!. The App Store has its own section where you list features as a set of bullet points. Treat this as a benefit list, not a feature list. For every feature you list, make it really obvious why it’ll make the game more fun. If you can’t figure out how to make the feature sound fun then don’t bother to mention it. Keep throwing in game-friendly words and phrases like “exciting”, “addictive”, “challenging” and so on. Words that will sell the game.",

        score: 4.8,
          download: 400,
          review: 600,
          imgs:  [
                "assets/images/ori2.jpg",
                "assets/images/ori3.jpg",
                "assets/images/ori4.jpg",
                "assets/images/ori5.jpg",
          ],
          icon: "assets/images/ori_logo.png",
      ),
      Game(
        image: "assets/images/rl1.jpg",
        name: "Rayman Legends",
        type: "Adventure",
        description: "If you take a look at the most successful game descriptions, they all follow a common structure. Let’s break down this structure and explore how the devs of the successful indie game, Don’t Starve, created an awesome game description that captivated players!.Let’s face it - not everyone is going to like your game. If you’re making something amazing and unique, there will always be some people who will absolutely love it, and others who won’t care for it at all. And that’s okay!. The App Store has its own section where you list features as a set of bullet points. Treat this as a benefit list, not a feature list. For every feature you list, make it really obvious why it’ll make the game more fun. If you can’t figure out how to make the feature sound fun then don’t bother to mention it. Keep throwing in game-friendly words and phrases like “exciting”, “addictive”, “challenging” and so on. Words that will sell the game.",

        score: 4.5,
        download: 350,
        review: 400,
        imgs:  [
              "assets/images/rl2.jpg",
              "assets/images/rl3.jpg",
              "assets/images/rl4.jpg",
              "assets/images/rl5.jpg",
        ],
        icon: "assets/images/rl_logo.png",
      )

    ];




