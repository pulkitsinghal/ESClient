//
//  ESHitMetrics.m
//  Example
//
//  Created by Pulkit Singhal on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ESHitMetrics.h"

@implementation ESHitMetrics

@synthesize total, maxScore, hits;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* objectMapping = [RKObjectMapping mappingForClass:[ESHitMetrics class]];
    
    [objectMapping mapKeyPath:@"total" toAttribute:@"total"];
    [objectMapping mapKeyPath:@"max_score" toAttribute:@"maxScore"];
    /*[objectMapping mapKeyPath:@"hits" toAttribute:@"hits"];
    [
     [RKObjectManager sharedManager].mappingProvider
     setMapping:[ESHit getObjectMapping]
     forKeyPath:@"hits.hits"
    ];
    */
    [objectMapping mapKeyPath:@"hits"
               toRelationship:@"hits"
                  withMapping:[ESHit getObjectMapping]];

    return objectMapping;
}

- (NSString *) description
{
    return [NSString stringWithFormat:
            @"\r    {\r      total : %@\r      max_score: %@\r      hits: %@\r    }",
            self.total,
            self.maxScore,
            self.hits];
}

@end
