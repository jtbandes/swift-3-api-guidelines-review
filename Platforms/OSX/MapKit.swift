
protocol MKAnnotation : ObjectProtocol {
  var coordinate: CLLocationCoordinate2D { get }
  optional var title: String? { get }
  optional var subtitle: String? { get }
}
let MKAnnotationCalloutInfoDidChangeNotification: String
enum MKAnnotationViewDragState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Starting
  case Dragging
  case Canceling
  case Ending
}
class MKAnnotationView : NSView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var annotation: MKAnnotation?
  var image: NSImage?
  var centerOffset: CGPoint
  var calloutOffset: CGPoint
  var leftCalloutOffset: CGPoint
  var rightCalloutOffset: CGPoint
  var isEnabled: Bool
  var isHighlighted: Bool
  var isSelected: Bool
  func setSelected(selected: Bool, animated: Bool)
  var canShowCallout: Bool
  var leftCalloutAccessoryView: NSView?
  var rightCalloutAccessoryView: NSView?
  var detailCalloutAccessoryView: NSView?
  var isDraggable: Bool
  var dragState: MKAnnotationViewDragState
  func setDragState(newDragState: MKAnnotationViewDragState, animated: Bool)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class MKCircle : MKShape, MKOverlay {
  convenience init(center coord: CLLocationCoordinate2D, radius: CLLocationDistance)
  convenience init(mapRect: MKMapRect)
  var coordinate: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  var boundingMapRect: MKMapRect { get }
  init()
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  func canReplaceMapContent() -> Bool
}
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle: MKCircle)
  var circle: MKCircle { get }
  init(overlay: MKOverlay)
  convenience init()
}
typealias MKDirectionsHandler = (MKDirectionsResponse?, Error?) -> Void
typealias MKETAHandler = (MKETAResponse?, Error?) -> Void
class MKDirections : Object {
  init(request: MKDirectionsRequest)
  func calculateWithCompletionHandler(completionHandler: MKDirectionsHandler)
  func calculateETAWithCompletionHandler(completionHandler: MKETAHandler)
  func cancel()
  var isCalculating: Bool { get }
  convenience init()
}
class MKDirectionsRequest : Object {
  var source: MKMapItem?
  var destination: MKMapItem?
  init()
}
extension MKDirectionsRequest {
  var transportType: MKDirectionsTransportType
  var requestsAlternateRoutes: Bool
  @NSCopying var departureDate: Date?
  @NSCopying var arrivalDate: Date?
}
extension MKDirectionsRequest {
  init(contentsOf url: URL)
  class func isDirectionsRequest(url: URL) -> Bool
}
class MKDirectionsResponse : Object {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var routes: [MKRoute] { get }
  init()
}
class MKRoute : Object {
  var name: String { get }
  var advisoryNotices: [String] { get }
  var distance: CLLocationDistance { get }
  var expectedTravelTime: TimeInterval { get }
  var transportType: MKDirectionsTransportType { get }
  var polyline: MKPolyline { get }
  var steps: [MKRouteStep] { get }
  init()
}
class MKRouteStep : Object {
  var instructions: String { get }
  var notice: String? { get }
  var polyline: MKPolyline { get }
  var distance: CLLocationDistance { get }
  var transportType: MKDirectionsTransportType { get }
  init()
}
class MKETAResponse : Object {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var expectedTravelTime: TimeInterval { get }
  var distance: CLLocationDistance { get }
  var expectedArrivalDate: Date { get }
  var expectedDepartureDate: Date { get }
  var transportType: MKDirectionsTransportType { get }
  init()
}
struct MKDirectionsTransportType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Automobile: MKDirectionsTransportType { get }
  static var Walking: MKDirectionsTransportType { get }
  static var Transit: MKDirectionsTransportType { get }
  static var Any: MKDirectionsTransportType { get }
}
class MKDistanceFormatter : Formatter {
  func stringFromDistance(distance: CLLocationDistance) -> String
  func distanceFrom(distance: String) -> CLLocationDistance
  @NSCopying var locale: Locale!
  var units: MKDistanceFormatterUnits
  var unitStyle: MKDistanceFormatterUnitStyle
  init()
  init?(coder aDecoder: Coder)
}
enum MKDistanceFormatterUnits : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Metric
  case Imperial
  case ImperialWithYards
}
enum MKDistanceFormatterUnitStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Abbreviated
  case Full
}
struct MKCoordinateSpan {
  var latitudeDelta: CLLocationDegrees
  var longitudeDelta: CLLocationDegrees
  init()
  init(latitudeDelta: CLLocationDegrees, longitudeDelta: CLLocationDegrees)
}
struct MKCoordinateRegion {
  var center: CLLocationCoordinate2D
  var span: MKCoordinateSpan
  init()
  init(center: CLLocationCoordinate2D, span: MKCoordinateSpan)
}
func MKCoordinateSpanMake(latitudeDelta: CLLocationDegrees, _ longitudeDelta: CLLocationDegrees) -> MKCoordinateSpan
func MKCoordinateRegionMake(centerCoordinate: CLLocationCoordinate2D, _ span: MKCoordinateSpan) -> MKCoordinateRegion
func MKCoordinateRegionMakeWithDistance(centerCoordinate: CLLocationCoordinate2D, _ latitudinalMeters: CLLocationDistance, _ longitudinalMeters: CLLocationDistance) -> MKCoordinateRegion
struct MKMapPoint {
  var x: Double
  var y: Double
  init()
  init(x: Double, y: Double)
}
struct MKMapSize {
  var width: Double
  var height: Double
  init()
  init(width: Double, height: Double)
}
struct MKMapRect {
  var origin: MKMapPoint
  var size: MKMapSize
  init()
  init(origin: MKMapPoint, size: MKMapSize)
}
typealias MKZoomScale = CGFloat
let MKMapSizeWorld: MKMapSize
let MKMapRectWorld: MKMapRect
func MKMapPointForCoordinate(coordinate: CLLocationCoordinate2D) -> MKMapPoint
func MKCoordinateForMapPoint(mapPoint: MKMapPoint) -> CLLocationCoordinate2D
func MKMetersPerMapPointAtLatitude(latitude: CLLocationDegrees) -> CLLocationDistance
func MKMapPointsPerMeterAtLatitude(latitude: CLLocationDegrees) -> Double
func MKMetersBetweenMapPoints(a: MKMapPoint, _ b: MKMapPoint) -> CLLocationDistance
let MKMapRectNull: MKMapRect
func MKMapPointMake(x: Double, _ y: Double) -> MKMapPoint
func MKMapSizeMake(width: Double, _ height: Double) -> MKMapSize
func MKMapRectMake(x: Double, _ y: Double, _ width: Double, _ height: Double) -> MKMapRect
func MKMapRectGetMinX(rect: MKMapRect) -> Double
func MKMapRectGetMinY(rect: MKMapRect) -> Double
func MKMapRectGetMidX(rect: MKMapRect) -> Double
func MKMapRectGetMidY(rect: MKMapRect) -> Double
func MKMapRectGetMaxX(rect: MKMapRect) -> Double
func MKMapRectGetMaxY(rect: MKMapRect) -> Double
func MKMapRectGetWidth(rect: MKMapRect) -> Double
func MKMapRectGetHeight(rect: MKMapRect) -> Double
func MKMapPointEqualToPoint(point1: MKMapPoint, _ point2: MKMapPoint) -> Bool
func MKMapSizeEqualToSize(size1: MKMapSize, _ size2: MKMapSize) -> Bool
func MKMapRectEqualToRect(rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
func MKMapRectIsNull(rect: MKMapRect) -> Bool
func MKMapRectIsEmpty(rect: MKMapRect) -> Bool
func MKStringFromMapPoint(point: MKMapPoint) -> String
func MKStringFromMapSize(size: MKMapSize) -> String
func MKStringFromMapRect(rect: MKMapRect) -> String
func MKMapRectUnion(rect1: MKMapRect, _ rect2: MKMapRect) -> MKMapRect
func MKMapRectIntersection(rect1: MKMapRect, _ rect2: MKMapRect) -> MKMapRect
func MKMapRectInset(rect: MKMapRect, _ dx: Double, _ dy: Double) -> MKMapRect
func MKMapRectOffset(rect: MKMapRect, _ dx: Double, _ dy: Double) -> MKMapRect
func MKMapRectDivide(rect: MKMapRect, _ slice: UnsafeMutablePointer<MKMapRect>, _ remainder: UnsafeMutablePointer<MKMapRect>, _ amount: Double, _ edge: CGRectEdge)
func MKMapRectContainsPoint(rect: MKMapRect, _ point: MKMapPoint) -> Bool
func MKMapRectContainsRect(rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
func MKMapRectIntersectsRect(rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
func MKCoordinateRegionForMapRect(rect: MKMapRect) -> MKCoordinateRegion
func MKMapRectSpans180thMeridian(rect: MKMapRect) -> Bool
func MKMapRectRemainder(rect: MKMapRect) -> MKMapRect
extension Value {
   init(mkCoordinate coordinate: CLLocationCoordinate2D)
   init(mkCoordinateSpan span: MKCoordinateSpan)
  var mkCoordinateValue: CLLocationCoordinate2D { get }
  var mkCoordinateSpanValue: MKCoordinateSpan { get }
}
class MKMapCamera : Object, SecureCoding, Copying {
  var centerCoordinate: CLLocationCoordinate2D
  var heading: CLLocationDirection
  var pitch: CGFloat
  var altitude: CLLocationDistance
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude: CLLocationDistance)
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch: CGFloat, heading: CLLocationDirection)
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class MKMapItem : Object {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: URL?
  @NSCopying var timeZone: TimeZone?
  class func forCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMapsWithLaunchOptions(launchOptions: [String : AnyObject]? = [:]) -> Bool
  class func openMapsWith(mapItems: [MKMapItem], launchOptions: [String : AnyObject]? = [:]) -> Bool
  init()
}
let MKLaunchOptionsDirectionsModeKey: String
let MKLaunchOptionsMapTypeKey: String
let MKLaunchOptionsShowsTrafficKey: String
let MKLaunchOptionsDirectionsModeDriving: String
let MKLaunchOptionsDirectionsModeWalking: String
let MKLaunchOptionsDirectionsModeTransit: String
let MKLaunchOptionsMapCenterKey: String
let MKLaunchOptionsMapSpanKey: String
let MKLaunchOptionsCameraKey: String
class MKMapSnapshot : Object {
  var image: NSImage { get }
  func pointFor(coordinate: CLLocationCoordinate2D) -> Point
  init()
}
class MKMapSnapshotOptions : Object, Copying {
  @NSCopying var camera: MKMapCamera
  var mapRect: MKMapRect
  var region: MKCoordinateRegion
  var mapType: MKMapType
  var showsPointsOfInterest: Bool
  var showsBuildings: Bool
  var size: Size
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias MKMapSnapshotCompletionHandler = (MKMapSnapshot?, Error?) -> Void
class MKMapSnapshotter : Object {
  init(options: MKMapSnapshotOptions)
  func startWithCompletionHandler(completionHandler: MKMapSnapshotCompletionHandler)
  func startWith(queue: dispatch_queue_t, completionHandler: MKMapSnapshotCompletionHandler)
  func cancel()
  var isLoading: Bool { get }
  convenience init()
}
class MKMapView : NSView, Coding {
  weak var delegate: @sil_weak MKMapViewDelegate?
  var mapType: MKMapType
  var region: MKCoordinateRegion
  func setRegion(region: MKCoordinateRegion, animated: Bool)
  var centerCoordinate: CLLocationCoordinate2D
  func setCenter(coordinate: CLLocationCoordinate2D, animated: Bool)
  func regionThatFits(region: MKCoordinateRegion) -> MKCoordinateRegion
  var visibleMapRect: MKMapRect
  func setVisibleMapRect(mapRect: MKMapRect, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect) -> MKMapRect
  func _handleSelectionAt(locationInView: CGPoint)
  func setVisibleMapRect(mapRect: MKMapRect, edgePadding insets: EdgeInsets, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect, edgePadding insets: EdgeInsets) -> MKMapRect
  @NSCopying var camera: MKMapCamera
  func setCamera(camera: MKMapCamera, animated: Bool)
  func convert(coordinate: CLLocationCoordinate2D, toPointTo view: NSView?) -> CGPoint
  func convert(point: CGPoint, toCoordinateFrom view: NSView?) -> CLLocationCoordinate2D
  func convertRegion(region: MKCoordinateRegion, toRectTo view: NSView?) -> CGRect
  func convert(rect: CGRect, toRegionFrom view: NSView?) -> MKCoordinateRegion
  var isZoomEnabled: Bool
  var isScrollEnabled: Bool
  var isRotateEnabled: Bool
  var isPitchEnabled: Bool
  var showsZoomControls: Bool
  var showsCompass: Bool
  var showsScale: Bool
  var showsPointsOfInterest: Bool
  var showsBuildings: Bool
  var showsTraffic: Bool
  var showsUserLocation: Bool
  var userLocation: MKUserLocation { get }
  var isUserLocationVisible: Bool { get }
  func addAnnotation(annotation: MKAnnotation)
  func addAnnotations(annotations: [MKAnnotation])
  func removeAnnotation(annotation: MKAnnotation)
  func removeAnnotations(annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  func annotationsIn(mapRect: MKMapRect) -> Set<Object>
  func viewFor(annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationViewWithIdentifier(identifier: String) -> MKAnnotationView?
  func selectAnnotation(annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  func showAnnotations(annotations: [MKAnnotation], animated: Bool)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AboveRoads
  case AboveLabels
}
extension MKMapView {
  func add(overlay: MKOverlay, level: MKOverlayLevel)
  func addOverlays(overlays: [MKOverlay], level: MKOverlayLevel)
  func remove(overlay: MKOverlay)
  func removeOverlays(overlays: [MKOverlay])
  func insert(overlay: MKOverlay, at index: Int, level: MKOverlayLevel)
  func insert(overlay: MKOverlay, above sibling: MKOverlay)
  func insert(overlay: MKOverlay, below sibling: MKOverlay)
  func exchangeOverlay(overlay1: MKOverlay, withOverlay overlay2: MKOverlay)
  var overlays: [MKOverlay] { get }
  func overlaysIn(level: MKOverlayLevel) -> [MKOverlay]
  func rendererFor(overlay: MKOverlay) -> MKOverlayRenderer?
  func add(overlay: MKOverlay)
  func addOverlays(overlays: [MKOverlay])
  func insert(overlay: MKOverlay, at index: Int)
  func exchangeOverlayAt(index1: Int, withOverlayAt index2: Int)
}
protocol MKMapViewDelegate : ObjectProtocol {
  optional func mapView(mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  optional func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  optional func mapViewWillStartLoadingMap(mapView: MKMapView)
  optional func mapViewDidFinishLoadingMap(mapView: MKMapView)
  optional func mapViewDidFailLoadingMap(mapView: MKMapView, withError error: Error)
  optional func mapViewWillStartRenderingMap(mapView: MKMapView)
  optional func mapViewDidFinishRenderingMap(mapView: MKMapView, fullyRendered: Bool)
  optional func mapView(mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
  optional func mapView(mapView: MKMapView, didAdd views: [MKAnnotationView])
  optional func mapView(mapView: MKMapView, didSelect view: MKAnnotationView)
  optional func mapView(mapView: MKMapView, didDeselect view: MKAnnotationView)
  optional func mapViewWillStartLocatingUser(mapView: MKMapView)
  optional func mapViewDidStopLocatingUser(mapView: MKMapView)
  optional func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
  optional func mapView(mapView: MKMapView, didFailToLocateUserWithError error: Error)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  optional func mapView(mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer
  optional func mapView(mapView: MKMapView, didAdd renderers: [MKOverlayRenderer])
}
class MKMultiPoint : MKShape {
  func points() -> UnsafeMutablePointer<MKMapPoint>
  var pointCount: Int { get }
  func getCoordinates(coords: UnsafeMutablePointer<CLLocationCoordinate2D>, range: NSRange)
  init()
}
protocol MKOverlay : MKAnnotation {
  var coordinate: CLLocationCoordinate2D { get }
  var boundingMapRect: MKMapRect { get }
  optional func intersectsMapRect(mapRect: MKMapRect) -> Bool
  optional func canReplaceMapContent() -> Bool
}
class MKOverlayPathRenderer : MKOverlayRenderer {
  var fillColor: NSColor?
  var strokeColor: NSColor?
  var lineWidth: CGFloat
  var lineJoin: CGLineJoin
  var lineCap: CGLineCap
  var miterLimit: CGFloat
  var lineDashPhase: CGFloat
  var lineDashPattern: [Number]?
  func createPath()
  var path: CGPath!
  func invalidatePath()
  func applyStrokePropertiesTo(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func applyFillPropertiesTo(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func strokePath(path: CGPath, in context: CGContext)
  func fillPath(path: CGPath, in context: CGContext)
  init(overlay: MKOverlay)
  convenience init()
}
class MKOverlayRenderer : Object {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func pointFor(mapPoint: MKMapPoint) -> CGPoint
  func mapPointFor(point: CGPoint) -> MKMapPoint
  func rectFor(mapRect: MKMapRect) -> CGRect
  func mapRectFor(rect: CGRect) -> MKMapRect
  func canDraw(mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func draw(mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayIn(mapRect: MKMapRect)
  func setNeedsDisplayIn(mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
  convenience init()
}
func MKRoadWidthAtZoomScale(zoomScale: MKZoomScale) -> CGFloat
enum MKPinAnnotationColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Red
  case Green
  case Purple
}
class MKPinAnnotationView : MKAnnotationView {
  class func redPinColor() -> NSColor
  class func greenPinColor() -> NSColor
  class func purplePinColor() -> NSColor
  var pinTintColor: NSColor!
  var animatesDrop: Bool
  var pinColor: MKPinAnnotationColor
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  init(placemark: CLPlacemark)
  init()
  init?(coder aDecoder: Coder)
  var coordinate: CLLocationCoordinate2D { get }
  var title: String? { get }
  var subtitle: String? { get }
}
class MKPointAnnotation : MKShape {
  var coordinate: CLLocationCoordinate2D
  init()
}
class MKPolygon : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int, interiorPolygons: [MKPolygon]?)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int, interiorPolygons: [MKPolygon]?)
  var interiorPolygons: [MKPolygon]? { get }
  init()
  var coordinate: CLLocationCoordinate2D { get }
  var boundingMapRect: MKMapRect { get }
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  func canReplaceMapContent() -> Bool
}
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon: MKPolygon)
  var polygon: MKPolygon { get }
  init(overlay: MKOverlay)
  convenience init()
}
class MKPolyline : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  init()
  var coordinate: CLLocationCoordinate2D { get }
  var boundingMapRect: MKMapRect { get }
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  func canReplaceMapContent() -> Bool
}
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline: MKPolyline)
  var polyline: MKPolyline { get }
  init(overlay: MKOverlay)
  convenience init()
}
class MKShape : Object, MKAnnotation {
  var title: String?
  var subtitle: String?
  init()
  var coordinate: CLLocationCoordinate2D { get }
}
enum MKMapType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Standard
  case Satellite
  case Hybrid
  case SatelliteFlyover
  case HybridFlyover
}
let MKErrorDomain: String
enum MKErrorCode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case ServerFailure
  case LoadingThrottled
  case PlacemarkNotFound
  case DirectionsNotFound
}
class MKUserLocation : Object, MKAnnotation {
  var isUpdating: Bool { get }
  var location: CLLocation? { get }
  var heading: CLHeading? { get }
  var title: String?
  var subtitle: String?
  init()
  var coordinate: CLLocationCoordinate2D { get }
}
