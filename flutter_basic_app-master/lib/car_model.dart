//import 'dart:convert';
//import 'dart:io';
import 'dart:async';

class Dog {
  final String name;
  final String location;
  final String description;
  String imageUrl;

  int rating = 10;

  Dog(this.name, this.location, this.description);

  Future getImageUrl() async {
    //if (imageUrl != null) {

    if (this.name == 'DeLorean DMC-12') {
      imageUrl =
          'https://media1.tenor.com/images/112ae8f4bf1be83511c451108fa96e4c/tenor.gif';
    } else if (this.name == 'Lotus Esprit Series I') {
      imageUrl =
          'https://www.diariodeleon.es/media/diariodeleon/images/2013/09/11/826452_1.jpg';
    } else if (this.name == 'Batmobile') {
      imageUrl =
          'https://cdn.motor1.com/images/mgl/K9An1/s3/the-next-batmobile-is-supposedly-more-muscle-car-and-less-tank.jpg';
    } else if (this.name == 'Dodge Charger') {
      imageUrl =
          'https://d3lp4xedbqa8a5.cloudfront.net/s3/digital-cougar-assets/whichcar/2018/05/28/-1/dodge-charger-onroad-2.jpg';
    } else if (this.name == 'Pontiac Trans Am') {
      imageUrl =
          'https://media1.tenor.com/images/ed2d096114910b471dd2efbe3c106d39/tenor.gif';
    } else if (this.name == 'XB GT Ford Falcon') {
      imageUrl =
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/madmax-interceptor-1542044738.jpg';
    } else if (this.name == 'The Gigahorse') {
      imageUrl = 'https://i.imgur.com/Y6FZuxa.jpg';
    } else if (this.name == 'Ford Explorer') {
      imageUrl =
          'https://i.pinimg.com/originals/6d/a8/6a/6da86abc4c279b548ad084066d80d4f9.jpg';
    } else if (this.name == 'Cadillac') {
      imageUrl =
          'http://98ron.superunleaded.com/wp-content/uploads/2016/07/giphy-5-2.gif';
    } else if (this.name == 'Ford Econoline') {
      imageUrl =
          'https://i.blogs.es/5fb258/650_1000_dos-tontos-muy-tontos-2/1366_2000.jpg';
    }

    // return;
    // }

    //try {
    //var uri = new Uri.http('dog.ceo', '/api/breeds/image/random');
    //var request = await http.getUrl(uri);
    // var response = await request.close();
    // var responseBody = await response.transform(utf8.decoder).join();

    // imageUrl = json.decode(responseBody)['message'];

    //} catch (exception) {
    //  print(exception);
    //}
  }
}
