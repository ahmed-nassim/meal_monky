import 'model.dart';

class OnBoardingController {
  int currentPage = 0;

  List<OnBoarding> models = [
    OnBoarding(
        imageUrl: "assets/images/find_food.png",
        title: "Find Food You Love",
        subTitle:
            "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep"),
    OnBoarding(
        imageUrl: "assets/images/delivery_vector.png",
        title: "Fast Delivery",
        subTitle:
        "Fast food delivery to your home, office\n wherever you are"),
    OnBoarding(
        imageUrl: "assets/images/live tracking_vector.png",
        title: "Live Tracking",
        subTitle:
        "Real time tracking of your food on the app once you placed the order"),
  ];
}
