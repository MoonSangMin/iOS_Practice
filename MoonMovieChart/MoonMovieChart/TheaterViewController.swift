import UIKit
import MapKit

class TheaterViewController: UIViewController {
    var param: NSDictionary!
    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        self.navigationItem.title = self.param["상영관명"] as? String
        let point = MKPointAnnotation()
        
        let lat = (param?["위도"] as! NSString).doubleValue
        let lon = (param?["경도"] as! NSString).doubleValue
        
        let location = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let regionRadius: CLLocationDistance = 100
        let coordinateRegion = MKCoordinateRegion.init(center: location, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        point.coordinate = location
        self.map.setRegion(coordinateRegion, animated: true)
        self.map.addAnnotation(point)
    }
}
