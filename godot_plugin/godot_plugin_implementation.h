#ifndef godot_plugin_implementation_h
#define godot_plugin_implementation_h

#include "core/object.h"

class IosImpact : public Object {
    GDCLASS(IosImpact, Object);
    
    static void _bind_methods();
    
public:
    
    Error impact();
    
    IosImpact();
    ~IosImpact();
};

#endif /* godot_plugin_implementation_h */
