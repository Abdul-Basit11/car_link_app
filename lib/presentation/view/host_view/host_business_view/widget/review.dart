import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Image.asset(
            'asset/images/review.png',
            width: 300,
            height: 200,
          )),
          Center(
            child: Text(
              'Review',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  backgroundColor: Colors.red.shade100,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
