import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CloseAppbar extends StatelessWidget implements PreferredSizeWidget {
  CloseAppbar({Key? key, this.backPress, this.progressBarRatio, this.transparent = false, this.closeColor = Colors.black}) : super(key: key);

  double statusBarHeight = MediaQuery.of(Get.context!).padding.top;
  Function()? backPress;

  double? progressBarRatio;
  bool transparent;

  Color closeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56 + statusBarHeight,
      color: transparent ? Colors.transparent : Colors.white,
      child: Column(
        children: [
          SizedBox(height: statusBarHeight),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 16),
                        GestureDetector(
                          onTap: backPress ?? Get.back,
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Icon(Icons.close, color: closeColor),
                          ),
                        ),
                      ],
                    ),
                    if (progressBarRatio != null)
                      if (progressBarRatio! <= 1)
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              width: constraints.maxWidth,
                              height: 4,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: (progressBarRatio! * 100).toInt(),
                                    child: Container(
                                      decoration: const BoxDecoration(color: Colors.green),
                                    ),
                                  ),
                                  Expanded(
                                    flex: ((1 - progressBarRatio!) * 100).toInt(),
                                    child: Container(
                                      decoration: const BoxDecoration(color: Colors.black12),
                                    ),
                                  )
                                ],
                              ),
                            ))
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size preferredSize = Size.fromHeight(60 + MediaQuery.of(Get.context!).padding.top);
}
