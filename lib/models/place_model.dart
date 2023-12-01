class PlaceInfo{
  final String location,image,name,desc;
  final int days,distance;

  PlaceInfo({
    required this.image,
    required this.days,
    required this.desc,
    required this.distance,
    required this.location,
    required this.name,
});
}
List places=[
  PlaceInfo(image: "assets/attabadlake.jpg", days: 3, desc: "The depth of Attabad lake is 109 meters (357.6 feet). It is one of the deepest lakes in Pakistan with an altitude of 2,559 meters (8,396 ft). During winter, it gets frozen. As the majestic Attabad lake did not even exist before 2010, here is how it got into the formation we see today.", distance: 1100, location: "Gilgit-Baltistan", name: "Attabad Lake"),
  PlaceInfo(image: "assets/fairymaidows.jpeg", days: 7, desc: "This unique and exciting trip will take you through the enchanting Himalayan valleys of Kaghan although this valley is quite well known and visited by the many Tourists, but the visits are restricted to the places near the road. This trip will take you into the areas selds visited by the outsiders, and the only people you will find here are the Gujars who are nomadic tribes and use these valleys as their summer grazing pasturesThis unique and exciting trip will take you through the enchanting Himalayan valleys of Kaghan although this valley is quite well known and visited by the many Tourists, but the visits are restricted to the places near the road. This trip will take you into the areas selds visited by the outsiders, and the only people you will find here are the Gujars who are nomadic tribes and use these valleys as their summer grazing pastures", distance: 850, location: "Kaghan Valley ", name:"Fairy-Medows"),
  PlaceInfo(image: "assets/DarawarFort.jpeg", days:5, desc: "The fort is a massive and visually stunning square structure built of clay bricks. The walls have a length of 1500 meters and stand up to thirty meters high. There are forty circular bastions, ten on each side, which stand 30 m high and are visible across the desert for many miles.", distance: 350, location: "Cholistan desert", name: "Drawar-Fort"),
  PlaceInfo(image: "assets/borith lake.jpeg", days: 3, desc: "Borith lake lies approximately 2 km to the north of Hussaini, a saline body of water occupying a small hollow at an elevation of 2,500 meters (8,200 feet). The lake can be reached via a 2 km unpaved jeep route from Husseini village, which lies adjacent to Gulmit village.", distance: 700, location: "Gulmit , Gilgit-Baltistan", name: "Borith Lake"),
  PlaceInfo(image: "assets/karachibeach.jpg", days: 4, desc: "Karachi Beach or Clifton Beach is situated on the beach of Arabian Sea. people from Pakistan and international visitors must go to Clifton beach when they visit Karachi, Camel riding, Ice Cream and Beach Bazar are the famous events at Clifton Beach.", distance: 2100, location: "Karachi,Pakistan", name: "Turtles-Beach"),
  PlaceInfo(image: "assets/swatriver.jpg", days: 7, desc: "The Swat's source lies in the Hindu Kush mountains, from where it is fed by glacial waters throughout the year. From the high valleys of Swat Kohistan, the river begins at the confluence of the Usho, and Gabral rivers (also known as the Utrar River) at Kalam.", distance: 450, location: "Kalam-swat,Pakistan", name: "Swat-River"),
  PlaceInfo(image: "assets/umbrella waterfall.jpg", days: 1, desc: "Umbrella Waterfall is a waterfall located in the Sajikot area of Abbottabad District. It has recently emerged as a new tourist attraction in the KPK province of Pakistan. The waterfall is located 27 Kilometers from Havelian. To reach the waterfall, you have to hike down about 30 to 45 minutes from the village of Poona.", distance: 125, location: "Haveliyan-Abbotabad", name: "Umberella waterfall"),
  PlaceInfo(image: "assets/Minimarg.jpeg", days:10, desc: "Minimarg (Urdu: منی مارگ) is a village in the Astore District of Gilgit Baltistan, Pakistan. It is situated on the bank of the Burzil Nala, approximately 36 km south of the Chilam Chowki checkpost. The village, located south of Astore via the Burzil Pass, has an average elevation of 2,844.6 metres above sea level.", distance: 860, location: "Astore-GB,Pakistan", name: "Minimarg")
];