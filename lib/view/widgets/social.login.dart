import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginGlobal extends StatelessWidget {
  const SocialLoginGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '- Or sign in with -',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        SizedBox(height: 15),

        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              // Google Login Button
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.3),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                
                  child: SvgPicture.asset(
                    'assets/images/google.svg',
                    height: 20,
                  ),
                ),
              ),
          
              SizedBox(width: 10),
          
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.3),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                
                  child: SvgPicture.asset(
                    'assets/images/facebook.svg',
                    height: 20,
                  ),
                ),
              ),
          
              SizedBox(width: 10),
          
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.3),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                
                  child: SvgPicture.asset(
                    'assets/images/x.svg',
                    height: 30,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}