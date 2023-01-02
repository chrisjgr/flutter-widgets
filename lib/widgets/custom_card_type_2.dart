import 'package:app_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? rTitle;
  final String? lTitle;

  const CustomCardType2(
      {super.key, required this.imageUrl, this.lTitle, this.rTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppTheme.primary?.withOpacity(0.7),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (rTitle != null || lTitle != null)
            Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (lTitle != null)
                      Expanded(
                        child: Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text('#$lTitle',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    if (rTitle != null)
                      Expanded(
                        child: Container(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text('~ $rTitle',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontStyle: FontStyle.italic)),
                        ),
                      )
                  ],
                ))
        ],
      ),
    );
  }
}
