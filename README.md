# MacShellScriptApp

A template for a Mac app that delegates to a shell script and supports opening URLs and files.

I wanted to create a custom Mac app that could open URLs and files just like other Mac apps, but I wanted to implement
it as a simple shell script.  This proved more complicated than I'd hoped, so I implemented the idea in a generic way
so I would never have to do it again.  The result is this repository.

# Quick-start

Implement your app's behavior in `main.sh`.  This script will be invoked, thanks to `main.applescript`, whenever the app is launched.

Your app's icon is derived from `icon.png`.

Run `./scripts/compile`.  It will bundle your app into `bundle.app`.

If you want to customize your app's name or other properties, you'll have to look in `bundle.app/Contents/Info.plist`.
