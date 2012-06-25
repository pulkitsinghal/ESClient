//
//  ESBoolQuery.h
//  ElasticSearchClient
//
//  Created by Pulkit Singhal on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <RestKit/RestKit.h>

@interface ESBoolQuery : NSObject

@property (nonatomic, strong) NSArray*  must;
@property (nonatomic, strong) NSArray*  must_not;
@property (nonatomic, strong) NSArray*  should;
@property (nonatomic, strong) NSNumber* minimum_number_should_match;
@property (nonatomic, strong) NSNumber* boost;

+ (RKObjectMapping*) getObjectMapping;

@end
