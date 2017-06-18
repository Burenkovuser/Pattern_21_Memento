//
//  Caretaker.m
//  Memento
//
//  Created by Vasilii on 18.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Caretaker.h"

@implementation Caretaker

-(void) changeValue
{
    if (!_originator)
        _originator = [[Originator alloc] init];
    [_originator changeValues];
}
-(void) saveState
{
    _memento = [[Memento alloc] initWithState:[_originator getState]];
    NSLog(@"Saved state. State int = %i and string = %@",[[_memento getState] intValue ], [[_memento getState] stringValue ]);
}

-(void) loadState
{
    [_originator setState:[_memento getState]];
}

@end

/*  Caretaker умеет держать в себе сохраненное состояние(для примера, оно все очень просто, но здесь может быть и стек состояний, и так далее), а так же загружать его:)
*/
