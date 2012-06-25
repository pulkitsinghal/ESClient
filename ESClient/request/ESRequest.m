//
//  ESRequest.m
//  ShoppinPal
//
//  Created by Pulkit Singhal on 4/9/12.
//  Copyright (c) 2012 Fermyon Inc. All rights reserved.
//

#import "ESRequest.h"

@implementation ESRequest

@synthesize from, size, fieldsToQueryFor, query;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* objectMapping = [RKObjectMapping mappingForClass:[ESRequest class]];

    [objectMapping mapKeyPath:@"from"   toAttribute:@"from"];
    [objectMapping mapKeyPath:@"size"   toAttribute:@"size"];
    [objectMapping mapKeyPath:@"fields" toAttribute:@"fieldsToQueryFor"];

    [objectMapping mapKeyPath:@"query"
               toRelationship:@"query"
                  withMapping:[ESQuery getObjectMapping]];
    
    return objectMapping;
}

@end
