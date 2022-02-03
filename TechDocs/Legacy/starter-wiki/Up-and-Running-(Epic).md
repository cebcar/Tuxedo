Get development up and running^.

DevOps: *generic support for development operations* (new project)

DevSupport: deprecated in favor of DevOps; most content will be needed by DevOps

Accessor: our last Speech Recognition app; deprecated in favor of new Dictation features recently found in Catalina (macOS 10.13; we were using macOS 10.9)

### Technology Changes
##### Project Boards
Consider using GitHub Project Boards, soon enhanced by ZenHub,
instead of YouTrack to support Kanban Boards for our projects.
- Motivation
  - YouTrack, which we have been using, stores its own issues separately from GitHub.
  - YouTrack is an additional installation to support, and is probably more powerful than we need.

##### Testing
Consider using GitLab CI instead of TeamCity to support testing for our projects.
- Motivation
  - GitLab CI, after initial setup, appears from reviews to be easier to configure.
  - TeamCity is probably more powerful than we need.
  - If we are not using YouTrack, TeamCity would not have that infrastructure to share.

^ *Especially since our recent illness and hospitalization, our projects have not been as up-to-date as needed. Also, some work done may have been ill-advised.*