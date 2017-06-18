//
//  Memento.h
//  Memento
//
//  Created by Vasilii on 18.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OriginatorState.h"

@interface Memento : NSObject
{
    @private OriginatorState *_localState;
}
-(id) initWithState:(OriginatorState *)state;
-(OriginatorState*) getState;

@end

/*Memento – объект который будет заведовать состояние нашего объекта */
