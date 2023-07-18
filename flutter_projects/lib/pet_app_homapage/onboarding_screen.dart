import 'package:flutter/material.dart';
import 'package:untitled/pet_app_homapage/screens/welcome_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void navigateToWelcomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description,
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                    if (_pageController.page == demo_data.length - 1) {
                      navigateToWelcomeScreen();
                    } else {
                      _pageController.nextPage(
                        curve: Curves.ease,
                        duration: Duration(milliseconds: 300),
                      );
                    }
                  },
                  child: Image.asset("assets/pet_apps/slide.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/pet_apps/pet-house (3).png",
    title: "happytails'e  Hoşgeldiniz",
    description: "Minik dostlarımız artık emin ellerde",
  ),
  Onboard(
    image: "assets/pet_apps/chat (2).png",
    title: "Mesajlaşma",
    description:
        "Yıldız profilli bakıcılara ve diğer hayvan sahiplerine aklına takılanları sor",
  ),
  Onboard(
    image: "assets/pet_apps/veterinarian.png",
    title: "Acil Veteriner Destek Hattı",
    description:
        "Acil durumlarda 7/24 açık olan hattımızdan kendine en yakın sağlık kuruluşunu bul",
  ),
  Onboard(
    image: "assets/pet_apps/veterinary (2).png",
    title: "Hayvan Haritaları",
    description: "Kendine en yakın veteriner, petshop vs keşfet. ",
  )
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 200,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
