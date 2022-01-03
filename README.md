# godot-ios-impact-plugin

Provides access to the `UIImpactFeedbackGenerator` api for haptic impacts that are more precise than regular vibration.

Usage in gdscript:

```gd
if Engine.has_singleton("IosImpact"):
    var singleton = Engine.get_singleton("IosImpact");
    singleton.impact();
```

## Build

its based on https://github.com/godotengine/godot-ios-plugins which contains instructions on how to build

## Todo

- [ ] support the different impact weights
