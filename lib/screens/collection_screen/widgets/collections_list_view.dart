import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

class CollectionListView extends StatelessWidget {
  final Image? image;

  const CollectionListView({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.76,
        ),
        itemCount: 10, // Кількість елементів
        itemBuilder: (context, index) {
          return Card(
              color: ColorsApp.white246withOpaciti09,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          'Казка про малиша кокі',
                          style: customTextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w800,
                            color: image != null
                                ? ColorsApp.white246
                                : ColorsApp.black58,
                            letterSpacing: 1,
                          ),
                          softWrap: true,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'К-ість аудіо',
                            style: customTextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: image != null
                                  ? ColorsApp.white246
                                  : ColorsApp.black58,
                            ),
                          ),
                          Text(
                            'К-ість годин',
                            style: customTextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: image != null
                                  ? ColorsApp.white246
                                  : ColorsApp.black58,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
