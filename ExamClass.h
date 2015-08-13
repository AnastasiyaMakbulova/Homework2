//
//  ExamClass.h
//  Homework2
//
//  Created by Anastasya on 12.08.15.
//  Copyright (c) 2015 LLC "PeaceData" Anastasiya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExamClass : NSObject

//список доступа к методам для последующего вывода в консоль----------------------------------------------------

//невозвращаемый метод класса ExamClass-------------------------------------------------------------------------
+ (void) question1;

//невозвращаемые методы объектов класса ExamClass---------------------------------------------------------------
- (void) startExam;
- (void) questionName;
- (void) answer1;
- (void) question3;
- (NSString*) wrongAnswer;
- (void) finishExamTeacherSaid: (NSString*) string andSaid: (NSString*) string2 resultWillBeAfter: (int) number lastWord: (NSString*) string3;

@end
