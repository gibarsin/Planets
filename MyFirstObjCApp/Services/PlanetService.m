//
//  PlanetService.m
//  MyFirstObjCApp
//
//  Created by Gonzalo Exequiel Ibars Ingman on 04/04/2019.
//  Copyright © 2019 Gonzalo Exequiel Ibars Ingman. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "PlanetService.h"
#import "Planet.h"

@interface PlanetService ()

@property (strong, nonatomic) NSArray *planets;

@end

@implementation PlanetService

-(PlanetService *)init {
    if (self = [super init]) {
        Planet *mercury = [Planet new];
        [mercury setName:@"Mercury"];
        [mercury setSummary:@"Mercury description"];
        
        Planet *venus = [Planet new];
        [venus setName:@"Venus"];
        [venus setSummary:@"Venus description"];
        
        Planet *earth = [Planet new];
        [earth setName:@"Earth"];
        [earth setSummary:@"Earth description"];
        
        Planet *mars = [Planet new];
        [mars setName:@"Mars"];
        [mars setSummary:@"Mars description"];
        
        Planet *jupiter = [Planet new];
        [jupiter setName:@"Jupiter"];
        [jupiter setSummary:@"Jupiter description"];
        
        Planet *saturn = [Planet new];
        [saturn setName:@"Saturn"];
        [saturn setSummary:@"Saturn description"];
        
        Planet *uranus = [Planet new];
        [uranus setName:@"Uranus"];
        [uranus setSummary:@"Uranus description"];
        
        Planet *neptune = [Planet new];
        [neptune setName:@"Neptune"];
        [neptune setSummary:@"Neptune description"];
        
        Planet *pluto = [Planet new];
        [pluto setName:@"Pluto"];
        [pluto setSummary:@"Pluto description"];

        [self setPlanets:@[mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]];
    }
    return self;
}

-(Planet*) planetForOrdinal:(NSInteger) ordinal {
    return [self planets][ordinal];
}

-(NSInteger) numberOfPlanets {
    return [[self planets] count];
}

@end
