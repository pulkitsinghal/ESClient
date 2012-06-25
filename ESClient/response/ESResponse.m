//
//  ESResponse.m
//  Example
//
//  Created by Pulkit Singhal on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ESResponse.h"

@implementation ESResponse

@synthesize took, timedOut, shards, hitMetrics;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* objectMapping = [RKObjectMapping mappingForClass:[ESResponse class]];
    
    [objectMapping mapKeyPath:@"took"      toAttribute:@"took"];
    [objectMapping mapKeyPath:@"timed_out" toAttribute:@"timedOut"];

    [objectMapping mapKeyPath:@"_shards"
               toRelationship:@"shards"
                  withMapping:[ESShards getObjectMapping]];
    [objectMapping mapKeyPath:@"hits"
               toRelationship:@"hitMetrics"
                  withMapping:[ESHitMetrics getObjectMapping]];
    
    return objectMapping;
}

- (NSString *) description
{
    return [NSString stringWithFormat:
            @"{\r  took : %@\r  timed_out: %@\r  _shards: %@\r  hits: %@\r}",
            self.took,
            self.timedOut,
            self.shards,
            self.hitMetrics];
}

@end
