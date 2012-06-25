//
//  ESHitMetrics.h
//  Example
//
//  Created by Pulkit Singhal on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ESHit.h"

@interface ESHitMetrics : NSObject

@property (nonatomic, strong) NSNumber*         total;
@property (nonatomic, strong) NSDecimalNumber*  maxScore;
@property (nonatomic, strong) NSArray*          hits;

+ (RKObjectMapping *) getObjectMapping;

@end
