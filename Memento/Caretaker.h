//
//  Caretaker.h
//  Memento
//
//  Created by Vasilii on 18.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Originator.h"
#import "Memento.h"

@interface Caretaker : NSObject
{
@private Originator *_originator;
@private Memento *_memento;
}

-(void) changeValue;
-(void) saveState;
-(void) loadState;

@end
