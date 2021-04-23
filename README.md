# godot-ios-impact-plugin

Provides access to the `UIImpactFeedbackGenerator` api for haptic impacts that are more precise than regular vibration.

Usage in gdscript:

```
if Engine.has_singleton("IosImpact"):
    var singleton = Engine.get_singleton("IosImpact");
    singleton.impact();
```

## Todo

- [ ] support the different impact weights