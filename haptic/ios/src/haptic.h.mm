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
             [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleHeavy],
			 [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleSoft],
			 [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleRigid]
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
	[impactGenerator[(int) feedback_style] impactOccured];
};

void Haptic::_bind_methods() {
    ClassDB::bind_method(D_METHOD("impact"), &Haptic::impact);
	ClassDB::bind_method(D_METHOD("selection"), &Haptic::selection);
}