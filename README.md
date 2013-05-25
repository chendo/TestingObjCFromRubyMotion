# Test Obj-C classes from RubyMotion

This project demonstrates how to test Objective-C classes with RubyMotion.

Right now, there's an issue where RubyMotion can't call Obj-C methods with keyed arguments but hopefully there'll be a fix. See [Problems](#problems)

## Requirements

* My fork of RubyMotion: [https://github.com/chendo/RubyMotion](https://github.com/chendo/RubyMotion) (pull requests pending: [#94](https://github.com/HipByte/RubyMotion/pull/94), [#95](https://github.com/HipByte/RubyMotion/pull/95))

## What I've done

* Created a static library target with the `.m` files you want to test.
* Change the prefix header for the static library to use the same one as the app target
* Added a `Rakefile` to get RubyMotion to link the static library.

## Problems

When calling keyed arguments from RubyMotion, I get this error:

```
Objective-C stub for message `methodWithKeyedArguments:withSecondArgument:' type `@@:@@' not precompiled. Make sure you properly link with the framework or library that defines this message.
```

I'm fairly sure this is a bug with RubyMotion since the other method invocations work. Any help would be appreciated.



Comments/feedback welcome!
