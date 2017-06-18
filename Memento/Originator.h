//
//  Originator.h
//  Memento
//
//  Created by Vasilii on 18.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OriginatorState.h"

@interface Originator : NSObject
{
    @private OriginatorState *_localState;
}

-(void) changeValues;
-(OriginatorState *) getState;
-(void) setState:(OriginatorState *)oldState;

@end
