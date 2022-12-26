import 'package:flutter/material.dart';
import 'package:travjo_web/constants/colors.dart';

class HomeMyTeam extends StatelessWidget {
  const HomeMyTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          const Text(
            'Our Team',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: const [
              TeamCard(
                image: 'images/members/1.jpg',
                name: 'Marut Tripathi',
                role: 'Founder',
              ),
              TeamCard(
                image: 'images/members/2.jpg',
                name: 'Melwin I',
                role: 'Co-Founder & CTO',
              ),
              TeamCard(
                image: 'images/members/3.jpeg',
                name: 'Priyavrat Badoni',
                role: 'COO',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TeamCard extends StatelessWidget {
  final String image;
  final String name;
  final String role;
  const TeamCard(
      {Key? key, required this.image, required this.name, required this.role})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(role, style: const TextStyle(color: primaryColor, fontSize: 12))
      ],
    );
  }
}
