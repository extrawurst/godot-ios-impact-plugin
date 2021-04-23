#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#include "core/project_settings.h"
#include "core/class_db.h"

#import "godot_plugin_implementation.h"

UIImpactFeedbackGenerator* HeavyImpactFeedbackGenerator;

void IosImpact::_bind_methods() {
    ClassDB::bind_method(D_METHOD("impact"), &IosImpact::impact);
}

Error IosImpact::impact() {
    [HeavyImpactFeedbackGenerator prepare];
    [HeavyImpactFeedbackGenerator impactOccurred];

    return OK;
}

IosImpact::IosImpact() {
    NSLog(@"[IosImpact] initialize object");

    HeavyImpactFeedbackGenerator =  [[UIImpactFeedbackGenerator alloc] initWithStyle:
                                      UIImpactFeedbackStyleHeavy];
}

IosImpact::~IosImpact() {
    NSLog(@"[IosImpact] deinitialize object");

    HeavyImpactFeedbackGenerator = nil;
}
