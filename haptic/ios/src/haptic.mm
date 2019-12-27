#include "haptic.h"

#import "app_delegate.h"
#import <UIKit/UIKit.h>

UISelectionFeedbackGenerator* selectionGenerator = NULL;
NSArray<UIImpactFeedbackGenerator*>* impactGenerator = NULL;

Haptic::Haptic() {
    ERR_FAIL_COND(instance != NULL);
    instance = this;
	selectionGenerator = [UISelectionFeedbackGenerator new];
	impactGenerator = 
			@[
             [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleLight],
             [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleMedium],
             [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleHeavy]
			];
}

Haptic::~Haptic() {
    instance = NULL;
	selectionGenerator = NULL;
	impactGenerator = NULL;
}

void Haptic::selection() {
    [selectionGenerator selectionChanged];
}

void Haptic::impact(int feedback_style) {
	UIImpactFeedbackGenerator *hap = [[UIImpactFeedbackGenerator alloc] init];

    [hap prepare];

    if(feedback_style == 0) [hap initWithStyle:UIImpactFeedbackStyleLight];

    else if(feedback_style == 1) [hap initWithStyle:UIImpactFeedbackStyleMedium];

    else if(feedback_style == 2) [hap initWithStyle:UIImpactFeedbackStyleHeavy];

	else [hap initWithStyle:UIImpactFeedbackStyleLight];

    [hap impactOccurred];
}

void Haptic::_bind_methods() {
    ClassDB::bind_method(D_METHOD("impact"), &Haptic::impact);
	ClassDB::bind_method(D_METHOD("selection"), &Haptic::selection);
}