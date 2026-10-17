import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "pause.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .foregroundColor(.secondary)

            Text("DICOM Preview Disabled")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("All DICOM preview functionality is currently disabled.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 400)
        }
        .padding()
        .frame(minWidth: 500, minHeight: 300)
    }
}

#Preview {
    ContentView()
}
