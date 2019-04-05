//
//  PlanetService.h
//  MyFirstObjCApp
//
//  Created by Gonzalo Exequiel Ibars Ingman on 04/04/2019.
//  Copyright © 2019 Gonzalo Exequiel Ibars Ingman. All rights reserved.
//

#ifndef PlanetService_h
#define PlanetService_h



#import "../Models/Planet.h"

@interface PlanetService : NSObject

-(Planet*) planetForOrdinal:(NSInteger) ordinal;

-(NSInteger) numberOfPlanets;

@end

#endif /* PlanetService_h */
