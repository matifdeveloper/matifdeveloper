import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/project_detail_screen.dart';
import 'package:flutter_profile/services/link_service.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProjectDetails(
                        project: project,
                      ),
                    ),
                  );
                },
                child: Text(
                  "Read More >>",
                  style: TextStyle(color: primaryColor),
                ),
              ),
              Spacer(),
              if (project.appstore != null) ...[
                socialButton(
                  'assets/icons/appstore.png',
                  url: project.appstore,
                ),
                SizedBox(
                  width: defaultPadding,
                ),
              ],
              if (project.playstore != null) ...[
                socialButton(
                  'assets/icons/playstore.png',
                  url: project.playstore,
                ),
                SizedBox(
                  width: defaultPadding,
                ),
              ],
              if (project.web != null) ...[
                socialButton(
                  'assets/icons/web.png',
                  url: project.web,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget socialButton(String icon, {String? url}) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () {
        LinkService.openLink(url ?? '');
      },
      child: Image.asset(
        icon,
        width: 24,
        height: 24,
      ),
    );
  }
}
