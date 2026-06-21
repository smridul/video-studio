# HANDOFF.md

## Last Completed Work

- Scaffolded the **Video Studio** placeholder iOS app (SwiftUI + XcodeGen),
  iPhone only, signed with paid team `SPB6M3V9N2`.
- Single screen (`ContentView`) showing the title + "Coming soon".
- Generated a placeholder 1024 app icon ("VS" on a gradient, no alpha).
- Pipeline-ready: `ITSAppUsesNonExemptEncryption=false`, shared scheme, no secrets.
- Committed and pushed to git@github.com:smridul/video-studio.git.

## Current State

- **Builds**: iOS Simulator build verified.
- **Git**: local repo committed and pushed to GitHub.
- **Cloud**: Xcode Cloud workflow + App Store Connect app record NOT yet created.

## Next Steps

1. In Xcode → Product → Xcode Cloud → Create Workflow:
   - Archive action (iOS), scheme `VideoStudio`.
   - TestFlight Internal Testing post-action; add yourself as internal tester.
   - App Store Connect app record (store name must be globally unique; bundle ID
     `com.mridulshrivastava.video-studio` stays the same).
2. Push → cloud build → install via TestFlight on iPhone.
3. Then start defining actual features (separate brainstorming/spec).

## Open Questions

- What does Video Studio actually do? (Deferred — to be brainstormed later.)
- Will it need networking, secrets, or a Watch app later? (If so, mirror voice-logger.)
