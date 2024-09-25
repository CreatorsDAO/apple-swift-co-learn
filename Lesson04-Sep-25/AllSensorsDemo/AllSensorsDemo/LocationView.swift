import SwiftUI
import CoreLocation
import MapKit

struct LocationView: View {
    @StateObject private var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            Text("GPS 定位")
                .font(.largeTitle)
                .padding()
            
            Map(coordinateRegion: $locationManager.region, showsUserLocation: true)
                .frame(height: 300)
            
            if let location = locationManager.location {
                Text("经度: \(location.coordinate.longitude)")
                Text("纬度: \(location.coordinate.latitude)")
            } else {
                Text("定位中...")
            }
        }
        .padding()
    }
}

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    
    @Published var location: CLLocation?
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let newLocation = locations.last {
            location = newLocation
            region.center = newLocation.coordinate
        }
    }
}

#Preview {
    LocationView()
}
