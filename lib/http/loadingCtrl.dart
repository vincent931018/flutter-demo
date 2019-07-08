import 'package:flutter_app/utils/commonUtils.dart';

class LoadingCtrl {

    showLoading() {
        CommonUtils.showLoading(mask: true);
    }

    hideLoading() {
        CommonUtils.hideLoading();
    }
}
