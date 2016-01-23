
protocol IKCameraDeviceViewDelegate {
  optional func cameraDeviceViewSelectionDidChange(cameraDeviceView: IKCameraDeviceView!)
  optional func cameraDeviceView(cameraDeviceView: IKCameraDeviceView!, didDownloadFile file: ICCameraFile!, location url: URL!, fileData data: Data!, error: Error!)
  optional func cameraDeviceView(cameraDeviceView: IKCameraDeviceView!, didEncounterError error: Error!)
}
enum IKCameraDeviceViewDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Table
  case Icon
}
enum IKCameraDeviceViewTransferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FileBased
  case MemoryBased
}
class IKCameraDeviceView : NSView {
  unowned(unsafe) var delegate: @sil_unmanaged IKCameraDeviceViewDelegate!
  unowned(unsafe) var cameraDevice: @sil_unmanaged ICCameraDevice!
  var mode: IKCameraDeviceViewDisplayMode
  var hasDisplayModeTable: Bool
  var hasDisplayModeIcon: Bool
  var downloadAllControlLabel: String!
  var downloadSelectedControlLabel: String!
  var iconSize: Int
  var transferMode: IKCameraDeviceViewTransferMode
  var displaysDownloadsDirectoryControl: Bool
  var downloadsDirectory: URL!
  var displaysPostProcessApplicationControl: Bool
  var postProcessApplication: URL!
  var canRotateSelectedItemsLeft: Bool { get }
  var canRotateSelectedItemsRight: Bool { get }
  var canDeleteSelectedItems: Bool { get }
  var canDownloadSelectedItems: Bool { get }
  func selectedIndexes() -> IndexSet!
  func select(indexes: IndexSet!, byExtendingSelection extend: Bool)
  @IBAction func rotateLeft(sender: AnyObject!)
  @IBAction func rotateRight(sender: AnyObject!)
  @IBAction func deleteSelectedItems(sender: AnyObject!)
  @IBAction func downloadSelectedItems(sender: AnyObject!)
  @IBAction func downloadAllItems(sender: AnyObject!)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
protocol IKDeviceBrowserViewDelegate {
  func deviceBrowserView(deviceBrowserView: IKDeviceBrowserView!, selectionDidChange device: ICDevice!)
  optional func deviceBrowserView(deviceBrowserView: IKDeviceBrowserView!, didEncounterError error: Error!)
}
enum IKDeviceBrowserViewDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Table
  case Outline
  case Icon
}
class IKDeviceBrowserView : NSView {
  unowned(unsafe) var delegate: @sil_unmanaged IKDeviceBrowserViewDelegate!
  var displaysLocalCameras: Bool
  var displaysNetworkCameras: Bool
  var displaysLocalScanners: Bool
  var displaysNetworkScanners: Bool
  var mode: IKDeviceBrowserViewDisplayMode
  var selectedDevice: ICDevice! { get }
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class IKFilterBrowserPanel : NSPanel {
  class func filterBrowserPanelWithStyleMask(styleMask: UInt32) -> AnyObject!
  func filterName() -> String!
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension IKFilterBrowserPanel {
  func begin(options inOptions: [Object : AnyObject]! = [:], modelessDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func beginSheet(options inOptions: [Object : AnyObject]! = [:], modalFor docWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModal(options inOptions: [Object : AnyObject]! = [:]) -> Int32
  func filterBrowserView(options inOptions: [Object : AnyObject]! = [:]) -> IKFilterBrowserView!
  func finish(sender: AnyObject!)
}
let IKFilterBrowserFilterSelectedNotification: String
let IKFilterBrowserFilterDoubleClickNotification: String
let IKFilterBrowserWillPreviewFilterNotification: String
let IKFilterBrowserShowCategories: String
let IKFilterBrowserShowPreview: String
let IKFilterBrowserExcludeCategories: String
let IKFilterBrowserExcludeFilters: String
let IKFilterBrowserDefaultInputImage: String
class IKFilterBrowserView : NSView {
  func setPreviewState(inState: Bool)
  func filterName() -> String!
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
let IKUISizeFlavor: String
let IKUISizeMini: String
let IKUISizeSmall: String
let IKUISizeRegular: String
let IKUImaxSize: String
let IKUIFlavorAllowFallback: String
extension CIFilter {
  func viewForUIConfiguration(inUIConfiguration: [Object : AnyObject]!, excludedKeys inKeys: [AnyObject]!) -> IKFilterUIView!
}
protocol IKFilterCustomUIProvider {
  func provideViewForUIConfiguration(inUIConfiguration: [Object : AnyObject]!, excludedKeys inKeys: [AnyObject]!) -> IKFilterUIView!
}
class IKFilterUIView : NSView {
  class func viewWithFrame(frameRect: Rect, filter inFilter: CIFilter!) -> AnyObject!
  init!(frame frameRect: Rect, filter inFilter: CIFilter!)
  func filter() -> CIFilter!
  func objectController() -> NSObjectController!
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
struct IKImageBrowserCellState : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IKImageStateNoImage: IKImageBrowserCellState { get }
var IKImageStateInvalid: IKImageBrowserCellState { get }
var IKImageStateReady: IKImageBrowserCellState { get }
let IKImageBrowserCellBackgroundLayer: String
let IKImageBrowserCellForegroundLayer: String
let IKImageBrowserCellSelectionLayer: String
let IKImageBrowserCellPlaceHolderLayer: String
class IKImageBrowserCell : Object {
  func imageBrowserView() -> IKImageBrowserView!
  func representedItem() -> AnyObject!
  func indexOfRepresentedItem() -> Int
  func frame() -> Rect
  func imageContainerFrame() -> Rect
  func imageFrame() -> Rect
  func selectionFrame() -> Rect
  func titleFrame() -> Rect
  func subtitleFrame() -> Rect
  func imageAlignment() -> NSImageAlignment
  func isSelected() -> Bool
  func cellState() -> IKImageBrowserCellState
  func opacity() -> CGFloat
  func layerForType(type: String!) -> CALayer!
  init()
}
var IKCellsStyleNone: Int { get }
var IKCellsStyleShadowed: Int { get }
var IKCellsStyleOutlined: Int { get }
var IKCellsStyleTitled: Int { get }
var IKCellsStyleSubtitled: Int { get }
var IKGroupBezelStyle: Int { get }
var IKGroupDisclosureStyle: Int { get }
struct IKImageBrowserDropOperation : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IKImageBrowserDropOn: IKImageBrowserDropOperation { get }
var IKImageBrowserDropBefore: IKImageBrowserDropOperation { get }
extension Object {
  class func numberOfItemsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int
  func numberOfItemsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int
  class func imageBrowser(aBrowser: IKImageBrowserView!, itemAt index: Int) -> AnyObject!
  func imageBrowser(aBrowser: IKImageBrowserView!, itemAt index: Int) -> AnyObject!
  class func imageBrowser(aBrowser: IKImageBrowserView!, removeItemsAt indexes: IndexSet!)
  func imageBrowser(aBrowser: IKImageBrowserView!, removeItemsAt indexes: IndexSet!)
  class func imageBrowser(aBrowser: IKImageBrowserView!, moveItemsAt indexes: IndexSet!, to destinationIndex: Int) -> Bool
  func imageBrowser(aBrowser: IKImageBrowserView!, moveItemsAt indexes: IndexSet!, to destinationIndex: Int) -> Bool
  class func imageBrowser(aBrowser: IKImageBrowserView!, writeItemsAt itemIndexes: IndexSet!, to pasteboard: NSPasteboard!) -> Int
  func imageBrowser(aBrowser: IKImageBrowserView!, writeItemsAt itemIndexes: IndexSet!, to pasteboard: NSPasteboard!) -> Int
  class func numberOfGroupsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int
  func numberOfGroupsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int
  class func imageBrowser(aBrowser: IKImageBrowserView!, groupAt index: Int) -> [Object : AnyObject]!
  func imageBrowser(aBrowser: IKImageBrowserView!, groupAt index: Int) -> [Object : AnyObject]!
}
extension Object {
  class func imageUID() -> String!
  func imageUID() -> String!
  class func imageRepresentationType() -> String!
  func imageRepresentationType() -> String!
  class func imageRepresentation() -> AnyObject!
  func imageRepresentation() -> AnyObject!
  class func imageVersion() -> Int
  func imageVersion() -> Int
  class func imageTitle() -> String!
  func imageTitle() -> String!
  class func imageSubtitle() -> String!
  func imageSubtitle() -> String!
  class func isSelectable() -> Bool
  func isSelectable() -> Bool
}
class IKImageBrowserView : NSView, NSDraggingSource {
  init?(coder: Coder)
  convenience init()
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: Point)
  func draggingSession(session: NSDraggingSession, movedTo screenPoint: Point)
  func draggingSession(session: NSDraggingSession, endedAt screenPoint: Point, operation: NSDragOperation)
  func ignoreModifierKeysFor(session: NSDraggingSession) -> Bool
}
extension IKImageBrowserView {
  init!(frame: Rect)
  func setDataSource(source: AnyObject!)
  func dataSource() -> AnyObject!
  func reloadData()
  func setDelegate(aDelegate: AnyObject!)
  func delegate() -> AnyObject!
}
extension IKImageBrowserView {
  func setCellsStyleMask(mask: Int)
  func cellsStyleMask() -> Int
  func setConstrainsToOriginalSize(flag: Bool)
  func constrainsToOriginalSize() -> Bool
  func setBackgroundLayer(aLayer: CALayer!)
  func backgroundLayer() -> CALayer!
  func setForegroundLayer(aLayer: CALayer!)
  func foregroundLayer() -> CALayer!
  func newCellForRepresentedItem(anItem: AnyObject!) -> IKImageBrowserCell!
  func cellForItemAt(index: Int) -> IKImageBrowserCell!
}
extension IKImageBrowserView {
  func setZoomValue(aValue: Float)
  func zoomValue() -> Float
  func setContentResizingMask(mask: Int)
  func contentResizingMask() -> Int
  func scrollIndexToVisible(index: Int)
  func setCellSize(size: Size)
  func cellSize() -> Size
  func intercellSpacing() -> Size
  func setIntercellSpacing(aSize: Size)
  func indexOfItemAt(point: Point) -> Int
  func itemFrameAt(index: Int) -> Rect
  func visibleItemIndexes() -> IndexSet!
  func rowIndexesIn(rect: Rect) -> IndexSet!
  func columnIndexesIn(rect: Rect) -> IndexSet!
  func rectOfColumn(columnIndex: Int) -> Rect
  func rectOfRow(rowIndex: Int) -> Rect
  func numberOfRows() -> Int
  func numberOfColumns() -> Int
  func setCanControlQuickLookPanel(flag: Bool)
  func canControlQuickLookPanel() -> Bool
}
extension IKImageBrowserView {
  func selectionIndexes() -> IndexSet!
  func setSelectionIndexes(indexes: IndexSet!, byExtendingSelection extendSelection: Bool)
  func setAllowsMultipleSelection(flag: Bool)
  func allowsMultipleSelection() -> Bool
  func setAllowsEmptySelection(flag: Bool)
  func allowsEmptySelection() -> Bool
  func setAllowsReordering(flag: Bool)
  func allowsReordering() -> Bool
  func setAnimates(flag: Bool)
  func animates() -> Bool
  func expandGroupAt(index: Int)
  func collapseGroupAt(index: Int)
  func isGroupExpandedAt(index: Int) -> Bool
}
extension IKImageBrowserView {
  func setDraggingDestinationDelegate(delegate: AnyObject!)
  func draggingDestinationDelegate() -> AnyObject!
  func indexAtLocationOfDroppedItem() -> Int
  func dropOperation() -> IKImageBrowserDropOperation
  func setAllowsDroppingOnItems(flag: Bool)
  func allowsDroppingOnItems() -> Bool
  func setDrop(index: Int, dropOperation operation: IKImageBrowserDropOperation)
}
extension Object {
  class func imageBrowserSelectionDidChange(aBrowser: IKImageBrowserView!)
  func imageBrowserSelectionDidChange(aBrowser: IKImageBrowserView!)
  class func imageBrowser(aBrowser: IKImageBrowserView!, cellWasDoubleClickedAt index: Int)
  func imageBrowser(aBrowser: IKImageBrowserView!, cellWasDoubleClickedAt index: Int)
  class func imageBrowser(aBrowser: IKImageBrowserView!, cellWasRightClickedAt index: Int, withEvent event: NSEvent!)
  func imageBrowser(aBrowser: IKImageBrowserView!, cellWasRightClickedAt index: Int, withEvent event: NSEvent!)
  class func imageBrowser(aBrowser: IKImageBrowserView!, backgroundWasRightClickedWith event: NSEvent!)
  func imageBrowser(aBrowser: IKImageBrowserView!, backgroundWasRightClickedWith event: NSEvent!)
}
let IKImageBrowserPathRepresentationType: String
let IKImageBrowserNSURLRepresentationType: String
let IKImageBrowserNSImageRepresentationType: String
let IKImageBrowserCGImageRepresentationType: String
let IKImageBrowserCGImageSourceRepresentationType: String
let IKImageBrowserNSDataRepresentationType: String
let IKImageBrowserNSBitmapImageRepresentationType: String
let IKImageBrowserQTMovieRepresentationType: String
let IKImageBrowserQTMoviePathRepresentationType: String
let IKImageBrowserQCCompositionRepresentationType: String
let IKImageBrowserQCCompositionPathRepresentationType: String
let IKImageBrowserQuickLookPathRepresentationType: String
let IKImageBrowserIconRefPathRepresentationType: String
let IKImageBrowserIconRefRepresentationType: String
let IKImageBrowserPDFPageRepresentationType: String
let IKImageBrowserBackgroundColorKey: String
let IKImageBrowserSelectionColorKey: String
let IKImageBrowserCellsOutlineColorKey: String
let IKImageBrowserCellsTitleAttributesKey: String
let IKImageBrowserCellsHighlightedTitleAttributesKey: String
let IKImageBrowserCellsSubtitleAttributesKey: String
let IKImageBrowserGroupRangeKey: String
let IKImageBrowserGroupBackgroundColorKey: String
let IKImageBrowserGroupTitleKey: String
let IKImageBrowserGroupStyleKey: String
let IKImageBrowserGroupHeaderLayer: String
let IKImageBrowserGroupFooterLayer: String
protocol IKImageEditPanelDataSource {
  func image() -> Unmanaged<CGImage>!
  func setImage(image: CGImage!, imageProperties metaData: [Object : AnyObject]!)
  optional func thumbnailWithMaximumSize(size: Size) -> Unmanaged<CGImage>!
  optional func imageProperties() -> [Object : AnyObject]!
  optional func hasAdjustMode() -> Bool
  optional func hasEffectsMode() -> Bool
  optional func hasDetailsMode() -> Bool
}
class IKImageEditPanel : NSPanel {
  unowned(unsafe) var dataSource: @sil_unmanaged IKImageEditPanelDataSource!
  var filterArray: [AnyObject]! { get }
  class func shared() -> IKImageEditPanel!
  func reloadData()
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let IKToolModeNone: String
let IKToolModeMove: String
let IKToolModeSelect: String
let IKToolModeSelectRect: String
let IKToolModeSelectEllipse: String
let IKToolModeSelectLasso: String
let IKToolModeCrop: String
let IKToolModeRotate: String
let IKToolModeAnnotate: String
let IKOverlayTypeBackground: String
let IKOverlayTypeImage: String
class IKImageView : NSView {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  var zoomFactor: CGFloat
  var rotationAngle: CGFloat
  var currentToolMode: String!
  var autoresizes: Bool
  var hasHorizontalScroller: Bool
  var hasVerticalScroller: Bool
  var autohidesScrollers: Bool
  var supportsDragAndDrop: Bool
  var editable: Bool
  var doubleClickOpensImageEditPanel: Bool
  unowned(unsafe) var imageCorrection: @sil_unmanaged CIFilter!
  unowned(unsafe) var backgroundColor: @sil_unmanaged NSColor!
  func setImage(image: CGImage!, imageProperties metaData: [Object : AnyObject]!)
  func setImageWith(url: URL!)
  func image() -> Unmanaged<CGImage>!
  func imageSize() -> Size
  func imageProperties() -> [Object : AnyObject]!
  func setRotationAngle(rotationAngle: CGFloat, center centerPoint: Point)
  @IBAction func rotateImageLeft(sender: AnyObject!)
  @IBAction func rotateImageRight(sender: AnyObject!)
  func setImageZoomFactor(zoomFactor: CGFloat, center centerPoint: Point)
  func zoomImageTo(rect: Rect)
  @IBAction func zoomImageToFit(sender: AnyObject!)
  @IBAction func zoomImageToActualSize(sender: AnyObject!)
  @IBAction func zoomIn(sender: AnyObject!)
  @IBAction func zoomOut(sender: AnyObject!)
  @IBAction func flipImageHorizontal(sender: AnyObject!)
  @IBAction func flipImageVertical(sender: AnyObject!)
  @IBAction func crop(sender: AnyObject!)
  func setOverlay(layer: CALayer!, forType layerType: String!)
  func overlayForType(layerType: String!) -> CALayer!
  func scrollTo(point: Point)
  func scrollTo(rect: Rect)
  func convertPointToImagePoint(viewPoint: Point) -> Point
  func convertRectToImageRect(viewRect: Rect) -> Rect
  func convertImagePointToViewPoint(imagePoint: Point) -> Point
  func convertImageRectToViewRect(imageRect: Rect) -> Rect
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class IKPictureTaker : NSPanel {
  class func pictureTaker() -> IKPictureTaker!
  func runModal() -> Int
  func beginWithDelegate(delegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func beginSheetFor(aWindow: NSWindow!, withDelegate delegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func popUpRecentsMenuFor(aView: NSView!, withDelegate delegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func setInputImage(image: NSImage!)
  func inputImage() -> NSImage!
  func outputImage() -> NSImage!
  func setMirroring(b: Bool)
  func mirroring() -> Bool
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let IKPictureTakerAllowsVideoCaptureKey: String
let IKPictureTakerAllowsFileChoosingKey: String
let IKPictureTakerShowRecentPictureKey: String
let IKPictureTakerUpdateRecentPictureKey: String
let IKPictureTakerAllowsEditingKey: String
let IKPictureTakerShowEffectsKey: String
let IKPictureTakerInformationalTextKey: String
let IKPictureTakerImageTransformsKey: String
let IKPictureTakerOutputImageMaxSizeKey: String
let IKPictureTakerShowAddressBookPictureKey: String
let IKPictureTakerShowEmptyPictureKey: String
let IKPictureTakerRemainOpenAfterValidateKey: String
extension Object {
  class func saveOptions(saveOptions: IKSaveOptions!, shouldShowUTType utType: String!) -> Bool
  func saveOptions(saveOptions: IKSaveOptions!, shouldShowUTType utType: String!) -> Bool
}
class IKSaveOptions : Object {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  var imageProperties: [Object : AnyObject]! { get }
  var imageUTType: String! { get }
  var userSelection: [Object : AnyObject]! { get }
  init!(imageProperties: [Object : AnyObject]!, imageUTType: String!)
  func addAccessoryViewTo(savePanel: NSSavePanel!)
  func addTo(view: NSView!)
  init()
}
protocol IKScannerDeviceViewDelegate {
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanTo url: URL!, fileData data: Data!, error: Error!)
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanTo url: URL!, error: Error!)
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanTo data: ICScannerBandData!, scanInfo: [Object : AnyObject]!, error: Error!)
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didEncounterError error: Error!)
}
enum IKScannerDeviceViewTransferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FileBased
  case MemoryBased
}
enum IKScannerDeviceViewDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Simple
  case Advanced
}
class IKScannerDeviceView : NSView {
  unowned(unsafe) var delegate: @sil_unmanaged IKScannerDeviceViewDelegate!
  unowned(unsafe) var scannerDevice: @sil_unmanaged ICScannerDevice!
  var mode: IKScannerDeviceViewDisplayMode
  var hasDisplayModeSimple: Bool
  var hasDisplayModeAdvanced: Bool
  var transferMode: IKScannerDeviceViewTransferMode
  var scanControlLabel: String!
  var overviewControlLabel: String!
  var displaysDownloadsDirectoryControl: Bool
  var downloadsDirectory: URL!
  var documentName: String!
  var displaysPostProcessApplicationControl: Bool
  var postProcessApplication: URL!
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
protocol IKSlideshowDataSource {
  func numberOfSlideshowItems() -> Int
  func slideshowItemAt(index: Int) -> AnyObject!
  optional func nameOfSlideshowItemAt(index: Int) -> String!
  optional func canExportSlideshowItemAt(index: Int, toApplication applicationBundleIdentifier: String!) -> Bool
  optional func slideshowWillStart()
  optional func slideshowDidStop()
  optional func slideshowDidChangeCurrentIndex(newIndex: Int)
}
class IKSlideshow : Object {
  var autoPlayDelay: TimeInterval
  class func shared() -> IKSlideshow!
  func runWith(dataSource: IKSlideshowDataSource!, inMode slideshowMode: String!, options slideshowOptions: [Object : AnyObject]! = [:])
  func stop(sender: AnyObject!)
  func reloadData()
  func reloadItemAt(index: Int)
  func indexOfCurrentSlideshowItem() -> Int
  class func canExportToApplication(applicationBundleIdentifier: String!) -> Bool
  class func exportItem(item: AnyObject!, toApplication applicationBundleIdentifier: String!)
  init()
}
let IKSlideshowModeImages: String
let IKSlideshowModePDF: String
let IKSlideshowModeOther: String
let IKSlideshowWrapAround: String
let IKSlideshowStartPaused: String
let IKSlideshowStartIndex: String
let IKSlideshowScreen: String
let IKSlideshowAudioFile: String
let IKSlideshowPDFDisplayBox: String
let IKSlideshowPDFDisplayMode: String
let IKSlideshowPDFDisplaysAsBook: String
let IK_iPhotoBundleIdentifier: String
let IK_ApertureBundleIdentifier: String
let IK_MailBundleIdentifier: String
let IK_PhotosBundleIdentifier: String
let IKPictureTakerShowAddressBookPicture: String
let IKPictureTakerShowEmptyPicture: String
let IKPictureTakerCropAreaSizeKey: String
class PDFAction : Object, Copying {
  func type() -> String!
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class PDFActionGoTo : PDFAction, Copying {
  init!(destination: PDFDestination!)
  func destination() -> PDFDestination!
  func setDestination(destination: PDFDestination!)
  init()
}
typealias PDFActionNamedName = Int
var kPDFActionNamedNone: Int { get }
var kPDFActionNamedNextPage: Int { get }
var kPDFActionNamedPreviousPage: Int { get }
var kPDFActionNamedFirstPage: Int { get }
var kPDFActionNamedLastPage: Int { get }
var kPDFActionNamedGoBack: Int { get }
var kPDFActionNamedGoForward: Int { get }
var kPDFActionNamedGoToPage: Int { get }
var kPDFActionNamedFind: Int { get }
var kPDFActionNamedPrint: Int { get }
var kPDFActionNamedZoomIn: Int { get }
var kPDFActionNamedZoomOut: Int { get }
class PDFActionNamed : PDFAction, Copying {
  init!(name: PDFActionNamedName)
  func name() -> PDFActionNamedName
  func setName(name: PDFActionNamedName)
  init()
}
class PDFActionRemoteGoTo : PDFAction, Copying {
  init!(pageIndex: Int, at point: Point, fileURL url: URL!)
  func pageIndex() -> Int
  func setPageIndex(pageIndex: Int)
  func point() -> Point
  func setPoint(point: Point)
  func url() -> URL!
  func setURL(url: URL!)
  init()
}
class PDFActionResetForm : PDFAction, Copying {
  init!()
  func fields() -> [AnyObject]!
  func setFields(fields: [AnyObject]!)
  func fieldsIncludedAreCleared() -> Bool
  func setFieldsIncludedAreCleared(include: Bool)
}
class PDFActionURL : PDFAction, Copying {
  init!(url: URL!)
  func url() -> URL!
  func setURL(url: URL!)
  init()
}
class PDFAnnotation : Object, Copying, Coding {
  init!(bounds: Rect)
  func page() -> PDFPage!
  func type() -> String!
  func bounds() -> Rect
  func setBounds(bounds: Rect)
  func modificationDate() -> Date!
  func setModificationDate(date: Date!)
  func userName() -> String!
  func setUserName(name: String!)
  func popup() -> PDFAnnotationPopup!
  func setPopup(popup: PDFAnnotationPopup!)
  func shouldDisplay() -> Bool
  func setShouldDisplay(display: Bool)
  func shouldPrint() -> Bool
  func setShouldPrint(print: Bool)
  func border() -> PDFBorder!
  func setBorder(border: PDFBorder!)
  func color() -> NSColor!
  func setColor(color: NSColor!)
  func mouseUpAction() -> PDFAction!
  func setMouseUp(action: PDFAction!)
  func contents() -> String!
  func setContents(contents: String!)
  func toolTip() -> String!
  func hasAppearanceStream() -> Bool
  func removeAllAppearanceStreams()
  func drawWithBox(box: PDFDisplayBox)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
typealias PDFWidgetControlType = Int
var kPDFWidgetUnknownControl: Int { get }
var kPDFWidgetPushButtonControl: Int { get }
var kPDFWidgetRadioButtonControl: Int { get }
var kPDFWidgetCheckBoxControl: Int { get }
class PDFAnnotationButtonWidget : PDFAnnotation, Copying {
  func controlType() -> PDFWidgetControlType
  func setControlType(type: PDFWidgetControlType)
  func state() -> Int
  func setState(value: Int)
  func isHighlighted() -> Bool
  func setHighlighted(flag: Bool)
  func backgroundColor() -> NSColor!
  func setBackgroundColor(color: NSColor!)
  func allowsToggleToOff() -> Bool
  func setAllowsToggleToOff(allowOff: Bool)
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func caption() -> String!
  func setCaption(name: String!)
  func fieldName() -> String!
  func setFieldName(name: String!)
  func onStateValue() -> String!
  func setOnStateValue(name: String!)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationChoiceWidget : PDFAnnotation, Copying {
  func stringValue() -> String!
  func setStringValue(value: String!)
  func backgroundColor() -> NSColor!
  func setBackgroundColor(color: NSColor!)
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func fieldName() -> String!
  func setFieldName(name: String!)
  func isListChoice() -> Bool
  func setIsListChoice(isList: Bool)
  func choices() -> [AnyObject]!
  func setChoices(options: [AnyObject]!)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationCircle : PDFAnnotation, Copying {
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationFreeText : PDFAnnotation, Copying, Coding {
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func alignment() -> NSTextAlignment
  func setAlignment(alignment: NSTextAlignment)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationInk : PDFAnnotation, Copying, Coding {
  func paths() -> [AnyObject]!
  func add(path: NSBezierPath!)
  func remove(path: NSBezierPath!)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
typealias PDFLineStyle = Int
var kPDFLineStyleNone: Int { get }
var kPDFLineStyleSquare: Int { get }
var kPDFLineStyleCircle: Int { get }
var kPDFLineStyleDiamond: Int { get }
var kPDFLineStyleOpenArrow: Int { get }
var kPDFLineStyleClosedArrow: Int { get }
class PDFAnnotationLine : PDFAnnotation, Copying, Coding {
  func startPoint() -> Point
  func setStart(point: Point)
  func endPoint() -> Point
  func setEnd(point: Point)
  func startStyle() -> PDFLineStyle
  func setStartStyle(style: PDFLineStyle)
  func endStyle() -> PDFLineStyle
  func setEndStyle(style: PDFLineStyle)
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationLink : PDFAnnotation, Copying {
  func destination() -> PDFDestination!
  func setDestination(destination: PDFDestination!)
  func url() -> URL!
  func setURL(url: URL!)
  func setHighlighted(flag: Bool)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
typealias PDFMarkupType = Int
var kPDFMarkupTypeHighlight: Int { get }
var kPDFMarkupTypeStrikeOut: Int { get }
var kPDFMarkupTypeUnderline: Int { get }
class PDFAnnotationMarkup : PDFAnnotation, Copying, Coding {
  func quadrilateralPoints() -> [AnyObject]!
  func setQuadrilateralPoints(points: [AnyObject]!)
  func markupType() -> PDFMarkupType
  func setMarkupType(type: PDFMarkupType)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationPopup : PDFAnnotation, Copying, Coding {
  func isOpen() -> Bool
  func setIsOpen(isOpen: Bool)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationSquare : PDFAnnotation, Copying, Coding {
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationStamp : PDFAnnotation, Copying {
  func name() -> String!
  func setName(name: String!)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
typealias PDFTextAnnotationIconType = Int
var kPDFTextAnnotationIconComment: Int { get }
var kPDFTextAnnotationIconKey: Int { get }
var kPDFTextAnnotationIconNote: Int { get }
var kPDFTextAnnotationIconHelp: Int { get }
var kPDFTextAnnotationIconNewParagraph: Int { get }
var kPDFTextAnnotationIconParagraph: Int { get }
var kPDFTextAnnotationIconInsert: Int { get }
class PDFAnnotationText : PDFAnnotation, Copying, Coding {
  func iconType() -> PDFTextAnnotationIconType
  func setIconType(type: PDFTextAnnotationIconType)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
class PDFAnnotationTextWidget : PDFAnnotation, Copying {
  func stringValue() -> String!
  func setStringValue(value: String!)
  func attributedStringValue() -> AttributedString!
  func setAttributedStringValue(value: AttributedString!)
  func backgroundColor() -> NSColor!
  func setBackgroundColor(color: NSColor!)
  func rotation() -> Int32
  func setRotation(rotation: Int32)
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func alignment() -> NSTextAlignment
  func setAlignment(alignment: NSTextAlignment)
  func maximumLength() -> Int
  func setMaximumLength(maxLen: Int)
  func fieldName() -> String!
  func setFieldName(name: String!)
  func isMultiline() -> Bool
  func setIsMultiline(multiline: Bool)
  init!(bounds: Rect)
  init()
  init?(coder aDecoder: Coder)
}
typealias PDFBorderStyle = Int
var kPDFBorderStyleSolid: Int { get }
var kPDFBorderStyleDashed: Int { get }
var kPDFBorderStyleBeveled: Int { get }
var kPDFBorderStyleInset: Int { get }
var kPDFBorderStyleUnderline: Int { get }
class PDFBorder : Object, Copying, Coding {
  func style() -> PDFBorderStyle
  func setStyle(style: PDFBorderStyle)
  func lineWidth() -> CGFloat
  func setLineWidth(width: CGFloat)
  func dashPattern() -> [AnyObject]!
  func setDashPattern(pattern: [AnyObject]!)
  func drawIn(rect: Rect)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
var kPDFDestinationUnspecifiedValue: Float { get }
class PDFDestination : Object, Copying {
  init!(page: PDFPage!, at point: Point)
  func page() -> PDFPage!
  func point() -> Point
  func zoom() -> CGFloat
  func setZoom(zoom: CGFloat)
  func compare(destination: PDFDestination!) -> ComparisonResult
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias PDFPrintScalingMode = Int
var kPDFPrintPageScaleNone: Int { get }
var kPDFPrintPageScaleToFit: Int { get }
var kPDFPrintPageScaleDownToFit: Int { get }
typealias PDFDocumentPermissions = Int
var kPDFDocumentPermissionsNone: Int { get }
var kPDFDocumentPermissionsUser: Int { get }
var kPDFDocumentPermissionsOwner: Int { get }
let PDFDocumentDidUnlockNotification: String
let PDFDocumentDidBeginFindNotification: String
let PDFDocumentDidEndFindNotification: String
let PDFDocumentDidBeginPageFindNotification: String
let PDFDocumentDidEndPageFindNotification: String
let PDFDocumentDidFindMatchNotification: String
let PDFDocumentDidBeginWriteNotification: String
let PDFDocumentDidEndWriteNotification: String
let PDFDocumentDidBeginPageWriteNotification: String
let PDFDocumentDidEndPageWriteNotification: String
let PDFDocumentTitleAttribute: String
let PDFDocumentAuthorAttribute: String
let PDFDocumentSubjectAttribute: String
let PDFDocumentCreatorAttribute: String
let PDFDocumentProducerAttribute: String
let PDFDocumentCreationDateAttribute: String
let PDFDocumentModificationDateAttribute: String
let PDFDocumentKeywordsAttribute: String
class PDFDocument : Object, Copying {
  init!(url: URL!)
  init!(data: Data!)
  func documentURL() -> URL!
  func documentRef() -> Unmanaged<CGPDFDocument>!
  func documentAttributes() -> [Object : AnyObject]!
  func setDocumentAttributes(attributes: [Object : AnyObject]!)
  func majorVersion() -> Int32
  func minorVersion() -> Int32
  func isEncrypted() -> Bool
  func isLocked() -> Bool
  func unlockWithPassword(password: String!) -> Bool
  func allowsPrinting() -> Bool
  func allowsCopying() -> Bool
  func permissionsStatus() -> PDFDocumentPermissions
  func string() -> String!
  func setDelegate(anObject: AnyObject!)
  func delegate() -> AnyObject!
  func dataRepresentation() -> Data!
  func dataRepresentation(options options: [Object : AnyObject]! = [:]) -> Data!
  func writeToFile(path: String!) -> Bool
  func writeToFile(path: String!, withOptions options: [Object : AnyObject]! = [:]) -> Bool
  func writeTo(url: URL!) -> Bool
  func writeTo(url: URL!, withOptions options: [Object : AnyObject]! = [:]) -> Bool
  func outlineRoot() -> PDFOutline!
  func setOutlineRoot(outline: PDFOutline!)
  func outlineItemFor(selection: PDFSelection!) -> PDFOutline!
  func pageCount() -> Int
  func pageAt(index: Int) -> PDFPage!
  func indexFor(page: PDFPage!) -> Int
  func insert(page: PDFPage!, at index: Int)
  func removePageAt(index: Int)
  func exchangePageAt(indexA: Int, withPageAt indexB: Int)
  func pageClass() -> AnyClass!
  func findString(string: String!, withOptions options: Int) -> [AnyObject]!
  func beginFindString(string: String!, withOptions options: Int)
  func beginFindStrings(strings: [AnyObject]!, withOptions options: Int)
  func findString(string: String!, from selection: PDFSelection!, withOptions options: Int) -> PDFSelection!
  func isFinding() -> Bool
  func cancelFindString()
  func printOperationFor(printInfo: NSPrintInfo!, scalingMode scaleMode: PDFPrintScalingMode, autoRotate doRotate: Bool) -> NSPrintOperation!
  func selectionForEntireDocument() -> PDFSelection!
  func selectionFrom(startPage: PDFPage!, at startPt: Point, to endPage: PDFPage!, at endPt: Point) -> PDFSelection!
  func selectionFrom(startPage: PDFPage!, atCharacterIndex startChar: Int, to endPage: PDFPage!, atCharacterIndex endChar: Int) -> PDFSelection!
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension Object {
  class func documentDidUnlock(notification: Notification!)
  func documentDidUnlock(notification: Notification!)
  class func documentDidBeginDocumentFind(notification: Notification!)
  func documentDidBeginDocumentFind(notification: Notification!)
  class func documentDidEndDocumentFind(notification: Notification!)
  func documentDidEndDocumentFind(notification: Notification!)
  class func documentDidBeginPageFind(notification: Notification!)
  func documentDidBeginPageFind(notification: Notification!)
  class func documentDidEndPageFind(notification: Notification!)
  func documentDidEndPageFind(notification: Notification!)
  class func documentDidFindMatch(notification: Notification!)
  func documentDidFindMatch(notification: Notification!)
}
extension Object {
  class func didMatchString(instance: PDFSelection!)
  func didMatchString(instance: PDFSelection!)
  class func classForPage() -> AnyClass!
  func classForPage() -> AnyClass!
  class func classForAnnotationClass(annotationClass: AnyClass!) -> AnyClass!
  func classForAnnotationClass(annotationClass: AnyClass!) -> AnyClass!
}
class PDFOutline : Object {
  init!()
  func document() -> PDFDocument!
  func parent() -> PDFOutline!
  func numberOfChildren() -> Int
  func index() -> Int
  func childAt(index: Int) -> PDFOutline!
  func insertChild(child: PDFOutline!, at index: Int)
  func removeFromParent()
  func label() -> String!
  func setLabel(label: String!)
  func isOpen() -> Bool
  func setIsOpen(open: Bool)
  func destination() -> PDFDestination!
  func setDestination(destination: PDFDestination!)
  func action() -> PDFAction!
  func setAction(action: PDFAction!)
}
typealias PDFDisplayBox = Int
var kPDFDisplayBoxMediaBox: Int { get }
var kPDFDisplayBoxCropBox: Int { get }
var kPDFDisplayBoxBleedBox: Int { get }
var kPDFDisplayBoxTrimBox: Int { get }
var kPDFDisplayBoxArtBox: Int { get }
class PDFPage : Object, Copying {
  init!(image: NSImage!)
  func document() -> PDFDocument!
  func pageRef() -> Unmanaged<CGPDFPage>!
  func label() -> String!
  func boundsForBox(box: PDFDisplayBox) -> Rect
  func setBounds(bounds: Rect, forBox box: PDFDisplayBox)
  func rotation() -> Int
  func setRotation(angle: Int)
  func annotations() -> [AnyObject]!
  func displaysAnnotations() -> Bool
  func setDisplaysAnnotations(display: Bool)
  func addAnnotation(annotation: PDFAnnotation!)
  func removeAnnotation(annotation: PDFAnnotation!)
  func annotationAt(point: Point) -> PDFAnnotation!
  func drawWithBox(box: PDFDisplayBox)
  func transformContextForBox(box: PDFDisplayBox)
  func numberOfCharacters() -> Int
  func string() -> String!
  func attributedString() -> AttributedString!
  func characterBoundsAt(index: Int) -> Rect
  func characterIndexAt(point: Point) -> Int
  func selectionFor(rect: Rect) -> PDFSelection!
  func selectionForWordAt(point: Point) -> PDFSelection!
  func selectionForLineAt(point: Point) -> PDFSelection!
  func selectionFrom(startPoint: Point, to endPoint: Point) -> PDFSelection!
  func selectionFor(range: NSRange) -> PDFSelection!
  func dataRepresentation() -> Data!
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class PDFSelection : Object, Copying {
  init!(document: PDFDocument!)
  func pages() -> [AnyObject]!
  func color() -> NSColor!
  func setColor(color: NSColor!)
  func string() -> String!
  func attributedString() -> AttributedString!
  func boundsFor(page: PDFPage!) -> Rect
  func numberOfTextRangesOn(page: PDFPage!) -> Int
  func rangeAt(index: Int, on page: PDFPage!) -> NSRange
  func selectionsByLine() -> [AnyObject]!
  func add(selection: PDFSelection!)
  func addSelections(selections: [AnyObject]!)
  func extendAtEnd(succeed: Int)
  func extendAtStart(precede: Int)
  func drawFor(page: PDFPage!, active: Bool)
  func drawFor(page: PDFPage!, withBox box: PDFDisplayBox, active: Bool)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class PDFThumbnailView : NSView, Coding {
  func setPDFView(view: PDFView!)
  func pdfView() -> PDFView!
  func setThumbnailSize(size: Size)
  func thumbnailSize() -> Size
  func setMaximumNumberOfColumns(maxColumns: Int)
  func maximumNumberOfColumns() -> Int
  func setLabel(font: NSFont!)
  func labelFont() -> NSFont!
  func setBackgroundColor(color: NSColor!)
  func backgroundColor() -> NSColor!
  func setAllowsDragging(allow: Bool)
  func allowsDragging() -> Bool
  func setAllowsMultipleSelection(flag: Bool)
  func allowsMultipleSelection() -> Bool
  func selectedPages() -> [AnyObject]!
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
let PDFThumbnailViewDocumentEditedNotification: String
typealias PDFDisplayMode = Int
var kPDFDisplaySinglePage: Int { get }
var kPDFDisplaySinglePageContinuous: Int { get }
var kPDFDisplayTwoUp: Int { get }
var kPDFDisplayTwoUpContinuous: Int { get }
typealias PDFAreaOfInterest = Int
var kPDFNoArea: Int { get }
var kPDFPageArea: Int { get }
var kPDFTextArea: Int { get }
var kPDFAnnotationArea: Int { get }
var kPDFLinkArea: Int { get }
var kPDFControlArea: Int { get }
var kPDFTextFieldArea: Int { get }
var kPDFIconArea: Int { get }
var kPDFPopupArea: Int { get }
var kPDFImageArea: Int { get }
typealias PDFInterpolationQuality = Int
var kPDFInterpolationQualityNone: Int { get }
var kPDFInterpolationQualityLow: Int { get }
var kPDFInterpolationQualityHigh: Int { get }
let PDFViewDocumentChangedNotification: String
let PDFViewChangedHistoryNotification: String
let PDFViewPageChangedNotification: String
let PDFViewScaleChangedNotification: String
let PDFViewAnnotationHitNotification: String
let PDFViewCopyPermissionNotification: String
let PDFViewPrintPermissionNotification: String
let PDFViewAnnotationWillHitNotification: String
let PDFViewSelectionChangedNotification: String
let PDFViewDisplayModeChangedNotification: String
let PDFViewDisplayBoxChangedNotification: String
let PDFViewVisiblePagesChangedNotification: String
class PDFView : NSView, NSAnimationDelegate, NSMenuDelegate {
  func document() -> PDFDocument!
  func setDocument(document: PDFDocument!)
  func canGoToFirstPage() -> Bool
  @IBAction func goToFirstPage(sender: AnyObject!)
  func canGoToLastPage() -> Bool
  @IBAction func goToLastPage(sender: AnyObject!)
  func canGoToNextPage() -> Bool
  @IBAction func goToNextPage(sender: AnyObject!)
  func canGoToPreviousPage() -> Bool
  @IBAction func goToPreviousPage(sender: AnyObject!)
  func canGoBack() -> Bool
  @IBAction func goBack(sender: AnyObject!)
  func canGoForward() -> Bool
  @IBAction func goForward(sender: AnyObject!)
  func currentPage() -> PDFPage!
  func goTo(page: PDFPage!)
  func currentDestination() -> PDFDestination!
  func goTo(destination: PDFDestination!)
  func goTo(selection: PDFSelection!)
  func goTo(rect: Rect, on page: PDFPage!)
  func setDisplayMode(mode: PDFDisplayMode)
  func displayMode() -> PDFDisplayMode
  func setDisplaysPageBreaks(breaks: Bool)
  func displaysPageBreaks() -> Bool
  func setDisplayBox(box: PDFDisplayBox)
  func displayBox() -> PDFDisplayBox
  func setDisplaysAsBook(asBook: Bool)
  func displaysAsBook() -> Bool
  func setShouldAntiAlias(aliasing: Bool)
  func shouldAntiAlias() -> Bool
  func setGreekingThreshold(threshold: CGFloat)
  func greekingThreshold() -> CGFloat
  @IBAction func takeBackgroundColorFrom(sender: AnyObject!)
  func setBackgroundColor(newColor: NSColor!)
  func backgroundColor() -> NSColor!
  func setInterpolationQuality(quality: PDFInterpolationQuality)
  func interpolationQuality() -> PDFInterpolationQuality
  func setDelegate(anObject: AnyObject!)
  func delegate() -> AnyObject!
  func setScaleFactor(scale: CGFloat)
  func scaleFactor() -> CGFloat
  @IBAction func zoomIn(sender: AnyObject!)
  func canZoomIn() -> Bool
  @IBAction func zoomOut(sender: AnyObject!)
  func canZoomOut() -> Bool
  func setAutoScales(newAuto: Bool)
  func autoScales() -> Bool
  func areaOfInterestForMouse(event: NSEvent!) -> PDFAreaOfInterest
  func areaOfInterestFor(cursorLocation: Point) -> PDFAreaOfInterest
  func setCursorForAreaOfInterest(area: PDFAreaOfInterest)
  func perform(action: PDFAction!)
  func currentSelection() -> PDFSelection!
  func setCurrentSelection(selection: PDFSelection!)
  func setCurrentSelection(selection: PDFSelection!, animate: Bool)
  func clearSelection()
  @IBAction func selectAll(sender: AnyObject!)
  func scrollSelectionToVisible(sender: AnyObject!)
  func setHighlightedSelections(selections: [AnyObject]!)
  func highlightedSelections() -> [AnyObject]!
  func takePasswordFrom(sender: AnyObject!)
  func draw(page: PDFPage!)
  func drawPagePost(page: PDFPage!)
  func copy(sender: AnyObject!)
  func printWith(printInfo: NSPrintInfo!, autoRotate doRotate: Bool)
  func printWith(printInfo: NSPrintInfo!, autoRotate doRotate: Bool, pageScaling scale: PDFPrintScalingMode)
  func pageFor(point: Point, nearest: Bool) -> PDFPage!
  func convert(point: Point, to page: PDFPage!) -> Point
  func convert(rect: Rect, to page: PDFPage!) -> Rect
  func convert(point: Point, from page: PDFPage!) -> Point
  func convert(rect: Rect, from page: PDFPage!) -> Rect
  func documentView() -> NSView!
  func layoutDocumentView()
  func annotationsChangedOn(page: PDFPage!)
  func rowSizeFor(page: PDFPage!) -> Size
  func setAllowsDragging(allow: Bool)
  func allowsDragging() -> Bool
  func visiblePages() -> [AnyObject]!
  func setEnableDataDetectors(enable: Bool)
  func enableDataDetectors() -> Bool
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
  func animationShouldStart(animation: NSAnimation) -> Bool
  func animationDidStop(animation: NSAnimation)
  func animationDidEnd(animation: NSAnimation)
  func animation(animation: NSAnimation, valueForProgress progress: NSAnimationProgress) -> Float
  func animation(animation: NSAnimation, didReachProgressMark progress: NSAnimationProgress)
  func menuNeedsUpdate(menu: NSMenu)
  func numberOfItemsIn(menu: NSMenu) -> Int
  func menu(menu: NSMenu, updateItem item: NSMenuItem, at index: Int, shouldCancel: Bool) -> Bool
  func menuHasKeyEquivalent(menu: NSMenu, forEvent event: NSEvent, target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action: UnsafeMutablePointer<Selector>) -> Bool
  func menuWillOpen(menu: NSMenu)
  func menuDidClose(menu: NSMenu)
  func menu(menu: NSMenu, willHighlight item: NSMenuItem?)
  func confinementRectFor(menu: NSMenu, on screen: NSScreen?) -> Rect
}
extension Object {
  class func pdfViewWillChangeScaleFactor(sender: PDFView!, toScale scale: CGFloat) -> CGFloat
  func pdfViewWillChangeScaleFactor(sender: PDFView!, toScale scale: CGFloat) -> CGFloat
  class func pdfViewWillClickOnLink(sender: PDFView!, withURL url: URL!)
  func pdfViewWillClickOnLink(sender: PDFView!, withURL url: URL!)
  class func pdfViewPrintJobTitle(sender: PDFView!) -> String!
  func pdfViewPrintJobTitle(sender: PDFView!) -> String!
  class func pdfViewPerformFind(sender: PDFView!)
  func pdfViewPerformFind(sender: PDFView!)
  class func pdfViewPerformGoToPage(sender: PDFView!)
  func pdfViewPerformGoToPage(sender: PDFView!)
  class func pdfViewPerformPrint(sender: PDFView!)
  func pdfViewPerformPrint(sender: PDFView!)
  class func pdfViewOpenPDF(sender: PDFView!, forRemoteGoToAction action: PDFActionRemoteGoTo!)
  func pdfViewOpenPDF(sender: PDFView!, forRemoteGoToAction action: PDFActionRemoteGoTo!)
}
let QCCompositionAttributeNameKey: String
let QCCompositionAttributeDescriptionKey: String
let QCCompositionAttributeCopyrightKey: String
let QCCompositionAttributeBuiltInKey: String
let QCCompositionAttributeIsTimeDependentKey: String
let QCCompositionAttributeHasConsumersKey: String
let QCCompositionAttributeCategoryKey: String
let QCCompositionCategoryDistortion: String
let QCCompositionCategoryStylize: String
let QCCompositionCategoryUtility: String
let QCCompositionInputImageKey: String
let QCCompositionInputSourceImageKey: String
let QCCompositionInputDestinationImageKey: String
let QCCompositionInputRSSFeedURLKey: String
let QCCompositionInputRSSArticleDurationKey: String
let QCCompositionInputPreviewModeKey: String
let QCCompositionInputXKey: String
let QCCompositionInputYKey: String
let QCCompositionInputScreenImageKey: String
let QCCompositionInputAudioPeakKey: String
let QCCompositionInputAudioSpectrumKey: String
let QCCompositionInputTrackPositionKey: String
let QCCompositionInputTrackInfoKey: String
let QCCompositionInputTrackSignalKey: String
let QCCompositionInputPrimaryColorKey: String
let QCCompositionInputSecondaryColorKey: String
let QCCompositionInputPaceKey: String
let QCCompositionOutputImageKey: String
let QCCompositionOutputWebPageURLKey: String
let QCCompositionProtocolGraphicAnimation: String
let QCCompositionProtocolGraphicTransition: String
let QCCompositionProtocolImageFilter: String
let QCCompositionProtocolScreenSaver: String
let QCCompositionProtocolRSSVisualizer: String
let QCCompositionProtocolMusicVisualizer: String
class QCComposition : Object, Copying {
   init!(file path: String!)
   init!(data: Data!)
  func protocols() -> [AnyObject]!
  func attributes() -> [Object : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class QCCompositionLayer : CAOpenGLLayer, QCCompositionRenderer {
  init!(file path: String!)
  init!(composition: QCComposition!)
  func composition() -> QCComposition!
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
  func attributes() -> [Object : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> MutableDictionary!
}
class QCCompositionParameterView : NSView {
  func setCompositionRenderer(renderer: QCCompositionRenderer!)
  func compositionRenderer() -> QCCompositionRenderer!
  func hasParameters() -> Bool
  func setBackgroundColor(color: NSColor!)
  func backgroundColor() -> NSColor!
  func setDrawsBackground(flag: Bool)
  func drawsBackground() -> Bool
  func setDelegate(delegate: AnyObject!)
  func delegate() -> AnyObject!
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
extension Object {
  class func compositionParameterView(parameterView: QCCompositionParameterView!, shouldDisplayParameterWithKey portKey: String!, attributes portAttributes: [Object : AnyObject]! = [:]) -> Bool
  func compositionParameterView(parameterView: QCCompositionParameterView!, shouldDisplayParameterWithKey portKey: String!, attributes portAttributes: [Object : AnyObject]! = [:]) -> Bool
  class func compositionParameterView(parameterView: QCCompositionParameterView!, didChangeParameterWithKey portKey: String!)
  func compositionParameterView(parameterView: QCCompositionParameterView!, didChangeParameterWithKey portKey: String!)
}
let QCCompositionPickerPanelDidSelectCompositionNotification: String
class QCCompositionPickerPanel : NSPanel {
  class func shared() -> QCCompositionPickerPanel!
  func compositionPickerView() -> QCCompositionPickerView!
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let QCCompositionPickerViewDidSelectCompositionNotification: String
class QCCompositionPickerView : NSView {
  func setCompositionsFromRepositoryWithProtocol(protocol: String!, andAttributes attributes: [Object : AnyObject]! = [:])
  func compositions() -> [AnyObject]!
  func setDelegate(delegate: AnyObject!)
  func delegate() -> AnyObject!
  func setShowsCompositionNames(flag: Bool)
  func showsCompositionNames() -> Bool
  func setAllowsEmptySelection(flag: Bool)
  func allowsEmptySelection() -> Bool
  func setCompositionAspectRatio(ratio: Size)
  func compositionAspectRatio() -> Size
  func setDefaultValue(value: AnyObject!, forInputKey key: String!)
  func resetDefaultInputValues()
  func setSelectedComposition(composition: QCComposition!)
  func selectedComposition() -> QCComposition!
  func startAnimation(sender: AnyObject!)
  func stopAnimation(sender: AnyObject!)
  func isAnimating() -> Bool
  func setMaxAnimationFrameRate(maxFPS: Float)
  func maxAnimationFrameRate() -> Float
  func setBackgroundColor(color: NSColor!)
  func backgroundColor() -> NSColor!
  func setDrawsBackground(flag: Bool)
  func drawsBackground() -> Bool
  func numberOfColumns() -> Int
  func setNumberOfColumns(columns: Int)
  func numberOfRows() -> Int
  func setNumberOfRows(rows: Int)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
extension Object {
  class func compositionPickerView(pickerView: QCCompositionPickerView!, didSelect composition: QCComposition!)
  func compositionPickerView(pickerView: QCCompositionPickerView!, didSelect composition: QCComposition!)
  class func compositionPickerViewDidStartAnimating(pickerView: QCCompositionPickerView!)
  func compositionPickerViewDidStartAnimating(pickerView: QCCompositionPickerView!)
  class func compositionPickerViewWillStopAnimating(pickerView: QCCompositionPickerView!)
  func compositionPickerViewWillStopAnimating(pickerView: QCCompositionPickerView!)
}
let QCCompositionRepositoryDidUpdateNotification: String
extension QCComposition {
  func identifier() -> String!
}
class QCCompositionRepository : Object {
  class func shared() -> QCCompositionRepository!
  func compositionWithIdentifier(identifier: String!) -> QCComposition!
  func compositionsWithProtocols(protocols: [AnyObject]!, andAttributes attributes: [Object : AnyObject]! = [:]) -> [AnyObject]!
  func allCompositions() -> [AnyObject]!
  init()
}
class QCPatchController : NSController {
  init()
  init?(coder: Coder)
}
let QCPlugInAttributeNameKey: String
let QCPlugInAttributeDescriptionKey: String
let QCPlugInAttributeCopyrightKey: String
let QCPlugInAttributeCategoriesKey: String
let QCPlugInAttributeExamplesKey: String
let QCPortAttributeTypeKey: String
let QCPortAttributeNameKey: String
let QCPortAttributeMinimumValueKey: String
let QCPortAttributeMaximumValueKey: String
let QCPortAttributeDefaultValueKey: String
let QCPortAttributeMenuItemsKey: String
let QCPortTypeBoolean: String
let QCPortTypeIndex: String
let QCPortTypeNumber: String
let QCPortTypeString: String
let QCPortTypeColor: String
let QCPortTypeImage: String
let QCPortTypeStructure: String
let QCPlugInPixelFormatARGB8: String
let QCPlugInPixelFormatBGRA8: String
let QCPlugInPixelFormatRGBAf: String
let QCPlugInPixelFormatI8: String
let QCPlugInPixelFormatIf: String
let QCPlugInExecutionArgumentEventKey: String
let QCPlugInExecutionArgumentMouseLocationKey: String
struct QCPlugInExecutionMode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kQCPlugInExecutionModeProvider: QCPlugInExecutionMode { get }
var kQCPlugInExecutionModeProcessor: QCPlugInExecutionMode { get }
var kQCPlugInExecutionModeConsumer: QCPlugInExecutionMode { get }
struct QCPlugInTimeMode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kQCPlugInTimeModeNone: QCPlugInTimeMode { get }
var kQCPlugInTimeModeIdle: QCPlugInTimeMode { get }
var kQCPlugInTimeModeTimeBase: QCPlugInTimeMode { get }
typealias QCPlugInBufferReleaseCallback = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias QCPlugInTextureReleaseCallback = @convention(c) (CGLContextObj, GLuint, UnsafeMutablePointer<Void>) -> Void
protocol QCPlugInContext {
  func compositionURL() -> URL!
  func userInfo() -> MutableDictionary!
  func colorSpace() -> Unmanaged<CGColorSpace>!
  func bounds() -> Rect
  func cglContextObj() -> CGLContextObj
  func outputImageProviderFromBufferWithPixelFormat(format: String!, pixelsWide width: Int, pixelsHigh height: Int, baseAddress: UnsafePointer<Void>, bytesPerRow rowBytes: Int, releaseCallback callback: QCPlugInBufferReleaseCallback!, releaseContext context: UnsafeMutablePointer<Void>, colorSpace: CGColorSpace!, shouldColorMatch colorMatch: Bool) -> AnyObject!
  func outputImageProviderFromTextureWithPixelFormat(format: String!, pixelsWide width: Int, pixelsHigh height: Int, name: GLuint, flipped: Bool, releaseCallback callback: QCPlugInTextureReleaseCallback!, releaseContext context: UnsafeMutablePointer<Void>, colorSpace: CGColorSpace!, shouldColorMatch colorMatch: Bool) -> AnyObject!
}
protocol QCPlugInInputImageSource {
  func imageBounds() -> Rect
  func imageColorSpace() -> Unmanaged<CGColorSpace>!
  func shouldColorMatch() -> Bool
  func lockBufferRepresentationWithPixelFormat(format: String!, colorSpace: CGColorSpace!, forBounds bounds: Rect) -> Bool
  func bufferPixelsWide() -> Int
  func bufferPixelsHigh() -> Int
  func bufferPixelFormat() -> String!
  func bufferColorSpace() -> Unmanaged<CGColorSpace>!
  func bufferBaseAddress() -> UnsafePointer<Void>
  func bufferBytesPerRow() -> Int
  func unlockBufferRepresentation()
  func lockTextureRepresentationWith(colorSpace: CGColorSpace!, forBounds bounds: Rect) -> Bool
  func texturePixelsWide() -> Int
  func texturePixelsHigh() -> Int
  func textureTarget() -> GLenum
  func textureName() -> GLuint
  func textureColorSpace() -> Unmanaged<CGColorSpace>!
  func textureFlipped() -> Bool
  func textureMatrix() -> UnsafePointer<GLfloat>
  func bindTextureRepresentationToCGLContext(cgl_ctx: CGLContextObj, textureUnit unit: GLenum, normalizeCoordinates flag: Bool)
  func unbindTextureRepresentationFromCGLContext(cgl_ctx: CGLContextObj, textureUnit unit: GLenum)
  func unlockTextureRepresentation()
}
protocol QCPlugInOutputImageProvider {
  func imageBounds() -> Rect
  func imageColorSpace() -> Unmanaged<CGColorSpace>!
  optional func shouldColorMatch() -> Bool
  optional func supportedBufferPixelFormats() -> [AnyObject]!
  optional func renderToBuffer(baseAddress: UnsafeMutablePointer<Void>, withBytesPerRow rowBytes: Int, pixelFormat format: String!, forBounds bounds: Rect) -> Bool
  optional func supportedRenderedTexturePixelFormats() -> [AnyObject]!
  optional func copyRenderedTextureForCGLContext(cgl_ctx: CGLContextObj, pixelFormat format: String!, bounds: Rect, isFlipped flipped: UnsafeMutablePointer<ObjCBool>) -> GLuint
  optional func releaseRenderedTexture(name: GLuint, forCGLContext cgl_ctx: CGLContextObj)
  optional func canRenderWithCGLContext(cgl_ctx: CGLContextObj) -> Bool
  optional func renderWithCGLContext(cgl_ctx: CGLContextObj, forBounds bounds: Rect) -> Bool
}
class QCPlugIn : Object {
  class func attributes() -> [Object : AnyObject]!
  class func attributesForPropertyPortWithKey(key: String!) -> [Object : AnyObject]!
  class func sortedPropertyPortKeys() -> [AnyObject]!
  class func executionMode() -> QCPlugInExecutionMode
  class func timeMode() -> QCPlugInTimeMode
  class func plugInKeys() -> [AnyObject]!
  func startExecution(context: QCPlugInContext!) -> Bool
  func enableExecution(context: QCPlugInContext!)
  func executionTimeFor(context: QCPlugInContext!, atTime time: TimeInterval, withArguments arguments: [Object : AnyObject]!) -> TimeInterval
  func execute(context: QCPlugInContext!, atTime time: TimeInterval, withArguments arguments: [Object : AnyObject]!) -> Bool
  func disableExecution(context: QCPlugInContext!)
  func stopExecution(context: QCPlugInContext!)
  func serializedValueForKey(key: String!) -> AnyObject!
  func setSerializedValue(serializedValue: AnyObject!, forKey key: String!)
  init()
}
extension QCPlugIn {
  func didValueForInputKeyChange(key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func setValue(value: AnyObject!, forOutputKey key: String!) -> Bool
  func addInputPortWithType(type: String!, forKey key: String!, withAttributes attributes: [Object : AnyObject]! = [:])
  func removeInputPortForKey(key: String!)
  func addOutputPortWithType(type: String!, forKey key: String!, withAttributes attributes: [Object : AnyObject]! = [:])
  func removeOutputPortForKey(key: String!)
}
extension QCPlugIn {
  class func loadAtPath(path: String!) -> Bool
  class func registerClass(aClass: AnyClass!)
}
class QCPlugInViewController : NSViewController {
  init!(plugIn: QCPlugIn!, viewNibName name: String!)
  func plugIn() -> QCPlugIn!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
extension QCPlugIn {
  func createViewController() -> QCPlugInViewController!
}
let QCRendererEventKey: String
let QCRendererMouseLocationKey: String
protocol QCCompositionRenderer {
  func attributes() -> [Object : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> MutableDictionary!
}
class QCRenderer : Object, QCCompositionRenderer {
  init!(composition: QCComposition!, colorSpace: CGColorSpace!)
  init!(cglContext context: CGLContextObj, pixelFormat format: CGLPixelFormatObj, colorSpace: CGColorSpace!, composition: QCComposition!)
  init!(offScreenWith size: Size, colorSpace: CGColorSpace!, composition: QCComposition!)
  init!(openGLContext context: NSOpenGLContext!, pixelFormat format: NSOpenGLPixelFormat!, file path: String!)
  func renderAtTime(time: TimeInterval, arguments: [Object : AnyObject]!) -> Bool
  func renderingTimeForTime(time: TimeInterval, arguments: [Object : AnyObject]!) -> TimeInterval
  func composition() -> QCComposition!
  func snapshotImage() -> NSImage!
  func createSnapshotImageOfType(type: String!) -> AnyObject!
  init()
  func attributes() -> [Object : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> MutableDictionary!
}
let QCViewDidStartRenderingNotification: String
let QCViewDidStopRenderingNotification: String
class QCView : NSView, QCCompositionRenderer {
  func loadCompositionFromFile(path: String!) -> Bool
  func load(composition: QCComposition!) -> Bool
  func loadedComposition() -> QCComposition!
  func unloadComposition()
  func setAutostartsRendering(flag: Bool)
  func autostartsRendering() -> Bool
  func setEraseColor(color: NSColor!)
  func eraseColor() -> NSColor!
  func setEventForwardingMask(mask: Int)
  func eventForwardingMask() -> Int
  func setMaxRenderingFrameRate(maxFPS: Float)
  func maxRenderingFrameRate() -> Float
  func erase()
  func startRendering() -> Bool
  func renderAtTime(time: TimeInterval, arguments: [Object : AnyObject]!) -> Bool
  func pauseRendering()
  func isPausedRendering() -> Bool
  func resumeRendering()
  func stopRendering()
  func isRendering() -> Bool
  func snapshotImage() -> NSImage!
  func createSnapshotImageOfType(type: String!) -> AnyObject!
  func openGLContext() -> NSOpenGLContext!
  func openGLPixelFormat() -> NSOpenGLPixelFormat!
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
  func attributes() -> [Object : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> MutableDictionary!
}
extension QCView {
  @IBAction func start(sender: AnyObject!)
  @IBAction func stop(sender: AnyObject!)
  @IBAction func play(sender: AnyObject!)
}
class QuartzFilter : Object {
   init!(url aURL: URL!)
   init!(properties: [Object : AnyObject]!)
   init!(outputIntents: [AnyObject]!)
  func properties() -> [Object : AnyObject]!
  func url() -> URL!
  func localizedName() -> String!
  func applyTo(aContext: CGContext!) -> Bool
  func removeFrom(aContext: CGContext!)
  init()
}
var globalUpdateOK: DarwinBoolean
class QuartzFilterView : NSView {
  func sizeToFit()
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class QuartzFilterManager : Object {
  class func filtersInDomains(domains: [AnyObject]!) -> [AnyObject]!
  func filterPanel() -> NSPanel!
  func filterView() -> QuartzFilterView!
  func selectedFilter() -> QuartzFilter!
  func select(filter: QuartzFilter!) -> Bool
  func setDelegate(aDelegate: AnyObject!)
  func delegate() -> AnyObject!
  func importFilter(filterProperties: [Object : AnyObject]!) -> QuartzFilter!
  init()
}
extension Object {
  class func quartzFilterManager(sender: QuartzFilterManager!, didAdd filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didAdd filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didRemove filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didRemove filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didModifyFilter filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didModifyFilter filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didSelect filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didSelect filter: QuartzFilter!)
}
let kQuartzFilterApplicationDomain: String
let kQuartzFilterPDFWorkflowDomain: String
let kQuartzFilterPrintingDomain: String
let kQuartzFilterManagerDidAddFilterNotification: String
let kQuartzFilterManagerDidRemoveFilterNotification: String
let kQuartzFilterManagerDidModifyFilterNotification: String
let kQuartzFilterManagerDidSelectFilterNotification: String
protocol QLPreviewItem : ObjectProtocol {
  var previewItemURL: URL! { get }
  optional var previewItemTitle: String! { get }
  optional var previewItemDisplayState: AnyObject! { get }
}
extension URL : QLPreviewItem {
  var previewItemURL: URL! { get }
  var previewItemTitle: String! { get }
  var previewItemDisplayState: AnyObject! { get }
}
class QLPreviewPanel : NSPanel {
  class func shared() -> QLPreviewPanel!
  class func sharedPreviewPanelExists() -> Bool
  var currentController: AnyObject! { get }
  func updateController()
  unowned(unsafe) var dataSource: @sil_unmanaged QLPreviewPanelDataSource!
  func reloadData()
  func refreshCurrentPreviewItem()
  var currentPreviewItemIndex: Int
  var currentPreviewItem: QLPreviewItem! { get }
  var displayState: AnyObject!
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  func enterFullScreenMode(screen: NSScreen!, withOptions options: [Object : AnyObject]! = [:]) -> Bool
  func exitFullScreenMode(options options: [Object : AnyObject]! = [:])
  var isInFullScreenMode: Bool { get }
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension Object {
  class func acceptsPreviewPanelControl(panel: QLPreviewPanel!) -> Bool
  func acceptsPreviewPanelControl(panel: QLPreviewPanel!) -> Bool
  class func beginPreviewPanelControl(panel: QLPreviewPanel!)
  func beginPreviewPanelControl(panel: QLPreviewPanel!)
  class func endPreviewPanelControl(panel: QLPreviewPanel!)
  func endPreviewPanelControl(panel: QLPreviewPanel!)
}
protocol QLPreviewPanelDataSource {
  func numberOfPreviewItemsIn(panel: QLPreviewPanel!) -> Int
  func previewPanel(panel: QLPreviewPanel!, previewItemAt index: Int) -> QLPreviewItem!
}
protocol QLPreviewPanelDelegate : NSWindowDelegate {
  optional func previewPanel(panel: QLPreviewPanel!, handle event: NSEvent!) -> Bool
  optional func previewPanel(panel: QLPreviewPanel!, sourceFrameOnScreenFor item: QLPreviewItem!) -> Rect
  optional func previewPanel(panel: QLPreviewPanel!, transitionImageFor item: QLPreviewItem!, contentRect: UnsafeMutablePointer<Rect>) -> AnyObject!
}
enum QLPreviewViewStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Normal
  case Compact
}
class QLPreviewView : NSView {
  init!(frame: Rect, style: QLPreviewViewStyle)
  init!(frame: Rect)
  var previewItem: QLPreviewItem!
  func refreshPreviewItem()
  var displayState: AnyObject!
  func close()
  var shouldCloseWithWindow: Bool
  var autostarts: Bool
  init?(coder: Coder)
  convenience init()
}
