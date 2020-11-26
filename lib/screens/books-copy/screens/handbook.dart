import 'package:flutter/material.dart';

import '../../../shared/widgets/book_button.dart';

class HandBook extends StatelessWidget {
  String pdfLink(String name) => 'assets/pdfs/handbook/$name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handbook'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BookChapter('Chapter I : Responsibilities'),
            BookChapter('অধ্যায় ১ : সংগঠন'),
            BookButton(
              'ডিভ ইঞ্জিনিয়ার ব্যাটেলিয়ানের সংগঠন ও টিওএন্ডই পার্ট-১',
              pdfLink('a1.pdf'),
            ),
            BookButton(
              'ডিভ ইঞ্জিনিয়ার ব্যাটেলিয়ানের উদ্দেশ্য ও সক্ষমতা',
              pdfLink('a2.pdf'),
            ),
            BookButton(
              'আরই ব্যাটালিয়ানের উদ্দেশ্য, সক্ষমতা ও সংগঠন',
              pdfLink('a3.pdf'),
            ),
            BookButton(
              'ইঞ্জিনিয়ার কনস্ট্রাকশন ব্রিগেডের উদ্দেশ্য সক্ষমতা ও সংগঠন',
              pdfLink('a4.pdf'),
            ),
            BookChapter('অধ্যায় ২ : মাইন যুদ্ধ'),
            BookButton(
              'বিভিন্ন ধরণের মাইন পরিচিতি ও কার্যপদ্ধতি',
              pdfLink('a5.pdf'),
            ),
            BookButton(
              'সাধারন পদ্ধতিতে মাইনক্ষেত্র বিছানো',
              pdfLink('a6.pdf'),
            ),
            BookButton(
              'দ্রুত পদ্ধতিতে মাইনক্ষেত্র বিছানো',
              pdfLink('a7.pdf'),
            ),
            BookButton(
              'মাইনক্ষেত্র বিছানোর সাধারণ হিসাবকরণ',
              pdfLink('a8.pdf'),
            ),
            BookButton(
              'মাইনক্ষেত্র অপসারণ',
              pdfLink('a9.pdf'),
            ),
            BookChapter('অধ্যায় ৩ : বারুদ প্রশিক্ষণ'),
            BookButton(
              'বিভিন্ন প্রকার সেপট চার্জের বর্ণনা ও ব্যবহার',
              pdfLink('a10.pdf'),
            ),
            BookButton(
              'বিভিন্ন প্রকার প্রিপেয়ার্ড চার্জের হিসাব ও লাগানোর নিয়ম',
              pdfLink('a11.pdf'),
            ),
            BookButton(
              'রিং মেইন সার্কিট',
              pdfLink('a12.pdf'),
            ),
            BookButton(
              'রিং মেইন সার্কিট',
              pdfLink('a13.pdf'),
            ),
            BookButton(
              'আইইডি ও বুবিট্রাম্প',
              pdfLink('a14.pdf'),
            ),
            BookButton(
              'বিডি অপসারনের পর্বসমূহ ও সংগঠন',
              pdfLink('a15.pdf'),
            ),
            BookButton(
              'আরএসপি_নিরাপদ করণ প্রক্রিয়া',
              pdfLink('a16.pdf'),
            ),
            BookChapter('অধ্যায় ৪ : ফিল্ড ইঞ্জিনিয়ারিং ও ভূ-যন্ত্র'),
            BookButton(
              'রশি ও গিরা',
              pdfLink('a17.pdf'),
            ),
            BookButton(
              'ভূ-যন্ত্র',
              pdfLink('a18.pdf'),
            ),
            BookButton(
              'ডেরিক, শিয়ার ও জিনের বর্ণনা, ব্যবহার এবং তৈরি পদ্ধতি',
              pdfLink('a19.pdf'),
            ),
            BookButton(
              'ফিল্ড লেভেল',
              pdfLink('a20.pdf'),
            ),
            BookChapter('অধ্যায় ৫ : ভূমি প্রতিরক্ষা ও প্রতিবন্ধক'),
            BookButton(
              'বালুর বস্তা দেওয়াল ও রিভেটমেন্টের বর্ণনা, ব্যবহার ও তৈরিকরণ.pdf',
              pdfLink('a21.pdf'),
            ),
            BookButton(
              'বিভিন্ন কমান্ড পোষ্টের মাপ',
              pdfLink('a22.pdf'),
            ),
            BookButton(
              'ট্যাংক প্রতিবন্ধকতা',
              pdfLink('a23.pdf'),
            ),
            BookButton(
              'তারের প্রতিবন্ধকতা',
              pdfLink('a24.pdf'),
            ),
            BookChapter('অধ্যায় ৬ : ব্রীজিং'),
            BookButton(
              'বেইলী সেতু এইচ ডি ২০০',
              pdfLink('a25.pdf'),
            ),
            BookButton(
              'এ্যাক্রো প্যানেল সেতু',
              pdfLink('a26.pdf'),
            ),
            BookButton(
              'ড্রাম ফুট সেতু',
              pdfLink('a27.pdf'),
            ),
            BookButton(
              'হেভী পল্টুন ব্রিজ টাইপ-৭৪',
              pdfLink('a28.pdf'),
            ),
            BookChapter('অধ্যায় ৭ : পানি সরবরাহ'),
            BookButton(
              'কুয়ার পানির পরিমাণ নির্ণয় করন',
              pdfLink('a29.pdf'),
            ),
            BookButton(
              'পানি বিশুদ্ধকরণ পদ্ধতি',
              pdfLink('a30.pdf'),
            ),
            BookButton(
              'ব্রিগেড পানি সরবরাহ কেন্দ্র স্থাপন ও বিতরণ পদ্ধতি',
              pdfLink('a31.pdf'),
            ),
            BookChapter('অধ্যায় 8 : মাল্লাযুদ্ধ'),
            BookButton(
              'বিভিন্ন প্রকার বোট',
              pdfLink('a32.pdf'),
            ),
            BookButton(
              'ওবিএম ইঞ্জিন চালনা সম্পর্কে ধারনা',
              pdfLink('a33.pdf'),
            ),
            BookChapter('অধ্যায় 9 : সড়ক ও বিমান ক্ষেত্র'),
            BookButton(
              'সড়ক ও বিমান ক্ষেত্র',
              pdfLink('a34.pdf'),
            ),
            BookButton(
              'হেলিপ্যাডের বর্ণনা পরিমাপ ও তৈরিকরণ',
              pdfLink('a35.pdf'),
            ),
            BookChapter('অধ্যায় ১০ : ইঞ্জিনিয়ার প্লান্ট ও স্পেশাল ভেহিক্যাল'),
            BookButton(
              'ইঞ্জিনিয়ার প্লান্ট ও স্পেশাল ভেহিক্যাল (সংক্ষিপ্ত বিবরণ)',
              pdfLink('a36.pdf'),
            ),
            BookChapter('অধ্যায় ১১ : ইঞ্জিনিয়ার রণকৌশল'),
            BookButton(
              'ইঞ্জিনিয়ার্সের প্রধান কর্মপরিধি',
              pdfLink('a37.pdf'),
            ),
            BookChapter('অধ্যায় ১২ : মৌখিক আদেশ'),
            BookButton(
              'মাইন ফিল্ড লেইং',
              pdfLink('a38.pdf'),
            ),
            BookButton(
              'মাইন ফিল্ড ব্রিচিং',
              pdfLink('a39.pdf'),
            ),
            BookChapter('অধ্যায় ১৩ : রণ অভিযান'),
            BookButton(
              'প্রতিরক্ষা',
              pdfLink('a40.pdf'),
            ),
            BookButton(
              'রণকৌশলগত পূনঃ মোতায়েন',
              pdfLink('a41.pdf'),
            ),
            BookButton(
              'বসতি এলাকায় যুদ্ধ',
              pdfLink('a42.pdf'),
            ),
            BookButton(
              'ফার্মবেস',
              pdfLink('a43.pdf'),
            ),
            BookButton(
              'গুপ্তাশ্রয়',
              pdfLink('a44.pdf'),
            ),
            BookButton(
              'টহল',
              pdfLink('a45.pdf'),
            ),
            BookButton(
              'হানা',
              pdfLink('a46.pdf'),
            ),
            BookButton(
              'ফাঁদ',
              pdfLink('a47.pdf'),
            ),
            BookChapter('অধ্যায় ১৪ : মানচিত্র পঠন ও ভূমির ব্যবহারের কৌশল'),
            BookButton(
              'হাতের সাহায্যে ডিগ্রী নির্ণয়',
              pdfLink('a48.pdf'),
            ),
            BookButton(
              'দিক নির্ণয়',
              pdfLink('a49.pdf'),
            ),
            BookButton(
              'জিপিএস এর বিভিন্ন অংশের নাম ও ব্যবহার',
              pdfLink('a50.pdf'),
            ),
            BookButton(
              'লক্ষ্যবস্তু দেখানো ও বর্ণনা',
              pdfLink('a51.pdf'),
            ),
            BookButton(
              'সঠিক দূরত্ব নির্ণয়',
              pdfLink('a52.pdf'),
            ),
            BookButton(
              'ছদ্মবেশ ও গোপনীয়তা',
              pdfLink('a53.pdf'),
            ),
            BookButton(
              'ফিল্ড সংকেত',
              pdfLink('a54.pdf'),
            ),
            BookChapter('অধ্যায় ১৫ : অস্ত্র প্রশিক্ষণ'),
            BookButton(
              '৭.৬২ মিঃ মিঃ রাইফেল- টাইপ ৫৬  ',
              pdfLink('a55.pdf'),
            ),
            BookButton(
              '৭.৬২ মিঃ মিঃ অ্যাসল্ট রাইফেল বিডি-০৮ (টি-৮১-১)',
              pdfLink('a56.pdf'),
            ),
            BookButton(
              '৭.৬২ মিঃ মিঃ এসএমজি- টাইপ ৫৬',
              pdfLink('a57.pdf'),
            ),
            BookButton(
              'এ্যামোঃ স্কেল',
              pdfLink('a58.pdf'),
            ),
            BookButton(
              'ভারী অস্ত্র স্থাপনের নীতিমালা',
              pdfLink('a59.pdf'),
            ),
            BookChapter('অধ্যায় ১৬ : প্রশাসন'),
            BookButton(
              'প্রাথমিক চিকিৎসা',
              pdfLink('a60.pdf'),
            ),
            BookButton(
              'যুদ্ধের গোলাবারুদ সরবরাহ',
              pdfLink('a61.pdf'),
            ),
            BookButton(
              'সৈনিকের ব্যক্তিগত প্রশাসন',
              pdfLink('a62.pdf'),
            ),
          ],
        ),
      ),
    );
  }
}

class BookPart extends StatelessWidget {
  final String name;
  const BookPart(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}

class BookChapter extends StatelessWidget {
  final String name;
  const BookChapter(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );
  }
}
