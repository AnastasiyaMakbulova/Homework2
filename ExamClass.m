//
//  ExamClass.m
//  Homework2
//
//  Created by Anastasya on 12.08.15.
//  Copyright (c) 2015 LLC "PeaceData" Anastasiya. All rights reserved.
//

#import "ExamClass.h"

@implementation ExamClass

// метод начала экзамена для вывода в консоли приветствия и даты----------------------------------------------
- (void) startExam {
    NSLog(@"Welcome to our exam, today is %@", [NSDate date]);
}

//первый вопрос преподавателя с вызовом метода с ответом-------------------------------------------------------
- (void) questionName {
    NSLog(@"What is your name?");
    [self myNameIs];
}

//метод ответа студента. Является приватным и не выводится в интерфейс класса со списком доступных методов
- (void) myNameIs {
    NSLog(@"Anastasia");
}

//метод класса со вторым вопросом-------------------------------------------------------------------------------
+ (void) question1 {
    NSLog(@"When was war 1?");
}

//ответ студента на второй вопрос--------------------------------------------------------------------------------
- (void) answer1 {
    NSLog(@"In 1656");
}

//метод вопроса учителя------------------------------------------------------------------------------------------
- (void) question3 {
    NSLog(@"How many kings was on this territory?");
}

//метод возврата параметра I will not answer в переменную wrongAnswer---------------------------------------------
- (NSString*) wrongAnswer {
    return @"I will not answer!";
}

//метод с несколькими аргументами и числовым значением для завершения экзамена------------------------------------
- (void) finishExamTeacherSaid: (NSString*) string andSaid: (NSString*) string2 resultWillBeAfter: (int) number lastWord: (NSString*) string3 {
    NSLog(@"%@ %@ %i %@", string, string2, number, string3);
}

@end
