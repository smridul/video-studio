# Video Studio — Scaffold Design

**Date:** 2026-06-20
**Status:** Approved

## Goal

Stand up a placeholder "Video Studio" iOS app and get the full build →
TestFlight pipeline working. Actual features are intentionally deferred.

## Scope

- **In:** A buildable, installable single-screen iPhone app wired for the same
  Xcode Cloud + TestFlight pipeline as `interview-ready` / `voice-logger`.
- **Out (deferred):** Real features, tabs, networking, Watch app, secrets.

## Design

| Piece | Detail |
|---|---|
| Project | `project.yml` (XcodeGen), single iOS app target `VideoStudio` |
| Bundle ID | `com.mridulshrivastava.video-studio` |
| Platform | iOS 17+, iPhone only |
| UI | One SwiftUI screen — `video.fill` icon, "Video Studio" title, "Coming soon" |
| Signing | `DEVELOPMENT_TEAM: SPB6M3V9N2` (paid team) |
| App icon | Placeholder 1024×1024 ("VS" on a gradient), flat RGB, no alpha |
| Pipeline-ready | `ITSAppUsesNonExemptEncryption=false`; shared `VideoStudio` scheme; no secrets |
| Repo | `.gitignore`, `CLAUDE.md`, `HANDOFF.md`, committed `.xcodeproj` |

## Verification

- `xcodegen generate` succeeds.
- `xcodebuild build` for the iOS Simulator succeeds (headless; no GUI/device).
