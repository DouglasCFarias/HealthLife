import SwiftUI
import MapKit
import CoreLocation

struct StepCounterView: View {
    @State var timernow = Date.now
    @State var region = MKCoordinateRegion(center: .init(latitude: -3.720747, longitude: -38.512636), span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locationManager = CLLocationManager()

    var body: some View {
        Map (
            coordinateRegion: $region,
            showsUserLocation: true,
            userTrackingMode: .constant(.follow)
        )
        .onAppear {
            locationManager.requestWhenInUseAuthorization()
        }
        .frame(width: 394, height: 319)
        .padding(.bottom, 310)
        // Spacer()
        VStack{
            Text("Tempo")
                .bold()
            Stopwatch()
            
        }
        .padding(.top, -280)
        //.font(.system(size: 15))
        
        
        
        .navigationTitle("Step Counter")
        .navigationBarTitleDisplayMode(.inline)
        //        .toolbar {
        //            ToolbarItem(placement: .navigationBarLeading) {
        //                HomeView()
        //            }
        //     }
    }
}

#Preview {
    StepCounterView()
}
