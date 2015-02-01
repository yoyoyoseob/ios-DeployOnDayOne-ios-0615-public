---
tags: firstDay
language: objc
---

# Deploy on Day One

Welcome to Flatiron! As you've just heard, we want to make sure you know that [imposter syndrome](http://en.wikipedia.org/wiki/Impostor_syndrome) is just a phase. And today we're going to get over our initial [imposter syndrome](http://en.wikipedia.org/wiki/Impostor_syndrome) and jump right in.

## Instructions

Your mission, the one you've already chosen to accept by being here today, is as follows:

Develop an application that runs in our nifty debugger window. No fancy iPhone / iPad interfaces today! We're back in the 80's with a simple text-based application. This application is meant to help you get to know your fellow students better. And here's what it has to be able to do:

1) `login` a student by name as the `currentUser` (or sign them up if they don't already exist in our list (`NSArray`) of students who have registered to use the app.) In other words, ask for their name so you know who is currently using the app. You'll use their name to associate answers to interview questions with a specific person. (Make sure you have a `logout` method as well!) Hint on how to do this: Consider just storing the `currentUser` as a property.

2) Provide a `menu` of options (via `NSLog`) to your user that lets them choose what they want the app to do. From the `menu` the user can be interviewed with general questions or questions specific to a `category` (e.g. sports, programming, travel, art, etc.), add to the `NSArray` of questions, and read interviews of other students. As in traditional text-based applications, you'll probably want them to just specify the number of the option in which they are interested (think automated phone system).

3) When reading interviews of other students, the user should be able to choose which student's `interview` they want to read, and which `question` they would like to see the `answer` to from the chosen `user` (student).

4) When adding questions to the existing `NSMutableArray` of questions, the user should be asked to specify the `category` in which the `question` fits, and they should see the existing list of questions in that `category` so they might avoid duplicating questions.

5) Make sure to add the ability to add new categories in case a `question` they want to ask doesn't fit into the existing ones!

6) When answering a `question`, make sure the `currentUser` does not get asked a `question` they already answered.

7) If you finish early, think of other ways to make your user experience better!


Some important hints:

* You'll want to write all of your code in the `MyApp.m` file.
* Make sure to take advantage of the method we have written for you in order to get access to the keyboard inputs in the debugger window. These are `requestKeyboardInput`. Don't worry about how they work. Just know you get back the input from the user which you can store in a variable.
* Use NSLog to "talk" to your user in the debugger.
* For formatting, you can use `\r` in your strings to add line breaks and not have to write multiple `NSLog` statements if you don't want to. But multiple `NSLog` statements will work too!