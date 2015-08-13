//
//  DautherClass.m
//  Homework2
//
//  Created by Anastasya on 12.08.15.
//  Copyright (c) 2015 LLC "PeaceData" Anastasiya. All rights reserved.
//

#import "AnswersClass.h"

@implementation AnswersClass

/*
 Вызов невозвращаемых методов с ответом из родительского класса имплементации без занесения в интерфейс AnswersClass, так как он уже есть в интерфейсе родителя
*/
- (void) answer1 {
    [super answer1];
}

- (void) question3 {
    [super question3];;
}

//Вызов возвращаемого значения содержащегося в переменной wrongAnswer в родительском классе-------------------------
- (NSString*) wrongAnswer {
    return [super wrongAnswer];
}

@end
