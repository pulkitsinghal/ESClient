//
//  ESQuery.m
//  ShoppinPal
//
//  Created by Pulkit Singhal on 4/7/12.
//  Copyright (c) 2012 Fermyon Inc. All rights reserved.
//

#import "ESQuery.h"

@implementation ESQuery

@synthesize query_string, boolQuery, rangeQuery;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* objectMapping = [RKObjectMapping mappingForClass:[ESQuery class]];

    [objectMapping mapKeyPath:@"query_string"
               toRelationship:@"query_string"
                  withMapping:[ESQueryString getObjectMapping]];

    [objectMapping mapKeyPath:@"bool"
               toRelationship:@"boolQuery"
                  withMapping:[ESBoolQuery getObjectMapping]];

    [objectMapping mapKeyPath:@"range"
               toRelationship:@"rangeQuery"
                  withMapping:[ESRangeQuery getObjectMapping]];

    return objectMapping;
}

@end
