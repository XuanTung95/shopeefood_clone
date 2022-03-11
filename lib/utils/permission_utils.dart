
import 'package:permission_handler/permission_handler.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class PermissionUtils {
  static Future<PermissionStatus> requestCameraPermission() async {
    return requestSinglePermission(Permission.camera);
  }

  static Future<PermissionStatus> requestStoragePermission() async {
    return requestSinglePermission(Permission.storage);
  }

  static Future<PermissionStatus> requestSinglePermission(Permission permission) async {
    var status = await permission.status;
    var statusFinal = status;
    logger.d("Permission $permission: $status");
    switch (status) {
      case PermissionStatus.granted:
        break;
      case PermissionStatus.restricted:
        break;
      case PermissionStatus.limited:
        break;
      case PermissionStatus.denied:
        // We didn't ask for permission yet or the permission has been denied before but not permanently.
        final shouldShow = await permission.shouldShowRequestRationale;
        final newStatus = await permission.request();
        logger.d("Permission $permission, newStatus: $status $shouldShow");
        statusFinal = newStatus;
        // openAppSettings();
        break;
      case PermissionStatus.permanentlyDenied:
        // The user opted to never again see the permission request dialog for this
        // app. The only way to change the permission's status now is to let the
        // user manually enable it in the system settings.
        openAppSettings();
        break;
    }
    return statusFinal;
  }
}
