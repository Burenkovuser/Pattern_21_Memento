//
//  Memento.m
//  Memento
//
//  Created by Vasilii on 18.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Memento.h"

@implementation Memento

-(id) initWithState:(OriginatorState *)state
{
    self = [super init];
    _localState = [[OriginatorState alloc] init]; [_localState setIntValue:state.intValue]; [_localState setStringValue:state.stringValue];
    return self;
}

-(OriginatorState *) getState
{
    return _localState;
}

@end

//Memento – умеет хранить состояние, и конечно же отдавать состояние
