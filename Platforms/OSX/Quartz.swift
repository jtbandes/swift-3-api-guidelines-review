
protocol IKCameraDeviceViewDelegate {
  optional func cameraDeviceViewSelectionDidChange(cameraDeviceView: IKCameraDeviceView!)
  optional func cameraDeviceView(cameraDeviceView: IKCameraDeviceView!, didDownloadFile file: ICCameraFile!, location url: NSURL!, fileData data: NSData!, error: NSError!)
  optional func cameraDeviceView(cameraDeviceView: IKCameraDeviceView!, didEncounterError error: NSError!)
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
  var downloadsDirectory: NSURL!
  var displaysPostProcessApplicationControl: Bool
  var postProcessApplication: NSURL!
  var canRotateSelectedItemsLeft: Bool { get }
  var canRotateSelectedItemsRight: Bool { get }
  var canDeleteSelectedItems: Bool { get }
  var canDownloadSelectedItems: Bool { get }
  func selectedIndexes() -> NSIndexSet!
  func selectIndexes(indexes: NSIndexSet!, byExtendingSelection extend: Bool)
  @IBAction func rotateLeft(sender: AnyObject!)
  @IBAction func rotateRight(sender: AnyObject!)
  @IBAction func deleteSelectedItems(sender: AnyObject!)
  @IBAction func downloadSelectedItems(sender: AnyObject!)
  @IBAction func downloadAllItems(sender: AnyObject!)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol IKDeviceBrowserViewDelegate {
  func deviceBrowserView(deviceBrowserView: IKDeviceBrowserView!, selectionDidChange device: ICDevice!)
  optional func deviceBrowserView(deviceBrowserView: IKDeviceBrowserView!, didEncounterError error: NSError!)
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
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class IKFilterBrowserPanel : NSPanel {
  class func filterBrowserPanelWithStyleMask(styleMask: UInt32) -> AnyObject!
  func filterName() -> String!
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension IKFilterBrowserPanel {
  func beginWithOptions(inOptions: [NSObject : AnyObject]!, modelessDelegate: AnyObject!, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func beginSheetWithOptions(inOptions: [NSObject : AnyObject]!, modalForWindow docWindow: NSWindow!, modalDelegate: AnyObject!, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalWithOptions(inOptions: [NSObject : AnyObject]!) -> Int32
  func filterBrowserViewWithOptions(inOptions: [NSObject : AnyObject]!) -> IKFilterBrowserView!
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
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
let IKUISizeFlavor: String
let IKUISizeMini: String
let IKUISizeSmall: String
let IKUISizeRegular: String
let IKUImaxSize: String
let IKUIFlavorAllowFallback: String
extension CIFilter {
  func viewForUIConfiguration(inUIConfiguration: [NSObject : AnyObject]!, excludedKeys inKeys: [AnyObject]!) -> IKFilterUIView!
}
protocol IKFilterCustomUIProvider {
  func provideViewForUIConfiguration(inUIConfiguration: [NSObject : AnyObject]!, excludedKeys inKeys: [AnyObject]!) -> IKFilterUIView!
}
class IKFilterUIView : NSView {
  class func viewWithFrame(frameRect: NSRect, filter inFilter: CIFilter!) -> AnyObject!
  init!(frame frameRect: NSRect, filter inFilter: CIFilter!)
  func filter() -> CIFilter!
  func objectController() -> NSObjectController!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
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
class IKImageBrowserCell : NSObject {
  func imageBrowserView() -> IKImageBrowserView!
  func representedItem() -> AnyObject!
  func indexOfRepresentedItem() -> Int
  func frame() -> NSRect
  func imageContainerFrame() -> NSRect
  func imageFrame() -> NSRect
  func selectionFrame() -> NSRect
  func titleFrame() -> NSRect
  func subtitleFrame() -> NSRect
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
extension NSObject {
  class func numberOfItemsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int
  func numberOfItemsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int
  class func imageBrowser(aBrowser: IKImageBrowserView!, itemAtIndex index: Int) -> AnyObject!
  func imageBrowser(aBrowser: IKImageBrowserView!, itemAtIndex index: Int) -> AnyObject!
  class func imageBrowser(aBrowser: IKImageBrowserView!, removeItemsAtIndexes indexes: NSIndexSet!)
  func imageBrowser(aBrowser: IKImageBrowserView!, removeItemsAtIndexes indexes: NSIndexSet!)
  class func imageBrowser(aBrowser: IKImageBrowserView!, moveItemsAtIndexes indexes: NSIndexSet!, toIndex destinationIndex: Int) -> Bool
  func imageBrowser(aBrowser: IKImageBrowserView!, moveItemsAtIndexes indexes: NSIndexSet!, toIndex destinationIndex: Int) -> Bool
  class func imageBrowser(aBrowser: IKImageBrowserView!, writeItemsAtIndexes itemIndexes: NSIndexSet!, toPasteboard pasteboard: NSPasteboard!) -> Int
  func imageBrowser(aBrowser: IKImageBrowserView!, writeItemsAtIndexes itemIndexes: NSIndexSet!, toPasteboard pasteboard: NSPasteboard!) -> Int
  class func numberOfGroupsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int
  func numberOfGroupsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int
  class func imageBrowser(aBrowser: IKImageBrowserView!, groupAtIndex index: Int) -> [NSObject : AnyObject]!
  func imageBrowser(aBrowser: IKImageBrowserView!, groupAtIndex index: Int) -> [NSObject : AnyObject]!
}
extension NSObject {
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
  init?(coder: NSCoder)
  convenience init()
  func draggingSession(session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  func draggingSession(session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  func draggingSession(session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  func draggingSession(session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  func ignoreModifierKeysForDraggingSession(session: NSDraggingSession) -> Bool
}
extension IKImageBrowserView {
  init!(frame: NSRect)
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
  func cellForItemAtIndex(index: Int) -> IKImageBrowserCell!
}
extension IKImageBrowserView {
  func setZoomValue(aValue: Float)
  func zoomValue() -> Float
  func setContentResizingMask(mask: Int)
  func contentResizingMask() -> Int
  func scrollIndexToVisible(index: Int)
  func setCellSize(size: NSSize)
  func cellSize() -> NSSize
  func intercellSpacing() -> NSSize
  func setIntercellSpacing(aSize: NSSize)
  func indexOfItemAtPoint(point: NSPoint) -> Int
  func itemFrameAtIndex(index: Int) -> NSRect
  func visibleItemIndexes() -> NSIndexSet!
  func rowIndexesInRect(rect: NSRect) -> NSIndexSet!
  func columnIndexesInRect(rect: NSRect) -> NSIndexSet!
  func rectOfColumn(columnIndex: Int) -> NSRect
  func rectOfRow(rowIndex: Int) -> NSRect
  func numberOfRows() -> Int
  func numberOfColumns() -> Int
  func setCanControlQuickLookPanel(flag: Bool)
  func canControlQuickLookPanel() -> Bool
}
extension IKImageBrowserView {
  func selectionIndexes() -> NSIndexSet!
  func setSelectionIndexes(indexes: NSIndexSet!, byExtendingSelection extendSelection: Bool)
  func setAllowsMultipleSelection(flag: Bool)
  func allowsMultipleSelection() -> Bool
  func setAllowsEmptySelection(flag: Bool)
  func allowsEmptySelection() -> Bool
  func setAllowsReordering(flag: Bool)
  func allowsReordering() -> Bool
  func setAnimates(flag: Bool)
  func animates() -> Bool
  func expandGroupAtIndex(index: Int)
  func collapseGroupAtIndex(index: Int)
  func isGroupExpandedAtIndex(index: Int) -> Bool
}
extension IKImageBrowserView {
  func setDraggingDestinationDelegate(delegate: AnyObject!)
  func draggingDestinationDelegate() -> AnyObject!
  func indexAtLocationOfDroppedItem() -> Int
  func dropOperation() -> IKImageBrowserDropOperation
  func setAllowsDroppingOnItems(flag: Bool)
  func allowsDroppingOnItems() -> Bool
  func setDropIndex(index: Int, dropOperation operation: IKImageBrowserDropOperation)
}
extension NSObject {
  class func imageBrowserSelectionDidChange(aBrowser: IKImageBrowserView!)
  func imageBrowserSelectionDidChange(aBrowser: IKImageBrowserView!)
  class func imageBrowser(aBrowser: IKImageBrowserView!, cellWasDoubleClickedAtIndex index: Int)
  func imageBrowser(aBrowser: IKImageBrowserView!, cellWasDoubleClickedAtIndex index: Int)
  class func imageBrowser(aBrowser: IKImageBrowserView!, cellWasRightClickedAtIndex index: Int, withEvent event: NSEvent!)
  func imageBrowser(aBrowser: IKImageBrowserView!, cellWasRightClickedAtIndex index: Int, withEvent event: NSEvent!)
  class func imageBrowser(aBrowser: IKImageBrowserView!, backgroundWasRightClickedWithEvent event: NSEvent!)
  func imageBrowser(aBrowser: IKImageBrowserView!, backgroundWasRightClickedWithEvent event: NSEvent!)
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
  func setImage(image: CGImage!, imageProperties metaData: [NSObject : AnyObject]!)
  optional func thumbnailWithMaximumSize(size: NSSize) -> Unmanaged<CGImage>!
  optional func imageProperties() -> [NSObject : AnyObject]!
  optional func hasAdjustMode() -> Bool
  optional func hasEffectsMode() -> Bool
  optional func hasDetailsMode() -> Bool
}
class IKImageEditPanel : NSPanel {
  unowned(unsafe) var dataSource: @sil_unmanaged IKImageEditPanelDataSource!
  var filterArray: [AnyObject]! { get }
  class func sharedImageEditPanel() -> IKImageEditPanel!
  func reloadData()
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
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
  func setImage(image: CGImage!, imageProperties metaData: [NSObject : AnyObject]!)
  func setImageWithURL(url: NSURL!)
  func image() -> Unmanaged<CGImage>!
  func imageSize() -> NSSize
  func imageProperties() -> [NSObject : AnyObject]!
  func setRotationAngle(rotationAngle: CGFloat, centerPoint: NSPoint)
  @IBAction func rotateImageLeft(sender: AnyObject!)
  @IBAction func rotateImageRight(sender: AnyObject!)
  func setImageZoomFactor(zoomFactor: CGFloat, centerPoint: NSPoint)
  func zoomImageToRect(rect: NSRect)
  @IBAction func zoomImageToFit(sender: AnyObject!)
  @IBAction func zoomImageToActualSize(sender: AnyObject!)
  @IBAction func zoomIn(sender: AnyObject!)
  @IBAction func zoomOut(sender: AnyObject!)
  @IBAction func flipImageHorizontal(sender: AnyObject!)
  @IBAction func flipImageVertical(sender: AnyObject!)
  @IBAction func crop(sender: AnyObject!)
  func setOverlay(layer: CALayer!, forType layerType: String!)
  func overlayForType(layerType: String!) -> CALayer!
  func scrollToPoint(point: NSPoint)
  func scrollToRect(rect: NSRect)
  func convertViewPointToImagePoint(viewPoint: NSPoint) -> NSPoint
  func convertViewRectToImageRect(viewRect: NSRect) -> NSRect
  func convertImagePointToViewPoint(imagePoint: NSPoint) -> NSPoint
  func convertImageRectToViewRect(imageRect: NSRect) -> NSRect
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class IKPictureTaker : NSPanel {
  class func pictureTaker() -> IKPictureTaker!
  func runModal() -> Int
  func beginPictureTakerWithDelegate(delegate: AnyObject!, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func beginPictureTakerSheetForWindow(aWindow: NSWindow!, withDelegate delegate: AnyObject!, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func popUpRecentsMenuForView(aView: NSView!, withDelegate delegate: AnyObject!, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func setInputImage(image: NSImage!)
  func inputImage() -> NSImage!
  func outputImage() -> NSImage!
  func setMirroring(b: Bool)
  func mirroring() -> Bool
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
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
extension NSObject {
  class func saveOptions(saveOptions: IKSaveOptions!, shouldShowUTType utType: String!) -> Bool
  func saveOptions(saveOptions: IKSaveOptions!, shouldShowUTType utType: String!) -> Bool
}
class IKSaveOptions : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  var imageProperties: [NSObject : AnyObject]! { get }
  var imageUTType: String! { get }
  var userSelection: [NSObject : AnyObject]! { get }
  init!(imageProperties: [NSObject : AnyObject]!, imageUTType: String!)
  func addSaveOptionsAccessoryViewToSavePanel(savePanel: NSSavePanel!)
  func addSaveOptionsToView(view: NSView!)
  init()
}
protocol IKScannerDeviceViewDelegate {
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanToURL url: NSURL!, fileData data: NSData!, error: NSError!)
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanToURL url: NSURL!, error: NSError!)
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanToBandData data: ICScannerBandData!, scanInfo: [NSObject : AnyObject]!, error: NSError!)
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didEncounterError error: NSError!)
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
  var downloadsDirectory: NSURL!
  var documentName: String!
  var displaysPostProcessApplicationControl: Bool
  var postProcessApplication: NSURL!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol IKSlideshowDataSource {
  func numberOfSlideshowItems() -> Int
  func slideshowItemAtIndex(index: Int) -> AnyObject!
  optional func nameOfSlideshowItemAtIndex(index: Int) -> String!
  optional func canExportSlideshowItemAtIndex(index: Int, toApplication applicationBundleIdentifier: String!) -> Bool
  optional func slideshowWillStart()
  optional func slideshowDidStop()
  optional func slideshowDidChangeCurrentIndex(newIndex: Int)
}
class IKSlideshow : NSObject {
  var autoPlayDelay: NSTimeInterval
  class func sharedSlideshow() -> IKSlideshow!
  func runSlideshowWithDataSource(dataSource: IKSlideshowDataSource!, inMode slideshowMode: String!, options slideshowOptions: [NSObject : AnyObject]!)
  func stopSlideshow(sender: AnyObject!)
  func reloadData()
  func reloadSlideshowItemAtIndex(index: Int)
  func indexOfCurrentSlideshowItem() -> Int
  class func canExportToApplication(applicationBundleIdentifier: String!) -> Bool
  class func exportSlideshowItem(item: AnyObject!, toApplication applicationBundleIdentifier: String!)
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
class PDFAction : NSObject, NSCopying {
  func type() -> String!
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class PDFActionGoTo : PDFAction, NSCopying {
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
class PDFActionNamed : PDFAction, NSCopying {
  init!(name: PDFActionNamedName)
  func name() -> PDFActionNamedName
  func setName(name: PDFActionNamedName)
  init()
}
class PDFActionRemoteGoTo : PDFAction, NSCopying {
  init!(pageIndex: Int, atPoint point: NSPoint, fileURL url: NSURL!)
  func pageIndex() -> Int
  func setPageIndex(pageIndex: Int)
  func point() -> NSPoint
  func setPoint(point: NSPoint)
  func URL() -> NSURL!
  func setURL(url: NSURL!)
  init()
}
class PDFActionResetForm : PDFAction, NSCopying {
  init!()
  func fields() -> [AnyObject]!
  func setFields(fields: [AnyObject]!)
  func fieldsIncludedAreCleared() -> Bool
  func setFieldsIncludedAreCleared(include: Bool)
}
class PDFActionURL : PDFAction, NSCopying {
  init!(URL url: NSURL!)
  func URL() -> NSURL!
  func setURL(url: NSURL!)
  init()
}
class PDFAnnotation : NSObject, NSCopying, NSCoding {
  init!(bounds: NSRect)
  func page() -> PDFPage!
  func type() -> String!
  func bounds() -> NSRect
  func setBounds(bounds: NSRect)
  func modificationDate() -> NSDate!
  func setModificationDate(date: NSDate!)
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
  func setMouseUpAction(action: PDFAction!)
  func contents() -> String!
  func setContents(contents: String!)
  func toolTip() -> String!
  func hasAppearanceStream() -> Bool
  func removeAllAppearanceStreams()
  func drawWithBox(box: PDFDisplayBox)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias PDFWidgetControlType = Int
var kPDFWidgetUnknownControl: Int { get }
var kPDFWidgetPushButtonControl: Int { get }
var kPDFWidgetRadioButtonControl: Int { get }
var kPDFWidgetCheckBoxControl: Int { get }
class PDFAnnotationButtonWidget : PDFAnnotation, NSCopying {
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
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationChoiceWidget : PDFAnnotation, NSCopying {
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
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationCircle : PDFAnnotation, NSCopying {
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationFreeText : PDFAnnotation, NSCopying, NSCoding {
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func alignment() -> NSTextAlignment
  func setAlignment(alignment: NSTextAlignment)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationInk : PDFAnnotation, NSCopying, NSCoding {
  func paths() -> [AnyObject]!
  func addBezierPath(path: NSBezierPath!)
  func removeBezierPath(path: NSBezierPath!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
typealias PDFLineStyle = Int
var kPDFLineStyleNone: Int { get }
var kPDFLineStyleSquare: Int { get }
var kPDFLineStyleCircle: Int { get }
var kPDFLineStyleDiamond: Int { get }
var kPDFLineStyleOpenArrow: Int { get }
var kPDFLineStyleClosedArrow: Int { get }
class PDFAnnotationLine : PDFAnnotation, NSCopying, NSCoding {
  func startPoint() -> NSPoint
  func setStartPoint(point: NSPoint)
  func endPoint() -> NSPoint
  func setEndPoint(point: NSPoint)
  func startLineStyle() -> PDFLineStyle
  func setStartLineStyle(style: PDFLineStyle)
  func endLineStyle() -> PDFLineStyle
  func setEndLineStyle(style: PDFLineStyle)
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationLink : PDFAnnotation, NSCopying {
  func destination() -> PDFDestination!
  func setDestination(destination: PDFDestination!)
  func URL() -> NSURL!
  func setURL(url: NSURL!)
  func setHighlighted(flag: Bool)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
typealias PDFMarkupType = Int
var kPDFMarkupTypeHighlight: Int { get }
var kPDFMarkupTypeStrikeOut: Int { get }
var kPDFMarkupTypeUnderline: Int { get }
class PDFAnnotationMarkup : PDFAnnotation, NSCopying, NSCoding {
  func quadrilateralPoints() -> [AnyObject]!
  func setQuadrilateralPoints(points: [AnyObject]!)
  func markupType() -> PDFMarkupType
  func setMarkupType(type: PDFMarkupType)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationPopup : PDFAnnotation, NSCopying, NSCoding {
  func isOpen() -> Bool
  func setIsOpen(isOpen: Bool)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationSquare : PDFAnnotation, NSCopying, NSCoding {
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationStamp : PDFAnnotation, NSCopying {
  func name() -> String!
  func setName(name: String!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
typealias PDFTextAnnotationIconType = Int
var kPDFTextAnnotationIconComment: Int { get }
var kPDFTextAnnotationIconKey: Int { get }
var kPDFTextAnnotationIconNote: Int { get }
var kPDFTextAnnotationIconHelp: Int { get }
var kPDFTextAnnotationIconNewParagraph: Int { get }
var kPDFTextAnnotationIconParagraph: Int { get }
var kPDFTextAnnotationIconInsert: Int { get }
class PDFAnnotationText : PDFAnnotation, NSCopying, NSCoding {
  func iconType() -> PDFTextAnnotationIconType
  func setIconType(type: PDFTextAnnotationIconType)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationTextWidget : PDFAnnotation, NSCopying {
  func stringValue() -> String!
  func setStringValue(value: String!)
  func attributedStringValue() -> NSAttributedString!
  func setAttributedStringValue(value: NSAttributedString!)
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
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
typealias PDFBorderStyle = Int
var kPDFBorderStyleSolid: Int { get }
var kPDFBorderStyleDashed: Int { get }
var kPDFBorderStyleBeveled: Int { get }
var kPDFBorderStyleInset: Int { get }
var kPDFBorderStyleUnderline: Int { get }
class PDFBorder : NSObject, NSCopying, NSCoding {
  func style() -> PDFBorderStyle
  func setStyle(style: PDFBorderStyle)
  func lineWidth() -> CGFloat
  func setLineWidth(width: CGFloat)
  func dashPattern() -> [AnyObject]!
  func setDashPattern(pattern: [AnyObject]!)
  func drawInRect(rect: NSRect)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
var kPDFDestinationUnspecifiedValue: Float { get }
class PDFDestination : NSObject, NSCopying {
  init!(page: PDFPage!, atPoint point: NSPoint)
  func page() -> PDFPage!
  func point() -> NSPoint
  func zoom() -> CGFloat
  func setZoom(zoom: CGFloat)
  func compare(destination: PDFDestination!) -> NSComparisonResult
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
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
class PDFDocument : NSObject, NSCopying {
  init!(URL url: NSURL!)
  init!(data: NSData!)
  func documentURL() -> NSURL!
  func documentRef() -> Unmanaged<CGPDFDocument>!
  func documentAttributes() -> [NSObject : AnyObject]!
  func setDocumentAttributes(attributes: [NSObject : AnyObject]!)
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
  func dataRepresentation() -> NSData!
  func dataRepresentationWithOptions(options: [NSObject : AnyObject]!) -> NSData!
  func writeToFile(path: String!) -> Bool
  func writeToFile(path: String!, withOptions options: [NSObject : AnyObject]!) -> Bool
  func writeToURL(url: NSURL!) -> Bool
  func writeToURL(url: NSURL!, withOptions options: [NSObject : AnyObject]!) -> Bool
  func outlineRoot() -> PDFOutline!
  func setOutlineRoot(outline: PDFOutline!)
  func outlineItemForSelection(selection: PDFSelection!) -> PDFOutline!
  func pageCount() -> Int
  func pageAtIndex(index: Int) -> PDFPage!
  func indexForPage(page: PDFPage!) -> Int
  func insertPage(page: PDFPage!, atIndex index: Int)
  func removePageAtIndex(index: Int)
  func exchangePageAtIndex(indexA: Int, withPageAtIndex indexB: Int)
  func pageClass() -> AnyClass!
  func findString(string: String!, withOptions options: Int) -> [AnyObject]!
  func beginFindString(string: String!, withOptions options: Int)
  func beginFindStrings(strings: [AnyObject]!, withOptions options: Int)
  func findString(string: String!, fromSelection selection: PDFSelection!, withOptions options: Int) -> PDFSelection!
  func isFinding() -> Bool
  func cancelFindString()
  func printOperationForPrintInfo(printInfo: NSPrintInfo!, scalingMode scaleMode: PDFPrintScalingMode, autoRotate doRotate: Bool) -> NSPrintOperation!
  func selectionForEntireDocument() -> PDFSelection!
  func selectionFromPage(startPage: PDFPage!, atPoint startPt: NSPoint, toPage endPage: PDFPage!, atPoint endPt: NSPoint) -> PDFSelection!
  func selectionFromPage(startPage: PDFPage!, atCharacterIndex startChar: Int, toPage endPage: PDFPage!, atCharacterIndex endChar: Int) -> PDFSelection!
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSObject {
  class func documentDidUnlock(notification: NSNotification!)
  func documentDidUnlock(notification: NSNotification!)
  class func documentDidBeginDocumentFind(notification: NSNotification!)
  func documentDidBeginDocumentFind(notification: NSNotification!)
  class func documentDidEndDocumentFind(notification: NSNotification!)
  func documentDidEndDocumentFind(notification: NSNotification!)
  class func documentDidBeginPageFind(notification: NSNotification!)
  func documentDidBeginPageFind(notification: NSNotification!)
  class func documentDidEndPageFind(notification: NSNotification!)
  func documentDidEndPageFind(notification: NSNotification!)
  class func documentDidFindMatch(notification: NSNotification!)
  func documentDidFindMatch(notification: NSNotification!)
}
extension NSObject {
  class func didMatchString(instance: PDFSelection!)
  func didMatchString(instance: PDFSelection!)
  class func classForPage() -> AnyClass!
  func classForPage() -> AnyClass!
  class func classForAnnotationClass(annotationClass: AnyClass!) -> AnyClass!
  func classForAnnotationClass(annotationClass: AnyClass!) -> AnyClass!
}
class PDFOutline : NSObject {
  init!()
  func document() -> PDFDocument!
  func parent() -> PDFOutline!
  func numberOfChildren() -> Int
  func index() -> Int
  func childAtIndex(index: Int) -> PDFOutline!
  func insertChild(child: PDFOutline!, atIndex index: Int)
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
class PDFPage : NSObject, NSCopying {
  init!(image: NSImage!)
  func document() -> PDFDocument!
  func pageRef() -> Unmanaged<CGPDFPage>!
  func label() -> String!
  func boundsForBox(box: PDFDisplayBox) -> NSRect
  func setBounds(bounds: NSRect, forBox box: PDFDisplayBox)
  func rotation() -> Int
  func setRotation(angle: Int)
  func annotations() -> [AnyObject]!
  func displaysAnnotations() -> Bool
  func setDisplaysAnnotations(display: Bool)
  func addAnnotation(annotation: PDFAnnotation!)
  func removeAnnotation(annotation: PDFAnnotation!)
  func annotationAtPoint(point: NSPoint) -> PDFAnnotation!
  func drawWithBox(box: PDFDisplayBox)
  func transformContextForBox(box: PDFDisplayBox)
  func numberOfCharacters() -> Int
  func string() -> String!
  func attributedString() -> NSAttributedString!
  func characterBoundsAtIndex(index: Int) -> NSRect
  func characterIndexAtPoint(point: NSPoint) -> Int
  func selectionForRect(rect: NSRect) -> PDFSelection!
  func selectionForWordAtPoint(point: NSPoint) -> PDFSelection!
  func selectionForLineAtPoint(point: NSPoint) -> PDFSelection!
  func selectionFromPoint(startPoint: NSPoint, toPoint endPoint: NSPoint) -> PDFSelection!
  func selectionForRange(range: NSRange) -> PDFSelection!
  func dataRepresentation() -> NSData!
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class PDFSelection : NSObject, NSCopying {
  init!(document: PDFDocument!)
  func pages() -> [AnyObject]!
  func color() -> NSColor!
  func setColor(color: NSColor!)
  func string() -> String!
  func attributedString() -> NSAttributedString!
  func boundsForPage(page: PDFPage!) -> NSRect
  func numberOfTextRangesOnPage(page: PDFPage!) -> Int
  func rangeAtIndex(index: Int, onPage page: PDFPage!) -> NSRange
  func selectionsByLine() -> [AnyObject]!
  func addSelection(selection: PDFSelection!)
  func addSelections(selections: [AnyObject]!)
  func extendSelectionAtEnd(succeed: Int)
  func extendSelectionAtStart(precede: Int)
  func drawForPage(page: PDFPage!, active: Bool)
  func drawForPage(page: PDFPage!, withBox box: PDFDisplayBox, active: Bool)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class PDFThumbnailView : NSView, NSCoding {
  func setPDFView(view: PDFView!)
  func PDFView() -> PDFView!
  func setThumbnailSize(size: NSSize)
  func thumbnailSize() -> NSSize
  func setMaximumNumberOfColumns(maxColumns: Int)
  func maximumNumberOfColumns() -> Int
  func setLabelFont(font: NSFont!)
  func labelFont() -> NSFont!
  func setBackgroundColor(color: NSColor!)
  func backgroundColor() -> NSColor!
  func setAllowsDragging(allow: Bool)
  func allowsDragging() -> Bool
  func setAllowsMultipleSelection(flag: Bool)
  func allowsMultipleSelection() -> Bool
  func selectedPages() -> [AnyObject]!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
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
  func goToPage(page: PDFPage!)
  func currentDestination() -> PDFDestination!
  func goToDestination(destination: PDFDestination!)
  func goToSelection(selection: PDFSelection!)
  func goToRect(rect: NSRect, onPage page: PDFPage!)
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
  func areaOfInterestForPoint(cursorLocation: NSPoint) -> PDFAreaOfInterest
  func setCursorForAreaOfInterest(area: PDFAreaOfInterest)
  func performAction(action: PDFAction!)
  func currentSelection() -> PDFSelection!
  func setCurrentSelection(selection: PDFSelection!)
  func setCurrentSelection(selection: PDFSelection!, animate: Bool)
  func clearSelection()
  @IBAction func selectAll(sender: AnyObject!)
  func scrollSelectionToVisible(sender: AnyObject!)
  func setHighlightedSelections(selections: [AnyObject]!)
  func highlightedSelections() -> [AnyObject]!
  func takePasswordFrom(sender: AnyObject!)
  func drawPage(page: PDFPage!)
  func drawPagePost(page: PDFPage!)
  func copy(sender: AnyObject!)
  func printWithInfo(printInfo: NSPrintInfo!, autoRotate doRotate: Bool)
  func printWithInfo(printInfo: NSPrintInfo!, autoRotate doRotate: Bool, pageScaling scale: PDFPrintScalingMode)
  func pageForPoint(point: NSPoint, nearest: Bool) -> PDFPage!
  func convertPoint(point: NSPoint, toPage page: PDFPage!) -> NSPoint
  func convertRect(rect: NSRect, toPage page: PDFPage!) -> NSRect
  func convertPoint(point: NSPoint, fromPage page: PDFPage!) -> NSPoint
  func convertRect(rect: NSRect, fromPage page: PDFPage!) -> NSRect
  func documentView() -> NSView!
  func layoutDocumentView()
  func annotationsChangedOnPage(page: PDFPage!)
  func rowSizeForPage(page: PDFPage!) -> NSSize
  func setAllowsDragging(allow: Bool)
  func allowsDragging() -> Bool
  func visiblePages() -> [AnyObject]!
  func setEnableDataDetectors(enable: Bool)
  func enableDataDetectors() -> Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func animationShouldStart(animation: NSAnimation) -> Bool
  func animationDidStop(animation: NSAnimation)
  func animationDidEnd(animation: NSAnimation)
  func animation(animation: NSAnimation, valueForProgress progress: NSAnimationProgress) -> Float
  func animation(animation: NSAnimation, didReachProgressMark progress: NSAnimationProgress)
  func menuNeedsUpdate(menu: NSMenu)
  func numberOfItemsInMenu(menu: NSMenu) -> Int
  func menu(menu: NSMenu, updateItem item: NSMenuItem, atIndex index: Int, shouldCancel: Bool) -> Bool
  func menuHasKeyEquivalent(menu: NSMenu, forEvent event: NSEvent, target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action: UnsafeMutablePointer<Selector>) -> Bool
  func menuWillOpen(menu: NSMenu)
  func menuDidClose(menu: NSMenu)
  func menu(menu: NSMenu, willHighlightItem item: NSMenuItem?)
  func confinementRectForMenu(menu: NSMenu, onScreen screen: NSScreen?) -> NSRect
}
extension NSObject {
  class func PDFViewWillChangeScaleFactor(sender: PDFView!, toScale scale: CGFloat) -> CGFloat
  func PDFViewWillChangeScaleFactor(sender: PDFView!, toScale scale: CGFloat) -> CGFloat
  class func PDFViewWillClickOnLink(sender: PDFView!, withURL url: NSURL!)
  func PDFViewWillClickOnLink(sender: PDFView!, withURL url: NSURL!)
  class func PDFViewPrintJobTitle(sender: PDFView!) -> String!
  func PDFViewPrintJobTitle(sender: PDFView!) -> String!
  class func PDFViewPerformFind(sender: PDFView!)
  func PDFViewPerformFind(sender: PDFView!)
  class func PDFViewPerformGoToPage(sender: PDFView!)
  func PDFViewPerformGoToPage(sender: PDFView!)
  class func PDFViewPerformPrint(sender: PDFView!)
  func PDFViewPerformPrint(sender: PDFView!)
  class func PDFViewOpenPDF(sender: PDFView!, forRemoteGoToAction action: PDFActionRemoteGoTo!)
  func PDFViewOpenPDF(sender: PDFView!, forRemoteGoToAction action: PDFActionRemoteGoTo!)
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
class QCComposition : NSObject, NSCopying {
   init!(file path: String!)
   init!(data: NSData!)
  func protocols() -> [AnyObject]!
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class QCCompositionLayer : CAOpenGLLayer, QCCompositionRenderer {
  init!(file path: String!)
  init!(composition: QCComposition!)
  func composition() -> QCComposition!
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> NSMutableDictionary!
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
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSObject {
  class func compositionParameterView(parameterView: QCCompositionParameterView!, shouldDisplayParameterWithKey portKey: String!, attributes portAttributes: [NSObject : AnyObject]!) -> Bool
  func compositionParameterView(parameterView: QCCompositionParameterView!, shouldDisplayParameterWithKey portKey: String!, attributes portAttributes: [NSObject : AnyObject]!) -> Bool
  class func compositionParameterView(parameterView: QCCompositionParameterView!, didChangeParameterWithKey portKey: String!)
  func compositionParameterView(parameterView: QCCompositionParameterView!, didChangeParameterWithKey portKey: String!)
}
let QCCompositionPickerPanelDidSelectCompositionNotification: String
class QCCompositionPickerPanel : NSPanel {
  class func sharedCompositionPickerPanel() -> QCCompositionPickerPanel!
  func compositionPickerView() -> QCCompositionPickerView!
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let QCCompositionPickerViewDidSelectCompositionNotification: String
class QCCompositionPickerView : NSView {
  func setCompositionsFromRepositoryWithProtocol(protocol: String!, andAttributes attributes: [NSObject : AnyObject]!)
  func compositions() -> [AnyObject]!
  func setDelegate(delegate: AnyObject!)
  func delegate() -> AnyObject!
  func setShowsCompositionNames(flag: Bool)
  func showsCompositionNames() -> Bool
  func setAllowsEmptySelection(flag: Bool)
  func allowsEmptySelection() -> Bool
  func setCompositionAspectRatio(ratio: NSSize)
  func compositionAspectRatio() -> NSSize
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
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSObject {
  class func compositionPickerView(pickerView: QCCompositionPickerView!, didSelectComposition composition: QCComposition!)
  func compositionPickerView(pickerView: QCCompositionPickerView!, didSelectComposition composition: QCComposition!)
  class func compositionPickerViewDidStartAnimating(pickerView: QCCompositionPickerView!)
  func compositionPickerViewDidStartAnimating(pickerView: QCCompositionPickerView!)
  class func compositionPickerViewWillStopAnimating(pickerView: QCCompositionPickerView!)
  func compositionPickerViewWillStopAnimating(pickerView: QCCompositionPickerView!)
}
let QCCompositionRepositoryDidUpdateNotification: String
extension QCComposition {
  func identifier() -> String!
}
class QCCompositionRepository : NSObject {
  class func sharedCompositionRepository() -> QCCompositionRepository!
  func compositionWithIdentifier(identifier: String!) -> QCComposition!
  func compositionsWithProtocols(protocols: [AnyObject]!, andAttributes attributes: [NSObject : AnyObject]!) -> [AnyObject]!
  func allCompositions() -> [AnyObject]!
  init()
}
class QCPatchController : NSController {
  init()
  init?(coder: NSCoder)
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
  func compositionURL() -> NSURL!
  func userInfo() -> NSMutableDictionary!
  func colorSpace() -> Unmanaged<CGColorSpace>!
  func bounds() -> NSRect
  func CGLContextObj() -> CGLContextObj
  func outputImageProviderFromBufferWithPixelFormat(format: String!, pixelsWide width: Int, pixelsHigh height: Int, baseAddress: UnsafePointer<Void>, bytesPerRow rowBytes: Int, releaseCallback callback: QCPlugInBufferReleaseCallback!, releaseContext context: UnsafeMutablePointer<Void>, colorSpace: CGColorSpace!, shouldColorMatch colorMatch: Bool) -> AnyObject!
  func outputImageProviderFromTextureWithPixelFormat(format: String!, pixelsWide width: Int, pixelsHigh height: Int, name: GLuint, flipped: Bool, releaseCallback callback: QCPlugInTextureReleaseCallback!, releaseContext context: UnsafeMutablePointer<Void>, colorSpace: CGColorSpace!, shouldColorMatch colorMatch: Bool) -> AnyObject!
}
protocol QCPlugInInputImageSource {
  func imageBounds() -> NSRect
  func imageColorSpace() -> Unmanaged<CGColorSpace>!
  func shouldColorMatch() -> Bool
  func lockBufferRepresentationWithPixelFormat(format: String!, colorSpace: CGColorSpace!, forBounds bounds: NSRect) -> Bool
  func bufferPixelsWide() -> Int
  func bufferPixelsHigh() -> Int
  func bufferPixelFormat() -> String!
  func bufferColorSpace() -> Unmanaged<CGColorSpace>!
  func bufferBaseAddress() -> UnsafePointer<Void>
  func bufferBytesPerRow() -> Int
  func unlockBufferRepresentation()
  func lockTextureRepresentationWithColorSpace(colorSpace: CGColorSpace!, forBounds bounds: NSRect) -> Bool
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
  func imageBounds() -> NSRect
  func imageColorSpace() -> Unmanaged<CGColorSpace>!
  optional func shouldColorMatch() -> Bool
  optional func supportedBufferPixelFormats() -> [AnyObject]!
  optional func renderToBuffer(baseAddress: UnsafeMutablePointer<Void>, withBytesPerRow rowBytes: Int, pixelFormat format: String!, forBounds bounds: NSRect) -> Bool
  optional func supportedRenderedTexturePixelFormats() -> [AnyObject]!
  optional func copyRenderedTextureForCGLContext(cgl_ctx: CGLContextObj, pixelFormat format: String!, bounds: NSRect, isFlipped flipped: UnsafeMutablePointer<ObjCBool>) -> GLuint
  optional func releaseRenderedTexture(name: GLuint, forCGLContext cgl_ctx: CGLContextObj)
  optional func canRenderWithCGLContext(cgl_ctx: CGLContextObj) -> Bool
  optional func renderWithCGLContext(cgl_ctx: CGLContextObj, forBounds bounds: NSRect) -> Bool
}
class QCPlugIn : NSObject {
  class func attributes() -> [NSObject : AnyObject]!
  class func attributesForPropertyPortWithKey(key: String!) -> [NSObject : AnyObject]!
  class func sortedPropertyPortKeys() -> [AnyObject]!
  class func executionMode() -> QCPlugInExecutionMode
  class func timeMode() -> QCPlugInTimeMode
  class func plugInKeys() -> [AnyObject]!
  func startExecution(context: QCPlugInContext!) -> Bool
  func enableExecution(context: QCPlugInContext!)
  func executionTimeForContext(context: QCPlugInContext!, atTime time: NSTimeInterval, withArguments arguments: [NSObject : AnyObject]!) -> NSTimeInterval
  func execute(context: QCPlugInContext!, atTime time: NSTimeInterval, withArguments arguments: [NSObject : AnyObject]!) -> Bool
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
  func addInputPortWithType(type: String!, forKey key: String!, withAttributes attributes: [NSObject : AnyObject]!)
  func removeInputPortForKey(key: String!)
  func addOutputPortWithType(type: String!, forKey key: String!, withAttributes attributes: [NSObject : AnyObject]!)
  func removeOutputPortForKey(key: String!)
}
extension QCPlugIn {
  class func loadPlugInAtPath(path: String!) -> Bool
  class func registerPlugInClass(aClass: AnyClass!)
}
class QCPlugInViewController : NSViewController {
  init!(plugIn: QCPlugIn!, viewNibName name: String!)
  func plugIn() -> QCPlugIn!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension QCPlugIn {
  func createViewController() -> QCPlugInViewController!
}
let QCRendererEventKey: String
let QCRendererMouseLocationKey: String
protocol QCCompositionRenderer {
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> NSMutableDictionary!
}
class QCRenderer : NSObject, QCCompositionRenderer {
  init!(composition: QCComposition!, colorSpace: CGColorSpace!)
  init!(CGLContext context: CGLContextObj, pixelFormat format: CGLPixelFormatObj, colorSpace: CGColorSpace!, composition: QCComposition!)
  init!(offScreenWithSize size: NSSize, colorSpace: CGColorSpace!, composition: QCComposition!)
  init!(openGLContext context: NSOpenGLContext!, pixelFormat format: NSOpenGLPixelFormat!, file path: String!)
  func renderAtTime(time: NSTimeInterval, arguments: [NSObject : AnyObject]!) -> Bool
  func renderingTimeForTime(time: NSTimeInterval, arguments: [NSObject : AnyObject]!) -> NSTimeInterval
  func composition() -> QCComposition!
  func snapshotImage() -> NSImage!
  func createSnapshotImageOfType(type: String!) -> AnyObject!
  init()
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> NSMutableDictionary!
}
let QCViewDidStartRenderingNotification: String
let QCViewDidStopRenderingNotification: String
class QCView : NSView, QCCompositionRenderer {
  func loadCompositionFromFile(path: String!) -> Bool
  func loadComposition(composition: QCComposition!) -> Bool
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
  func renderAtTime(time: NSTimeInterval, arguments: [NSObject : AnyObject]!) -> Bool
  func pauseRendering()
  func isPausedRendering() -> Bool
  func resumeRendering()
  func stopRendering()
  func isRendering() -> Bool
  func snapshotImage() -> NSImage!
  func createSnapshotImageOfType(type: String!) -> AnyObject!
  func openGLContext() -> NSOpenGLContext!
  func openGLPixelFormat() -> NSOpenGLPixelFormat!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> NSMutableDictionary!
}
extension QCView {
  @IBAction func start(sender: AnyObject!)
  @IBAction func stop(sender: AnyObject!)
  @IBAction func play(sender: AnyObject!)
}
class QuartzFilter : NSObject {
   init!(URL aURL: NSURL!)
   init!(properties: [NSObject : AnyObject]!)
   init!(outputIntents: [AnyObject]!)
  func properties() -> [NSObject : AnyObject]!
  func url() -> NSURL!
  func localizedName() -> String!
  func applyToContext(aContext: CGContext!) -> Bool
  func removeFromContext(aContext: CGContext!)
  init()
}
var globalUpdateOK: DarwinBoolean
class QuartzFilterView : NSView {
  func sizeToFit()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class QuartzFilterManager : NSObject {
  class func filtersInDomains(domains: [AnyObject]!) -> [AnyObject]!
  func filterPanel() -> NSPanel!
  func filterView() -> QuartzFilterView!
  func selectedFilter() -> QuartzFilter!
  func selectFilter(filter: QuartzFilter!) -> Bool
  func setDelegate(aDelegate: AnyObject!)
  func delegate() -> AnyObject!
  func importFilter(filterProperties: [NSObject : AnyObject]!) -> QuartzFilter!
  init()
}
extension NSObject {
  class func quartzFilterManager(sender: QuartzFilterManager!, didAddFilter filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didAddFilter filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didRemoveFilter filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didRemoveFilter filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didModifyFilter filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didModifyFilter filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didSelectFilter filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didSelectFilter filter: QuartzFilter!)
}
let kQuartzFilterApplicationDomain: String
let kQuartzFilterPDFWorkflowDomain: String
let kQuartzFilterPrintingDomain: String
let kQuartzFilterManagerDidAddFilterNotification: String
let kQuartzFilterManagerDidRemoveFilterNotification: String
let kQuartzFilterManagerDidModifyFilterNotification: String
let kQuartzFilterManagerDidSelectFilterNotification: String
protocol QLPreviewItem : NSObjectProtocol {
  var previewItemURL: NSURL! { get }
  optional var previewItemTitle: String! { get }
  optional var previewItemDisplayState: AnyObject! { get }
}
extension NSURL : QLPreviewItem {
  var previewItemURL: NSURL! { get }
  var previewItemTitle: String! { get }
  var previewItemDisplayState: AnyObject! { get }
}
class QLPreviewPanel : NSPanel {
  class func sharedPreviewPanel() -> QLPreviewPanel!
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
  func enterFullScreenMode(screen: NSScreen!, withOptions options: [NSObject : AnyObject]!) -> Bool
  func exitFullScreenModeWithOptions(options: [NSObject : AnyObject]!)
  var inFullScreenMode: Bool { get }
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func acceptsPreviewPanelControl(panel: QLPreviewPanel!) -> Bool
  func acceptsPreviewPanelControl(panel: QLPreviewPanel!) -> Bool
  class func beginPreviewPanelControl(panel: QLPreviewPanel!)
  func beginPreviewPanelControl(panel: QLPreviewPanel!)
  class func endPreviewPanelControl(panel: QLPreviewPanel!)
  func endPreviewPanelControl(panel: QLPreviewPanel!)
}
protocol QLPreviewPanelDataSource {
  func numberOfPreviewItemsInPreviewPanel(panel: QLPreviewPanel!) -> Int
  func previewPanel(panel: QLPreviewPanel!, previewItemAtIndex index: Int) -> QLPreviewItem!
}
protocol QLPreviewPanelDelegate : NSWindowDelegate {
  optional func previewPanel(panel: QLPreviewPanel!, handleEvent event: NSEvent!) -> Bool
  optional func previewPanel(panel: QLPreviewPanel!, sourceFrameOnScreenForPreviewItem item: QLPreviewItem!) -> NSRect
  optional func previewPanel(panel: QLPreviewPanel!, transitionImageForPreviewItem item: QLPreviewItem!, contentRect: UnsafeMutablePointer<NSRect>) -> AnyObject!
}
enum QLPreviewViewStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Normal
  case Compact
}
class QLPreviewView : NSView {
  init!(frame: NSRect, style: QLPreviewViewStyle)
  init!(frame: NSRect)
  var previewItem: QLPreviewItem!
  func refreshPreviewItem()
  var displayState: AnyObject!
  func close()
  var shouldCloseWithWindow: Bool
  var autostarts: Bool
  init?(coder: NSCoder)
  convenience init()
}
