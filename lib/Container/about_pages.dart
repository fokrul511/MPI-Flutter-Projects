import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class AboutPages extends StatelessWidget {
  const AboutPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'মৌলভীবাজার পলিটেকনিক ইনস্টিটিউট ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.asset('assets/images/clg.png'),
              const SizedBox(
                height: 20.0,
              ),
              // this is redmore function........
              const ReadMoreText(
                'মৌলভীবাজার পলিটেকনিক ইনস্টিটিউট গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের শিক্ষা মন্ত্রনালয়ের কারিগরি শিক্ষা অধিদপ্তরাধীন একটি সরকারী শিক্ষা প্রতিষ্ঠান। এতে বাংলাদেশের কারিগরি শিক্ষা বোর্ড কর্তৃক ৪ বছরের ডিপ্লোমা-ইন-ইঞ্জিনিয়ারিং শিক্ষা কার্যক্রম পরিচালিত হয়। ঐতিহ্যবাহী মৌলভীবাজার শহরের শমসেরনগর রোডে শোভনীয় দালান কোঠায় সজ্জিত ঐতিহ্যবাহী মৌলভীবাজার পলিটেকনিক ইন্সটিটিউট অবস্থিত। ২০১২ সালে কম্পিউটার ও ইলেকট্রনিক্স এ দুটি টেকনোলজি নিয়েই যাত্রা শুরু করেছিল এই প্রতিষ্ঠানটি। পরবর্তিতে কারিগরি শিক্ষার প্রসারতার লক্ষ্যে মৌলভীবাজার পলিটেকনিক ইনস্টিটিউট এ সরকারী সিদ্ধান্তের আলোকে পরবর্তীতে আরও টেকনোলজির (আরো দুইটি টেকনোলজি -আর এসি ও ফুড) সংজোযন করা হয়। মৌলভীবাজার পলিটেকনিক ইনস্টিটিউট সবুজ ছায়া ঘেরা বৃক্ষরাজীতে পরিবেষ্ঠিত এবং ইনস্টিটিউটের একাডেমিক কাম প্রশাসনিক ভবনের সামনে আলোক সজ্জায় সজ্জিত ফোয়ারা সম্বলিত মনোমুগ্ধকর ফুলের বাগান অবস্থিত। ৬ একর জমির উপর নির্মিত এ প্রতিষ্ঠানটিতে সুরম্য ৫তলা ভবন সমূহের একাডেমিক কাম প্রশাসনিক ভবন, ছাত্রাবাস ইত্যাদির সন্নিবেশ ঘটেছে। ইনস্টিটিউট এর প্রবেশ পথের গেটে, একাডেমিক কাম প্রশাসনিক ভবনের  প্রবেশের গেটসমূহে রয়েছে সুসজ্জিত তরুণ ও কর্তব্যনিষ্ঠ নিরাপত্তা প্রহরী, যারা সার্বক্ষনিক প্রয়োজনীয় যোগাযোগের মাধ্যমসহ নিরাপত্তা ও আগমনকারীদের তথ্য সংগ্রহ করেছে।',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
                moreStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
