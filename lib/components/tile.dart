import 'package:flutter/material.dart';
import 'package:scholarships/models/model.dart';
import 'package:url_launcher/url_launcher.dart';


Widget tile(Model model, BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0
          ),
        ],
      ),
  
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
  
        children: [  

          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/b1.jpg'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(8.0)
            ),
          ),
  
          Container(
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: Text(
              model.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
          ),

          const SizedBox(height: 12.0,),

          Center(
            child: ElevatedButton.icon(
              label: Text("Visit"),
              icon: Icon(Icons.call_made),
                onPressed: () async {
                  final url = model.address;

                  if(await canLaunch(url)){
                    launch(url);
                  } else {
                    print("Can't launch url");
                  }
                },
                style: ElevatedButton.styleFrom(
                  // primary: Color(0xFF262AAA),
                  primary: Color.fromARGB(255, 121, 125, 248),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                // child: const Text("Vist Page")
              ),
          ),
        ],
      ),
  );
}
















