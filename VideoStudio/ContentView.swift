import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "video.fill")
                .font(.system(size: 72))
                .foregroundStyle(.tint)
            Text("Video Studio")
                .font(.largeTitle.bold())
            Text("Coming soon")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
