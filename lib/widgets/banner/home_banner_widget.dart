import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopeefood_clone/models/model_ads_banner.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/vm/global/state_home_ads_banner.dart';

import '../common/app_image_widget.dart';
import 'banner_scroll_bar.dart';

class HomeBannerWidget extends ConsumerStatefulWidget {
  const HomeBannerWidget({Key? key}) : super(key: key);

  @override
  _HomeBannerWidgetState createState() => _HomeBannerWidgetState();
}

class _HomeBannerWidgetState extends ConsumerState<HomeBannerWidget> {
  late CarouselController pageController;
  int value = 0;

  @override
  void initState() {
    super.initState();
    pageController = CarouselController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var bannerState = ref.watch(StateHomeBanner.provider);
    List<ModelBanner> _data = bannerState.banners.data;
    if (_data.isEmpty) return const SizedBox();
    return SizedBox(
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: _data.length,
            itemBuilder: (context, index, realIndex) {
              var banner = _data[index];
              return BannerItemWidget(banner: banner);
            },
            options: CarouselOptions(
                height: 120.0,
                aspectRatio: 1600/500,
                viewportFraction: 1.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                onPageChanged: (int index, CarouselPageChangedReason reason) {
                  setState(() {
                    value = index;
                  });
                }),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: BannerScrollBar(
              count: _data.length,
              itemWidth: 6,
              itemPadding: 3,
              initValue: 0,
              value: value,
              itemHeight: 1.5,
              circleSize: 7,
            ),
          ),
        ],
      ),
    );
  }
}

class BannerItemWidget extends StatelessWidget {
  final ModelBanner banner;

  const BannerItemWidget({Key? key, required this.banner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppImageNetworkWidget(
      url: banner.imageUrl ?? '',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      //cancelToken: cancellationToken,
    );
  }
}