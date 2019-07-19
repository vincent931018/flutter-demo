/*
 * @Author: caowencheng
 * @GitHub: https://github.com/cwc845982120
 * @Description: 首页 banner展示
 * @Date: 2019-07-15
 */

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_app/utils/timerUtils.dart';
import 'package:flutter_app/assets/images.dart';

class HomeBanner extends StatefulWidget {
    @override
    State createState() => new _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> with SingleTickerProviderStateMixin  {

    bool skeletonFlag;

    TimerUtils timer;

    @override
    void initState() {
        skeletonFlag = true;
        timer = new TimerUtils(mInterval: 1000, mTotalTime: 3000);
        timer.setOnTimerTickCallback((seconds) {
            if (seconds == 0) {
                setState(() {
                    skeletonFlag = false;
                });
            }
        });
        timer.startCountDown();
        super.initState();
    }

    @override
    void dispose() {
        timer.cancel();
        super.dispose();
    }

    LayoutBuilder buildToastLayout(bool skeletonFlag) {
        return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
            if (skeletonFlag) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 145,
                    decoration: new BoxDecoration(
                        color: Colors.grey
                    ),
                );
            } else {
                return new Container(
                    child: new Swiper(
                        itemBuilder: (BuildContext context,int index){
                            return new FadeInImage.assetNetwork(
                                placeholder: ImagesLibrary.placeholderImg,
                                image: "https://portal.lanrenyun.cn/1561949318694",
                                width: MediaQuery.of(context).size.width,
                                height: 145,
                                fit: BoxFit.cover,
                            );
                        },
                        autoplay: true,
                        itemCount: 3,
                        pagination: new SwiperPagination(),
                        itemHeight: 145,
                        itemWidth: MediaQuery.of(context).size.width,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 145,
                );
            }
        });
    }

    @override
    Widget build(BuildContext context) {
        return buildToastLayout(skeletonFlag);
    }
}