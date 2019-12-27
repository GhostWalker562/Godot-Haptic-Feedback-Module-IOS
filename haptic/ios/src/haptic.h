#ifndef HAPTIC_H
#define HAPTIC_H

#include "reference.h"

class Haptic : public Reference {
    GDCLASS(Haptic, Reference);

    protected:
        static void _bind_methods();

		Haptic* instance;

    public:
        void selection();
		void impact(int feedback_style);

		Haptic();
        ~Haptic();
};

#endif