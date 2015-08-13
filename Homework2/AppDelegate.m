//
//  AppDelegate.m
//  Homework2
//
//  Created by Anastasya on 12.08.15.
//  Copyright (c) 2015 LLC "PeaceData" Anastasiya. All rights reserved.
//

#import "AppDelegate.h"
//импортирование внешне созданных классов. AnswersClass является дочерним от ExamClass, поэтому выводим только его
#import "AnswersClass.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
 
//присвоение внешне созданному дочернему классу переменной и выделение под него памяти для последующией инициализации методов из родительского и дочернего класса
    
    AnswersClass * exam = [[AnswersClass alloc] init];
    
    [exam startExam];
    
    [exam questionName];
    
    [AnswersClass question1];
    
    [exam answer1];
    
    [exam question3];
    
    NSLog(@"%@", [exam wrongAnswer]);
    
//вызов метода с несколькими аргументами. Недовольный учитель завершает экзамен-----------------------------------------
    [exam finishExamTeacherSaid:@"Thank you for comming!" andSaid:@"It was pleasure to see you. please collect your result after" resultWillBeAfter:2 lastWord:@"weeks"];
    
//метод объекта AppDelegate и в этой строке вызывает сам себя-----------------------------------------------------------
    [self lastMessage];
    
    return YES;
}

//метод объекта AppDelegate для последнего сообщения в консоли----------------------------------------------------------
- (void) lastMessage {
    NSLog(@"That's all!");
}





- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
