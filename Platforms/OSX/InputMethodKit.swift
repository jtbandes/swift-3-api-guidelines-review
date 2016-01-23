
var kIMKSingleColumnScrollingCandidatePanel: Int { get }
var kIMKScrollingGridCandidatePanel: Int { get }
var kIMKSingleRowSteppingCandidatePanel: Int { get }
typealias IMKCandidatePanelType = Int
var kIMKMain: Int { get }
var kIMKAnnotation: Int { get }
var kIMKSubList: Int { get }
typealias IMKStyleType = Int
var kIMKLocateCandidatesAboveHint: Int { get }
var kIMKLocateCandidatesBelowHint: Int { get }
var kIMKLocateCandidatesLeftHint: Int { get }
var kIMKLocateCandidatesRightHint: Int { get }
typealias IMKCandidatesLocationHint = Int
let IMKCandidatesOpacityAttributeName: String
let IMKCandidatesSendServerKeyEventFirst: String
class IMKCandidates : NSResponder {
  init!(server: IMKServer!, panelType: IMKCandidatePanelType)
  init!(server: IMKServer!, panelType: IMKCandidatePanelType, styleType style: IMKStyleType)
  func panelType() -> IMKCandidatePanelType
  func setPanelType(panelType: IMKCandidatePanelType)
  func show(locationHint: IMKCandidatesLocationHint)
  func hide()
  func isVisible() -> Bool
  func updateCandidates()
  func showAnnotation(annotationString: AttributedString!)
  func showSublist(candidates: [AnyObject]!, subListDelegate delegate: AnyObject!)
  func selectedCandidateString() -> AttributedString!
  func setCandidateFrameTopLeft(point: Point)
  func candidateFrame() -> Rect
  func setSelectionKeys(keyCodes: [AnyObject]!)
  func selectionKeys() -> [AnyObject]!
  func setSelectionKeysKeylayout(layout: TISInputSource!)
  func selectionKeysKeylayout() -> Unmanaged<TISInputSource>!
  func setAttributes(attributes: [Object : AnyObject]!)
  func attributes() -> [Object : AnyObject]!
  func setDismissesAutomatically(flag: Bool)
  func dismissesAutomatically() -> Bool
  func selectedCandidate() -> Int
  func showChild()
  func hideChild()
  func attachChild(child: IMKCandidates!, toCandidate candidateIdentifier: Int, type theType: IMKStyleType)
  func detachChild(candidateIdentifier: Int)
  func setCandidateData(candidatesArray: [AnyObject]!)
  func selectCandidateWithIdentifier(candidateIdentifier: Int) -> Bool
  func selectCandidate(candidateIdentifier: Int)
  func show()
  func candidateStringIdentifier(candidateString: AnyObject!) -> Int
  func candidateIdentifierAtLineNumber(lineNumber: Int) -> Int
  func lineNumberForCandidateWithIdentifier(candidateIdentifier: Int) -> Int
  func clearSelection()
  init()
  init?(coder: Coder)
}
let kIMKCommandMenuItemName: String
let kIMKCommandClientName: String
extension Object {
  class func inputText(string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  func inputText(string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  class func inputText(string: String!, client sender: AnyObject!) -> Bool
  func inputText(string: String!, client sender: AnyObject!) -> Bool
  class func handle(event: NSEvent!, client sender: AnyObject!) -> Bool
  func handle(event: NSEvent!, client sender: AnyObject!) -> Bool
  class func didCommandBy(aSelector: Selector, client sender: AnyObject!) -> Bool
  func didCommandBy(aSelector: Selector, client sender: AnyObject!) -> Bool
  class func composedString(sender: AnyObject!) -> AnyObject!
  func composedString(sender: AnyObject!) -> AnyObject!
  class func originalString(sender: AnyObject!) -> AttributedString!
  func originalString(sender: AnyObject!) -> AttributedString!
  class func commitComposition(sender: AnyObject!)
  func commitComposition(sender: AnyObject!)
  class func candidates(sender: AnyObject!) -> [AnyObject]!
  func candidates(sender: AnyObject!) -> [AnyObject]!
}
protocol IMKStateSetting {
  func activateServer(sender: AnyObject!)
  func deactivateServer(sender: AnyObject!)
  func valueForTag(tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  func modes(sender: AnyObject!) -> [Object : AnyObject]!
  func recognizedEvents(sender: AnyObject!) -> Int
  func showPreferences(sender: AnyObject!)
}
protocol IMKMouseHandling {
  func mouseDownOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUpOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMovedOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
class IMKInputController : Object, IMKStateSetting, IMKMouseHandling {
  init!(server: IMKServer!, delegate: AnyObject!, client inputClient: AnyObject!)
  func updateComposition()
  func cancelComposition()
  func compositionAttributesAt(range: NSRange) -> MutableDictionary!
  func selectionRange() -> NSRange
  func replacementRange() -> NSRange
  func markForStyle(style: Int, at range: NSRange) -> [Object : AnyObject]!
  func doCommandBy(aSelector: Selector, command infoDictionary: [Object : AnyObject]!)
  func hidePalettes()
  func menu() -> NSMenu!
  func delegate() -> AnyObject!
  func setDelegate(newDelegate: AnyObject!)
  func server() -> IMKServer!
  func client() -> protocol<IMKTextInput, ObjectProtocol>!
  func inputControllerWillClose()
  func annotationSelected(annotationString: AttributedString!, forCandidate candidateString: AttributedString!)
  func candidateSelectionChanged(candidateString: AttributedString!)
  func candidateSelected(candidateString: AttributedString!)
  init()
  func activateServer(sender: AnyObject!)
  func deactivateServer(sender: AnyObject!)
  func valueForTag(tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  func modes(sender: AnyObject!) -> [Object : AnyObject]!
  func recognizedEvents(sender: AnyObject!) -> Int
  func showPreferences(sender: AnyObject!)
  func mouseDownOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUpOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMovedOnCharacterIndex(index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
let IMKModeDictionary: String
let IMKControllerClass: String
let IMKDelegateClass: String
class IMKServer : Object {
  init!(name: String!, bundleIdentifier: String!)
  init!(name: String!, controllerClass controllerClassID: AnyClass!, delegateClass delegateClassID: AnyClass!)
  func bundle() -> Bundle!
  func paletteWillTerminate() -> Bool
  func lastKeyEventWasDeadKey() -> Bool
  init()
}
