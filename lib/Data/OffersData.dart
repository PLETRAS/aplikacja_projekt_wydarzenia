class Place {
  final double x;
  //final double y;
  //final String zdjecia;
  //final String zdjecie;
  //final String strona;
  //final String adres;
  //final int    cena;
  //final String opis2;
  //final String opis;
  //final int    znizka;
    final String nazwa;

  Place(
    this.x,
  //this.y,
  //this.zdjecia,
  //this.zdjecie,
  //this.strona,
  //this.adres,
  //this.cena,
  //this.opis2,
  //this.opis,
  //this.znizka
      this.nazwa
      );
  }

List<Place> placeList = [
  Place(0,"Name1"),
  Place(0.10,"Name2"),
  Place(0.60,"Name3"),
  Place(0.90,"Name4"),
  Place(1.60,"Name5"),
  Place(-2,"Name6"),
  Place(0,"Name7"),
  // Place("hulakula"),
  // Place("hulakula"),
  // Place("hulakula"),
  // Place("hulakula"),
  // Place("hulakula"),
  // Place("hulakula"),
  // Place("hulakula"),
  // Place("hulakula"),
];




double slider1Val = 0.5;

List<Place> closeplaceList=[];

