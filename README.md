### Requirements
1. Node.js version 12.0+ [Download](https://nodejs.org/en/download/)
2. Flutter - 3.7.9-stable (may works with 3.x.x)
3. npm - via [Node.js installer](https://nodejs.org/en/download/) or [nvm](https://github.com/nvm-sh/nvm#install--update-script)
4. Android Studio
5. Xcode and CocoaPods (Not required if you dont have Mac)

### Setup the project
1. Locate the current directory in terminal
2. Execute `npm install -g mountebank`
3. Execute `mb --configfile imposters.ejs`
4. Run the project and make sure the app can start correctly(don't worry about if the features are not working properly)

### App Introduction

The code is for iOS & Android app which looks like Wechat Moments page. 

We have some requirements during building this app, and you should also try to follow these requirements:

#### Project overview

The below screenshots are from Wechat App, they are for reference/inspiration these do not represent the actual output from the given codebase.

<img src="https://user-images.githubusercontent.com/61306682/131655545-cfa011b4-637f-45db-bb26-3bb9c986b94b.png" alt="wechat_moments_2" height=350 /> <img src="https://user-images.githubusercontent.com/61306682/131655537-43e4ab0b-29f0-456d-bf2a-0fcf3de0ba2c.jpg" alt="wechat_moments_3" height=350 /> <img src="https://user-images.githubusercontent.com/61306682/131655555-608f9b7e-5cb7-4059-abbc-f70dfd00fe06.jpg" alt="wechat_moments_1" height=350 />

- The project is for iOS & Android app which looks like Wechat Moments page. 
- The page consists of profile image, avatar and tweets list
- For each tweet, there will be a sender, optional content, optional images and comments
- A tweet contains from 0 to 9 images
- Supports layout on all kinds of iOS & Android device screen and orientation.
- This is a static page.

#### Tech requirements:

- The data JSON will be hosted at localhost:2727
- Unit tests and widget tests are appreciated.
- Utilise multi-thread operations
- Do not copy other developer's source code(`*.dart`) into your project
- Keep your code clean as much as possible, Production and Technical requirements are weighing equally in the final result.

##### Expectations

- Understanding of Bloc/Cubit state management or Riverpod
- Basic knowledge of widget and Unit testing
- Structure of widgets and code 
- Architecture setup with Flutter, MVVM or Clean Architecture
- Dart fundamentals
