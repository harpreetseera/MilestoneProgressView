# milestone_progress 
[![](https://github.com/harpreetseera/MilestoneProgressView/workflows/Test%20and%20Build%20Apk/badge.svg)](https://github.com/harpreetseera/MilestoneProgressView/actions)
[![CodeCov](https://codecov.io/gh/harpreetseera/MilestoneProgressView/branch/master/graph/badge.svg)](https://codecov.io/gh/harpreetseera/MilestoneProgressView)

Flutter package for IOS and Android to display progress through milestone progress widget.


### Screenshots
<img src="https://raw.githubusercontent.com/harpreetseera/MilestoneProgressView/master/demo.gif" height="35%" width="35%"  alt="Demo gif"/>
<img src="https://raw.githubusercontent.com/harpreetseera/MilestoneProgressView/master/ss1.jpg" height="35%" width="35%"  alt="Demo screenshot"/>
<img src="https://raw.githubusercontent.com/harpreetseera/MilestoneProgressView/master/ss2.jpg" height="35%" width="35%"  alt="Demo screenshot2"/>
## Usage

[Example]https://github.com/harpreetseera/MilestoneProgressView/blob/master/example/example_app.dart)

To use this package :

* add the dependency to your [pubspec.yaml](https://github.com/harpreetseera/MilestoneProgressView/blob/master/pubspec.yaml) file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    milestone_progress:
```
## How to use

```dart
/* use this widget to create the milestone progress view
Note:The widget doesnot maintain its state itself.So to see the update , the state needs to be updated whenever a change is made .
*/
MilestoneProgress(
                completedMilestone: 3,
                maxIconSize: 30,
                totalMilestones: 6,
                width: 250,
                completedIconData: Icons.favorite, //optional 
                completedIconColor: Colors.red, //optional 
                nonCompletedIconData: Icons.favorite, //optional 
                incompleteIconColor: Colors.grey, //optional 
              )
```
# Pull Requests

I welcome and encourage all pull requests. It usually will take me within 24-48 hours to respond to any issue or request. Here are some basic rules to follow to ensure timely addition of your request:

1.  Match coding style (braces, spacing, etc.) This is best achieved using `Reformat Code` feature of Android Studio `CMD`+`Option`+`L` on Mac and `CTRL` + `ALT` + `L` on Linux + Windows .
2.  If its a feature, bugfix, or anything please only change code to what you specify.
3.  Please keep PR titles easy to read and descriptive of changes, this will make them easier to merge :)
4.  Pull requests _must_ be made against `develop` branch. Any other branch (unless specified by the maintainers) will get rejected.
5.  Check for existing [issues](https://github.com/harpreetseera/MilestoneProgressView/issues) first, before filing an issue.
6.  Make sure you follow the set standard as all other projects in this repo do
7.  Have fun!

### Created & Maintained By

[Harpreet Singh](https://github.com/harpreetseera) 

# License

    Copyright 2019 Harpreet Singh

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.



## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
