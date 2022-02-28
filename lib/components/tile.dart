import 'package:flutter/material.dart';
import 'package:scholarships/models/model.dart';


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
          // Container(
          //   height: 200.0,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: NetworkImage(model.image),
          //       fit: BoxFit.cover
          //     ),
          //     borderRadius: BorderRadius.circular(8.0)
          //   ),
          // ),
  
          // const SizedBox(height:18.0),
  
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
  
          const SizedBox(height: 8.0),
  
          Text(
            model.address,
  
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.red
            ),
          ),
        ],
      ),
  );
}
















