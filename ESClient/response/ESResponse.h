//
//  ESResponse.h
//  Example
//
//  Created by Pulkit Singhal on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ESShards.h"
#import "ESHitMetrics.h"

@interface ESResponse : NSObject

@property (nonatomic, strong) NSNumber*     took;
@property (nonatomic, strong) NSNumber*     timedOut;
@property (nonatomic, strong) ESShards*     shards;
@property (nonatomic, strong) ESHitMetrics* hitMetrics;

+ (RKObjectMapping *) getObjectMapping;

@end
