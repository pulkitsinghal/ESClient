//
//  ESBoolQuery.m
//  ElasticSearchClient
//
//  Created by Pulkit Singhal on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ESBoolQuery.h"
#import "ESWrapper.h"

@implementation ESBoolQuery

@synthesize must, must_not, should, minimum_number_should_match, boost;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* objectMapping = [RKObjectMapping mappingForClass:[ESBoolQuery class]];
    //objectMapping.forceCollectionMapping = YES;

    [objectMapping mapAttributes:
     @"minimum_number_should_match",
     @"boost",
     nil];

    [objectMapping mapKeyPath:@"must"
               toRelationship:@"must"
                  withMapping:[ESWrapper getObjectMapping]];

    [objectMapping mapKeyPath:@"must_not"
               toRelationship:@"must_not"
                  withMapping:[ESWrapper getObjectMapping]];

    [objectMapping mapKeyPath:@"should"
               toRelationship:@"should"
                  withMapping:[ESWrapper getObjectMapping]];

    return objectMapping;
}

@end
