# CLAUDE.md

## Project Overview

**Video Studio** — an iOS app (currently a placeholder scaffold). Features are
intentionally undefined for now; this exists to stand up the project and the
cloud build/distribution pipeline first. The single screen shows the app title
and "Coming soon".

## Tech Stack

- **Language**: Swift 5.9, SwiftUI
- **Platform**: iOS 17+, iPhone only
- **Project generation**: XcodeGen (`project.yml`) — run `xcodegen generate` after changes
- **Signing**: paid Apple Developer Program team `SPB6M3V9N2`
- **No external dependencies**, no secrets, no networking (yet)

## Commands

```bash
# Regenerate Xcode project after changing project.yml or adding files
cd video-studio && xcodegen generate

# Open in Xcode
open VideoStudio.xcodeproj

# Headless build verification (no GUI, no device needed)
xcodebuild build -project VideoStudio.xcodeproj -scheme VideoStudio \
  -destination 'platform=iOS Simulator,name=iPhone 17 Pro'
```

## Architecture

```
VideoStudio/
  VideoStudioApp.swift      # App entry point (@main)
  ContentView.swift          # Single placeholder screen
  Resources/
    Info.plist               # Bundle config; ITSAppUsesNonExemptEncryption=false
    Assets.xcassets/
      AppIcon.appiconset/    # Placeholder 1024 icon (no alpha)
project.yml                  # XcodeGen project definition
```

## Key Decisions

- Bundle ID `com.mridulshrivastava.video-studio` (matches the user's convention).
- iPhone only for now; a Watch target can be added later (see voice-logger for the pattern).
- `ITSAppUsesNonExemptEncryption=false` set up front so TestFlight uploads skip the
  per-build export-compliance prompt.
- Placeholder app icon ("VS" on a gradient) generated with a Swift/AppKit script —
  flat RGB, no alpha, so it passes App Store Connect binary validation.
- Xcode project (`.xcodeproj`) is committed alongside `project.yml` so Xcode Cloud
  can build without running XcodeGen.

## Cloud Build / Distribution (pipeline — same as voice-logger / interview-ready)

- Shared `VideoStudio` scheme committed → Xcode Cloud can build/archive it.
- No secrets, so **no `ci_scripts/ci_post_clone.sh` is needed**.
- One-time GUI setup pending: GitHub remote → Xcode → Product → Xcode Cloud →
  Create Workflow → Archive (iOS) + TestFlight internal-testing post-action →
  add yourself as an internal tester. Then push = cloud build = TestFlight install.

## Current State

- Placeholder app scaffolded and builds for the iOS Simulator.
- Pushed to GitHub (git@github.com:smridul/video-studio.git); Xcode Cloud workflow not yet created.

## Known Limitations / TODO

- No real features yet (deferred by design).
- App Store Connect app record + Xcode Cloud workflow not yet set up.
