import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/view/components/show_daily_tasks_widget.dart';
import 'package:todolist/view_model/user_info_view_model.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<UserInfoViewModel>();

    void editProfileImageHandler() {
      viewModel.setProfileImageFromGallery();
    }

    TextTheme getTextThemes() {
      return Theme.of(context).textTheme;
    }

    var screenSize = MediaQuery.of(context).size;

    double scaledHeight(double scale) {
      return (screenSize.height * scale);
    }

    double scaledWidth(double scale) {
      return (screenSize.width * scale);
    }

    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: Stack(
        children: [
          Image(
            // image: const AssetImage("assets/images/dashboard_header_image.png"),
            image: AssetImage(Assets.images.dashboardHeaderImage.path),
            width: scaledWidth(1),
          ),
          SafeArea(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                left: scaledWidth(0.06),
                right: scaledWidth(0.06),
                bottom: scaledHeight(0.08),
                top: scaledHeight(0.04)),
            child: Column(
              children: [
                SizedBox(height: scaledHeight(0.04)),
                GestureDetector(
                  onTap: editProfileImageHandler,
                  child: CircleAvatar(
                    radius: scaledHeight(0.05),
                    backgroundImage:  AssetImage(
                        Assets.images.defaultProfileImage.path),
                    foregroundImage: viewModel.getProfileImage(),
                  ),
                ),
                SizedBox(height: scaledHeight(0.02)),
                Text("Welcome ${viewModel.getFullName()}!",
                    textAlign: TextAlign.center,
                    style: getTextThemes().titleLarge),
                SizedBox(height: scaledHeight(0.01)),
                Image(
                    image: AssetImage(
                        Assets.images.dashboardMiddleImage.path),
                    height: scaledHeight(0.29)),
                const ShowDailyTasksWidget()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
