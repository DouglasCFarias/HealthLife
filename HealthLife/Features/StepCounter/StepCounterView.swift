import SwiftUI
import MapKit
struct StepCounterView: View {
    var body: some View {
        NavigationStack {
            Map {
                
            }
            .frame(width: 394, height: 419)
            .padding(.bottom, 250)
        }
        .navigationTitle("Step Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    StepCounterView()
}
