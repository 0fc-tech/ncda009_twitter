import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
  const Tweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      child: Row(
        children: [
          Image.network(
              "https://sgen-cfdt.fr/contenu/uploads/sites/27/2017/09/t%C3%A9l%C3%A9travail-300x200-120x162.jpg",
              height: 160,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("UsernameDuTwittos"),
                      Text("50s",style: TextStyle(color: Colors.grey),)
                    ]
                  ),
                  SizedBox(height: 8.0,),
                  Expanded(
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean condimentum, lorem vitae sagittis porta, tortor ligula dignissim metus, non auctor nisi erat sit amet odio. Fusce at nulla quis justo rutrum volutpat vel eget ante. Etiam aliquet augue non diam egestas, eget lacinia massa cursus. Ut consectetur quis odio gravida condimentum. Phasellus est nulla, scelerisque ac commodo non, convallis vitae libero. Mauris egestas nibh eget ullamcorper pretium. Vestibulum ornare vel arcu quis fringilla. Praesent in arcu ultrices, rhoncus ante interdum, mollis leo. Etiam sem felis, tincidunt sed sem eget, sodales aliquam tortor. Nam dictum vulputate scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed ut leo mauris. Ut semper tellus metus, et pellentesque nisi dapibus id.")
                  )
              ],),
            ),
          )
        ]
      ),
    );
  }
}
