import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

class ProjectDetails extends StatelessWidget {
  final Project project;

  const ProjectDetails({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                ),
              ),
              Text(
                project.title!,
                maxLines: 2,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: Responsive.isMobileLarge(context)
                    ? screen.width * 0.8
                    : screen.width * 0.5,
                child: Text(
                  project.description!,
                  style: TextStyle(height: 1.5),
                ),
              ),
              if (project.screenshot != null) ...[
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Screenshots:',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: project.totalScreenshots,
                    itemBuilder: (_, index) {
                      final image = 'assets/screenshots/${project.screenshot}/${index + 1}.png';
                      return InkWell(
                        onTap: () => zoomImage(context, image),
                        child: Image.asset(
                          image,
                          width: 150,
                          height: 250,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  zoomImage(context, image) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: Container(
            width: 300, // Set the width as needed
            child: InteractiveViewer(
              minScale: 0.1,
              maxScale: 3.0,
              child: Image.asset(image),
            ),
          ),
        );
      },
    );
  }
}
