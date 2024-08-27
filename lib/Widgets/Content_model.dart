class UnboardingContent{
  String image;
  String title;
  String descrption;
  UnboardingContent({required this.image,required this.descrption,required this.title});
}

List<UnboardingContent> contents=[
UnboardingContent(
image: 'images/screen1.png',
descrption:'Pick your food from our menu   more the 30 times',
title:'Select from our best menu'
),
  UnboardingContent(
      image: "images/screen2.png",
      descrption:'You can pay cash on delivery and card payment is available',
      title:'Easy and Safe Payment'
  ),
  UnboardingContent(
      image: "images/screen3.png",
      descrption:'Delivery your food at your door step ',
      title:'Quick delivery at your door step'
  )
];


// 'You can pay cash on delivery and card payment is available',
// 'Easy and Safe Payment'