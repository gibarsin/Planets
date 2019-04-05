//
//  PlanetController.h
//  MyFirstObjCApp
//
//  Created by Gonzalo Exequiel Ibars Ingman on 05/04/2019.
//  Copyright © 2019 Gonzalo Exequiel Ibars Ingman. All rights reserved.
//

#ifndef PlanetController_h
#define PlanetController_h

#import <UIKit/UIKit.h>
#import "Planet.h"

@interface PlanetController : UIViewController
-(PlanetController*)initWithPlanet:(Planet*)planet;
@end

#endif /* PlanetController_h */
