//
//  ESRangeQuery.m
//  ElasticSearchClient
//
//  Created by Pulkit Singhal on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ESRangeQuery.h"

@implementation ESRangeQuery

@synthesize from, to, include_lower, include_upper, boost;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* esRangeQueryMapping =
    [
     [RKObjectManager sharedManager].mappingProvider
     serializationMappingForClass:[ESRangeQuery class]
    ];

    if (esRangeQueryMapping == nil) {
        esRangeQueryMapping = [RKObjectMapping mappingForClass:[ESRangeQuery class]];

        [esRangeQueryMapping mapKeyPath:@"from"           toAttribute:@"from"];
        [esRangeQueryMapping mapKeyPath:@"to"             toAttribute:@"to"];
        [esRangeQueryMapping mapKeyPath:@"include_lower"  toAttribute:@"include_lower"];
        [esRangeQueryMapping mapKeyPath:@"include_upper"  toAttribute:@"include_upper"];
        [esRangeQueryMapping mapKeyPath:@"boost"          toAttribute:@"boost"];
    }
    return esRangeQueryMapping;
}

@end
