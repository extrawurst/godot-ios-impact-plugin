#import <Foundation/Foundation.h>

#import "godot_plugin.h"
#import "godot_plugin_implementation.h"

#import "core/engine.h"

IosImpact *plugin;

void godot_plugin_ios_impact_init() {
    NSLog(@"godot_plugin_ios_impact_init");

    plugin = memnew(IosImpact);
    Engine::get_singleton()->add_singleton(Engine::Singleton("IosImpact", plugin));
}

void godot_plugin_ios_impact_deinit() {
    NSLog(@"godot_plugin_ios_impact_deinit");
    
    if (plugin) {
       memdelete(plugin);
   }
}
