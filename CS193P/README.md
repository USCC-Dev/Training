# Developing iOS 11 Apps with Swift (Stanford CS193P)

Developing iOS 11 Apps with Swift from Stanford University taught by Paul Hegarty - Fall 2017. This is just my notes not the class. The class is available on [iTunes](https://itunes.apple.com/us/course/developing-ios-11-apps-with-swift/id1309275316). Lectures 1-6 were made available November 13, 2017.

## Lessons
[Lesson 1 - Introduction to iOS 11, Xcode 9 and Swift 4](https://github.com/USCC-Dev/Training/tree/master/CS193P/Lesson%201%20-%20Introduction%20to%20iOS%2011%2C%20Xcode%209%20and%20Swift%204)  
[Lesson 2 - MVC](https://github.com/USCC-Dev/Training/tree/master/CS193P/Lesson%202%20-%20MVC)  
[Lesson 3 - Swift Programming Language](https://github.com/USCC-Dev/Training/tree/master/CS193P/Lesson%203%20-%20Swift%20Programming%20Language)  
[Lesson 4 - More Swift](https://github.com/USCC-Dev/Training/tree/master/CS193P/Lesson%204%20-%20More%20Swift)  
[Lesson 5 - Drawing](https://github.com/USCC-Dev/Training/tree/master/CS193P/Lesson%205%20-%20Drawing)  
[Lesson 6 - Multitouch](https://github.com/USCC-Dev/Training/tree/master/CS193P/Lesson%206%20-%20Multitouch)  

### Episodes
- iOS 11-?
- iOS 10-13
- iOS 9-10
- iOS 8-17
- iOS 7-18

#### How to programatically get titles from course description
```javascript
// navigate to site https://itunes.apple.com/us/course/developing-ios-11-apps-with-swift/id1309275316
var lessons = [];
$('.tracklist-content-box').find('tr.podcast-episode.video').find('td.name').each(function(k,v) { 
    lessons.push($(v).attr('sort-value')); 
});
console.log(lessons.join('\n'));
// results:
// 1. Introduction to iOS 11, Xcode 9 and Swift 4
// 2. MVC
// 3. Swift Programming Language
// 4. More Swift
// 5. Drawing
// 6. Multitouch
console.log(lessons.map(function(v) { return 'Lesson ' + v.replace(/\./,' -'); }).join('\n'));
// results:
// Lesson 1 - Introduction to iOS 11, Xcode 9 and Swift 4
// Lesson 2 - MVC
// Lesson 3 - Swift Programming Language
// Lesson 4 - More Swift
// Lesson 5 - Drawing
// Lesson 6 - Multitouch
```