
protocol MKAnnotation : NSObjectProtocol {
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
class MKAnnotationView : UIView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var annotation: MKAnnotation?
  var image: UIImage?
  var centerOffset: CGPoint
  var calloutOffset: CGPoint
  var enabled: Bool
  var highlighted: Bool
  var selected: Bool
  func setSelected(selected: Bool, animated: Bool)
  var canShowCallout: Bool
  var leftCalloutAccessoryView: UIView?
  var rightCalloutAccessoryView: UIView?
  var detailCalloutAccessoryView: UIView?
  var draggable: Bool
  var dragState: MKAnnotationViewDragState
  func setDragState(newDragState: MKAnnotationViewDragState, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class MKCircle : MKShape, MKOverlay {
  convenience init(centerCoordinate coord: CLLocationCoordinate2D, radius: CLLocationDistance)
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
class MKCircleView : MKOverlayPathView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
typealias MKDirectionsHandler = (MKDirectionsResponse?, NSError?) -> Void
typealias MKETAHandler = (MKETAResponse?, NSError?) -> Void
class MKDirections : NSObject {
  init(request: MKDirectionsRequest)
  func calculateDirectionsWithCompletionHandler(completionHandler: MKDirectionsHandler)
  func calculateETAWithCompletionHandler(completionHandler: MKETAHandler)
  func cancel()
  var calculating: Bool { get }
  convenience init()
}
class MKDirectionsRequest : NSObject {
  var source: MKMapItem?
  var destination: MKMapItem?
  init()
}
extension MKDirectionsRequest {
  var transportType: MKDirectionsTransportType
  var requestsAlternateRoutes: Bool
  @NSCopying var departureDate: NSDate?
  @NSCopying var arrivalDate: NSDate?
}
extension MKDirectionsRequest {
  init(contentsOfURL url: NSURL)
  class func isDirectionsRequestURL(url: NSURL) -> Bool
}
class MKDirectionsResponse : NSObject {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var routes: [MKRoute] { get }
  init()
}
class MKRoute : NSObject {
  var name: String { get }
  var advisoryNotices: [String] { get }
  var distance: CLLocationDistance { get }
  var expectedTravelTime: NSTimeInterval { get }
  var transportType: MKDirectionsTransportType { get }
  var polyline: MKPolyline { get }
  var steps: [MKRouteStep] { get }
  init()
}
class MKRouteStep : NSObject {
  var instructions: String { get }
  var notice: String? { get }
  var polyline: MKPolyline { get }
  var distance: CLLocationDistance { get }
  var transportType: MKDirectionsTransportType { get }
  init()
}
class MKETAResponse : NSObject {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var expectedTravelTime: NSTimeInterval { get }
  var distance: CLLocationDistance { get }
  var expectedArrivalDate: NSDate { get }
  var expectedDepartureDate: NSDate { get }
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
class MKDistanceFormatter : NSFormatter {
  func stringFromDistance(distance: CLLocationDistance) -> String
  func distanceFromString(distance: String) -> CLLocationDistance
  @NSCopying var locale: NSLocale!
  var units: MKDistanceFormatterUnits
  var unitStyle: MKDistanceFormatterUnitStyle
  init()
  init?(coder aDecoder: NSCoder)
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
extension NSValue {
   init(MKCoordinate coordinate: CLLocationCoordinate2D)
   init(MKCoordinateSpan span: MKCoordinateSpan)
  var MKCoordinateValue: CLLocationCoordinate2D { get }
  var MKCoordinateSpanValue: MKCoordinateSpan { get }
}
class MKMapCamera : NSObject, NSSecureCoding, NSCopying {
  var centerCoordinate: CLLocationCoordinate2D
  var heading: CLLocationDirection
  var pitch: CGFloat
  var altitude: CLLocationDistance
  convenience init(lookingAtCenterCoordinate centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude: CLLocationDistance)
  convenience init(lookingAtCenterCoordinate centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch: CGFloat, heading: CLLocationDirection)
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class MKMapItem : NSObject {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: NSURL?
  @NSCopying var timeZone: NSTimeZone?
  class func mapItemForCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMapsWithLaunchOptions(launchOptions: [String : AnyObject]?) -> Bool
  class func openMapsWithItems(mapItems: [MKMapItem], launchOptions: [String : AnyObject]?) -> Bool
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
class MKMapSnapshot : NSObject {
  var image: UIImage { get }
  func pointForCoordinate(coordinate: CLLocationCoordinate2D) -> CGPoint
  init()
}
class MKMapSnapshotOptions : NSObject, NSCopying {
  @NSCopying var camera: MKMapCamera
  var mapRect: MKMapRect
  var region: MKCoordinateRegion
  var mapType: MKMapType
  var showsPointsOfInterest: Bool
  var showsBuildings: Bool
  var size: CGSize
  var scale: CGFloat
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias MKMapSnapshotCompletionHandler = (MKMapSnapshot?, NSError?) -> Void
class MKMapSnapshotter : NSObject {
  init(options: MKMapSnapshotOptions)
  func startWithCompletionHandler(completionHandler: MKMapSnapshotCompletionHandler)
  func startWithQueue(queue: dispatch_queue_t, completionHandler: MKMapSnapshotCompletionHandler)
  func cancel()
  var loading: Bool { get }
  convenience init()
}
enum MKUserTrackingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Follow
  case FollowWithHeading
}
class MKMapView : UIView, NSCoding {
  weak var delegate: @sil_weak MKMapViewDelegate?
  var mapType: MKMapType
  var region: MKCoordinateRegion
  func setRegion(region: MKCoordinateRegion, animated: Bool)
  var centerCoordinate: CLLocationCoordinate2D
  func setCenterCoordinate(coordinate: CLLocationCoordinate2D, animated: Bool)
  func regionThatFits(region: MKCoordinateRegion) -> MKCoordinateRegion
  var visibleMapRect: MKMapRect
  func setVisibleMapRect(mapRect: MKMapRect, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect) -> MKMapRect
  func _handleSelectionAtPoint(locationInView: CGPoint)
  func setVisibleMapRect(mapRect: MKMapRect, edgePadding insets: UIEdgeInsets, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect, edgePadding insets: UIEdgeInsets) -> MKMapRect
  @NSCopying var camera: MKMapCamera
  func setCamera(camera: MKMapCamera, animated: Bool)
  func convertCoordinate(coordinate: CLLocationCoordinate2D, toPointToView view: UIView?) -> CGPoint
  func convertPoint(point: CGPoint, toCoordinateFromView view: UIView?) -> CLLocationCoordinate2D
  func convertRegion(region: MKCoordinateRegion, toRectToView view: UIView?) -> CGRect
  func convertRect(rect: CGRect, toRegionFromView view: UIView?) -> MKCoordinateRegion
  var zoomEnabled: Bool
  var scrollEnabled: Bool
  var rotateEnabled: Bool
  var pitchEnabled: Bool
  var showsCompass: Bool
  var showsScale: Bool
  var showsPointsOfInterest: Bool
  var showsBuildings: Bool
  var showsTraffic: Bool
  var showsUserLocation: Bool
  var userLocation: MKUserLocation { get }
  var userTrackingMode: MKUserTrackingMode
  func setUserTrackingMode(mode: MKUserTrackingMode, animated: Bool)
  var userLocationVisible: Bool { get }
  func addAnnotation(annotation: MKAnnotation)
  func addAnnotations(annotations: [MKAnnotation])
  func removeAnnotation(annotation: MKAnnotation)
  func removeAnnotations(annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  func annotationsInMapRect(mapRect: MKMapRect) -> Set<NSObject>
  func viewForAnnotation(annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationViewWithIdentifier(identifier: String) -> MKAnnotationView?
  func selectAnnotation(annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  func showAnnotations(annotations: [MKAnnotation], animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AboveRoads
  case AboveLabels
}
extension MKMapView {
  func addOverlay(overlay: MKOverlay, level: MKOverlayLevel)
  func addOverlays(overlays: [MKOverlay], level: MKOverlayLevel)
  func removeOverlay(overlay: MKOverlay)
  func removeOverlays(overlays: [MKOverlay])
  func insertOverlay(overlay: MKOverlay, atIndex index: Int, level: MKOverlayLevel)
  func insertOverlay(overlay: MKOverlay, aboveOverlay sibling: MKOverlay)
  func insertOverlay(overlay: MKOverlay, belowOverlay sibling: MKOverlay)
  func exchangeOverlay(overlay1: MKOverlay, withOverlay overlay2: MKOverlay)
  var overlays: [MKOverlay] { get }
  func overlaysInLevel(level: MKOverlayLevel) -> [MKOverlay]
  func rendererForOverlay(overlay: MKOverlay) -> MKOverlayRenderer?
  func addOverlay(overlay: MKOverlay)
  func addOverlays(overlays: [MKOverlay])
  func insertOverlay(overlay: MKOverlay, atIndex index: Int)
  func exchangeOverlayAtIndex(index1: Int, withOverlayAtIndex index2: Int)
}
protocol MKMapViewDelegate : NSObjectProtocol {
  optional func mapView(mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  optional func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  optional func mapViewWillStartLoadingMap(mapView: MKMapView)
  optional func mapViewDidFinishLoadingMap(mapView: MKMapView)
  optional func mapViewDidFailLoadingMap(mapView: MKMapView, withError error: NSError)
  optional func mapViewWillStartRenderingMap(mapView: MKMapView)
  optional func mapViewDidFinishRenderingMap(mapView: MKMapView, fullyRendered: Bool)
  optional func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView?
  optional func mapView(mapView: MKMapView, didAddAnnotationViews views: [MKAnnotationView])
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl)
  optional func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView)
  optional func mapView(mapView: MKMapView, didDeselectAnnotationView view: MKAnnotationView)
  optional func mapViewWillStartLocatingUser(mapView: MKMapView)
  optional func mapViewDidStopLocatingUser(mapView: MKMapView)
  optional func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
  optional func mapView(mapView: MKMapView, didFailToLocateUserWithError error: NSError)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, didChangeDragState newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  optional func mapView(mapView: MKMapView, didChangeUserTrackingMode mode: MKUserTrackingMode, animated: Bool)
  optional func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer
  optional func mapView(mapView: MKMapView, didAddOverlayRenderers renderers: [MKOverlayRenderer])
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
  var fillColor: UIColor?
  var strokeColor: UIColor?
  var lineWidth: CGFloat
  var lineJoin: CGLineJoin
  var lineCap: CGLineCap
  var miterLimit: CGFloat
  var lineDashPhase: CGFloat
  var lineDashPattern: [NSNumber]?
  func createPath()
  var path: CGPath!
  func invalidatePath()
  func applyStrokePropertiesToContext(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func applyFillPropertiesToContext(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func strokePath(path: CGPath, inContext context: CGContext)
  func fillPath(path: CGPath, inContext context: CGContext)
  init(overlay: MKOverlay)
  convenience init()
}
class MKOverlayPathView : MKOverlayView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class MKOverlayRenderer : NSObject {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func pointForMapPoint(mapPoint: MKMapPoint) -> CGPoint
  func mapPointForPoint(point: CGPoint) -> MKMapPoint
  func rectForMapRect(mapRect: MKMapRect) -> CGRect
  func mapRectForRect(rect: CGRect) -> MKMapRect
  func canDrawMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func drawMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale, inContext context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayInMapRect(mapRect: MKMapRect)
  func setNeedsDisplayInMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
  convenience init()
}
class MKOverlayView : UIView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
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
  class func redPinColor() -> UIColor
  class func greenPinColor() -> UIColor
  class func purplePinColor() -> UIColor
  var pinTintColor: UIColor!
  var animatesDrop: Bool
  var pinColor: MKPinAnnotationColor
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  init(placemark: CLPlacemark)
  init()
  init?(coder aDecoder: NSCoder)
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
class MKPolygonView : MKOverlayPathView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
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
class MKPolylineView : MKOverlayPathView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class MKShape : NSObject, MKAnnotation {
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
class MKUserLocation : NSObject, MKAnnotation {
  var updating: Bool { get }
  var location: CLLocation? { get }
  var heading: CLHeading? { get }
  var title: String?
  var subtitle: String?
  init()
  var coordinate: CLLocationCoordinate2D { get }
}
class MKUserTrackingBarButtonItem : UIBarButtonItem {
  init(mapView: MKMapView?)
  var mapView: MKMapView?
  convenience init()
  init?(coder aDecoder: NSCoder)
  convenience init(image: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(title: String?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target: AnyObject?, action: Selector)
  convenience init(customView: UIView)
}
