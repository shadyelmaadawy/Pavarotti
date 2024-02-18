<p align="center">
  <img width="400" height="350" src="https://raw.githubusercontent.com/shadyelmaadawy/Pavarotti/master/Logo.png">
  <br/>
     <a>
        <img src="https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg"/> 
    </a> 
    <a>
        <img src="https://img.shields.io/badge/Swift%20Package%20Manager-Compatible-brightgreen.svg?style=flat"/> 
    </a> 
    <a>
        <img src="https://img.shields.io/badge/Platforms-IOS-red?style=flat"/> 
    </a> 
    <a>
        <img src="https://img.shields.io/badge/Version-1.0-purple?style=flat"/> 
    </a> 
    <a>
        <img src="https://img.shields.io/badge/Release-Beta-orange?style=flat"/> 
    </a> 
        <a>
        <img src="http://img.shields.io/badge/License-MIT-green.svg?style=flat"/> 
    </a> 
    <a>
        <img src="https://img.shields.io/badge/Twitter-@shadudiix-blue.svg?style=flat"/> 
    </a> 
</p>

# Pavarotti

‎‏Hola!

Hope you’re have a good day, **Project-Manager was extremely quiet, super-busy.. as usual**,
But that did not prevent us from continuing our march of excellence!


‎‏Instead of a long introduction, What is that, and how I use it?

## What is that?

A simple package that deals with localization stuff, and with easy-way to use, with only a few lines of code, but behind those lines, there is a lot of magic. ✨

## How to use it?: 

It's simple, add the package via Swift package manager.

```swift
https://github.com/shadyelmaadawy/Pavarotti.git
```

Okay, now inherit our view controller in your class, 

```swift
import Pavarotti

class ViewController: PavarottiViewController {

}
```

Okay, how do make It support multiple languages?, the traditional way, create a localizable strings file and link it to your project, 

![](https://raw.githubusercontent.com/shadyelmaadawy/Pavarotti/master/Screenshots/1.png)

And with the key you had put in the file, add it via storyboard, xib, or your programmatic UI!

![](https://raw.githubusercontent.com/shadyelmaadawy/Pavarotti/master/Screenshots/2.png)

Mission accomplished dude!

--------
If you want to change active language, you can easily via shared instance, also it supports changing the whole views without restarting the application.

```swift
import Pavarotti

    func setActiveLanguage() {
        let languageCode = "ar"
        Pavarotti.shared.setActiveLanguage(with: languageCode) 
    }
```

There is a project as an example that you can understand the package from it.

## PoC:

![](https://raw.githubusercontent.com/shadyelmaadawy/Pavarotti/master/Screenshots/PoC.gif)

## Road-Map:
- [ ] Add support to more UIKit UI controls such as UITabBarController... etc
- [ ] Add support to AppKit and OSX
- [ ] Add Support to SwiftUI
- [ ] Enhance the codebase all the way.

## To Infinity and beyond!

This package is still in beta release, and will be supported because I want to use it in a lot of projects, If you find any bug, don't hesitate to report it, with all my love.. ZzZzZzZzZzZzZ

## Credits

### Copyright (©) 2024, Shady K. Maadawy, All rights reserved. 
 [@shadudiix](https://github.com/shadyelmaadawy) 💫
