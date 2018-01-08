# DebugLog-Swift4
DebugLog is a simple class that helps logging in debug mode in Swift 4.
It is meant to "use and discard", so basically use the initializers to print. The result is not useful, so simply discard it (i.e. do not assign it to a constant or variable).

## Usage
1. Download and drag `DebugLog.swift` to your Swift 4 project.
2. Use `Log(string:, forceInProduction:)` to print logs (or any of its convenience initializers).

## Parameters

There are only two.

- `string`: The text you want to print to the debug console.
- `forceInProduction`: Specified wheter it should print in production mode also. In other words, make it work just like `print()`.

## Examples

a) These will print **HELLO WORLD** to the console when in debug mode and are all equivalent.

```
    Log("HELLO WORLD")
    Log("HELLO WORLD", false)
    Log("HELLO WORLD", forceInProduction: false)
    Log(string: "HELLO WORLD")
    Log(string: "HELLO WORLD", false)
    Log(string: "HELLO WORLD", forceInProduction: false)
```

b) This will print **HELLO WORLD** to the console in in debug and in production mode (i.e. "always").

```
    Log("HELLO WORLD", true)
    Log("HELLO WORLD", forceInProduction: true)
    Log(string: "HELLO WORLD", true)
    Log(string: "HELLO WORLD", forceInProduction: true)
```
