//
//  Originator.m
//  Memento
//
//  Created by Vasilii on 18.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Originator.h"

@implementation Originator

-(id) init
{
    self = [super init];
    _localState = [[OriginatorState alloc] init]; _localState.intValue = 100; _localState.stringValue = @"Hello World!";
    return self;
}

-(void) changeValues
{
    _localState.intValue++;
    _localState.stringValue = [NSString stringWithFormat:@"%@ %@",
                               _localState.stringValue, @"!"];
    NSLog(@"Current state int = %i, string = %@", _localState.intValue, _localState.stringValue);
}

-(OriginatorState *) getState
{
    return _localState;
}

-(void) setState:(OriginatorState *)oldState
{
    _localState = oldState;
    NSLog(@"Load completed. Current state: int = %i, string = %@", _localState.intValue, _localState.stringValue);
}

@end

/*
 мы можем изменять состояние объекта состояния, а так же получить состояние и загрузить состояние.
 */
