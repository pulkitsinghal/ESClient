//
//  ESWrapper.m
//  ElasticSearchClient
//
//  Created by Pulkit Singhal on 4/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ESWrapper.h"

@implementation ESWrapper

@synthesize query_string, range;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* objectMapping = [RKObjectMapping mappingForClass:[ESWrapper class]];

    [objectMapping mapKeyPath:@"query_string"
               toRelationship:@"query_string"
                  withMapping:[ESQueryString getObjectMapping]];

    [objectMapping mapKeyPath:@"range"
               toRelationship:@"range"
                  withMapping:[ESRangeQuery getObjectMapping]];

    return objectMapping;
}

@end
