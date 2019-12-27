#include <core/class_db.h>
#include <core/engine.h>
#include "register_types.h"
#include "ios/src/haptic.h"

void register_haptic_types() {
	ClassDB::register_class<Haptic>();
}

void unregister_haptic_types() {
}