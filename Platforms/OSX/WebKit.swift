
class DOMAbstractView : DOMObject {
  var document: DOMDocument! { get }
}
class DOMAttr : DOMNode {
  var name: String! { get }
  var specified: Bool { get }
  var value: String!
  var ownerElement: DOMElement! { get }
  var style: DOMCSSStyleDeclaration! { get }
}
class DOMBlob : DOMObject {
  var size: UInt64 { get }
}
class DOMCDATASection : DOMText {
}
extension DOMCSSStyleDeclaration {
  func azimuth() -> String!
  func setAzimuth(azimuth: String!)
  func background() -> String!
  func setBackground(background: String!)
  func backgroundAttachment() -> String!
  func setBackgroundAttachment(backgroundAttachment: String!)
  func backgroundColor() -> String!
  func setBackgroundColor(backgroundColor: String!)
  func backgroundImage() -> String!
  func setBackgroundImage(backgroundImage: String!)
  func backgroundPosition() -> String!
  func setBackgroundPosition(backgroundPosition: String!)
  func backgroundRepeat() -> String!
  func setBackgroundRepeat(backgroundRepeat: String!)
  func border() -> String!
  func setBorder(border: String!)
  func borderCollapse() -> String!
  func setBorderCollapse(borderCollapse: String!)
  func borderColor() -> String!
  func setBorderColor(borderColor: String!)
  func borderSpacing() -> String!
  func setBorderSpacing(borderSpacing: String!)
  func borderStyle() -> String!
  func setBorderStyle(borderStyle: String!)
  func borderTop() -> String!
  func setBorderTop(borderTop: String!)
  func borderRight() -> String!
  func setBorderRight(borderRight: String!)
  func borderBottom() -> String!
  func setBorderBottom(borderBottom: String!)
  func borderLeft() -> String!
  func setBorderLeft(borderLeft: String!)
  func borderTopColor() -> String!
  func setBorderTopColor(borderTopColor: String!)
  func borderRightColor() -> String!
  func setBorderRightColor(borderRightColor: String!)
  func borderBottomColor() -> String!
  func setBorderBottomColor(borderBottomColor: String!)
  func borderLeftColor() -> String!
  func setBorderLeftColor(borderLeftColor: String!)
  func borderTopStyle() -> String!
  func setBorderTopStyle(borderTopStyle: String!)
  func borderRightStyle() -> String!
  func setBorderRightStyle(borderRightStyle: String!)
  func borderBottomStyle() -> String!
  func setBorderBottomStyle(borderBottomStyle: String!)
  func borderLeftStyle() -> String!
  func setBorderLeftStyle(borderLeftStyle: String!)
  func borderTopWidth() -> String!
  func setBorderTopWidth(borderTopWidth: String!)
  func borderRightWidth() -> String!
  func setBorderRightWidth(borderRightWidth: String!)
  func borderBottomWidth() -> String!
  func setBorderBottomWidth(borderBottomWidth: String!)
  func borderLeftWidth() -> String!
  func setBorderLeftWidth(borderLeftWidth: String!)
  func borderWidth() -> String!
  func setBorderWidth(borderWidth: String!)
  func bottom() -> String!
  func setBottom(bottom: String!)
  func captionSide() -> String!
  func setCaptionSide(captionSide: String!)
  func clear() -> String!
  func setClear(clear: String!)
  func clip() -> String!
  func setClip(clip: String!)
  func color() -> String!
  func setColor(color: String!)
  func content() -> String!
  func setContent(content: String!)
  func counterIncrement() -> String!
  func setCounterIncrement(counterIncrement: String!)
  func counterReset() -> String!
  func setCounterReset(counterReset: String!)
  func cue() -> String!
  func setCue(cue: String!)
  func cueAfter() -> String!
  func setCueAfter(cueAfter: String!)
  func cueBefore() -> String!
  func setCueBefore(cueBefore: String!)
  func cursor() -> String!
  func setCursor(cursor: String!)
  func direction() -> String!
  func setDirection(direction: String!)
  func display() -> String!
  func setDisplay(display: String!)
  func elevation() -> String!
  func setElevation(elevation: String!)
  func emptyCells() -> String!
  func setEmptyCells(emptyCells: String!)
  func cssFloat() -> String!
  func setCssFloat(cssFloat: String!)
  func font() -> String!
  func setFont(font: String!)
  func fontFamily() -> String!
  func setFontFamily(fontFamily: String!)
  func fontSize() -> String!
  func setFontSize(fontSize: String!)
  func fontSizeAdjust() -> String!
  func setFontSizeAdjust(fontSizeAdjust: String!)
  func fontStretch() -> String!
  func setFontStretch(fontStretch: String!)
  func fontStyle() -> String!
  func setFontStyle(fontStyle: String!)
  func fontVariant() -> String!
  func setFontVariant(fontVariant: String!)
  func fontWeight() -> String!
  func setFontWeight(fontWeight: String!)
  func height() -> String!
  func setHeight(height: String!)
  func left() -> String!
  func setLeft(left: String!)
  func letterSpacing() -> String!
  func setLetterSpacing(letterSpacing: String!)
  func lineHeight() -> String!
  func setLineHeight(lineHeight: String!)
  func listStyle() -> String!
  func setListStyle(listStyle: String!)
  func listStyleImage() -> String!
  func setListStyleImage(listStyleImage: String!)
  func listStylePosition() -> String!
  func setListStylePosition(listStylePosition: String!)
  func listStyleType() -> String!
  func setListStyleType(listStyleType: String!)
  func margin() -> String!
  func setMargin(margin: String!)
  func marginTop() -> String!
  func setMarginTop(marginTop: String!)
  func marginRight() -> String!
  func setMarginRight(marginRight: String!)
  func marginBottom() -> String!
  func setMarginBottom(marginBottom: String!)
  func marginLeft() -> String!
  func setMarginLeft(marginLeft: String!)
  func markerOffset() -> String!
  func setMarkerOffset(markerOffset: String!)
  func marks() -> String!
  func setMarks(marks: String!)
  func maxHeight() -> String!
  func setMaxHeight(maxHeight: String!)
  func maxWidth() -> String!
  func setMaxWidth(maxWidth: String!)
  func minHeight() -> String!
  func setMinHeight(minHeight: String!)
  func minWidth() -> String!
  func setMinWidth(minWidth: String!)
  func orphans() -> String!
  func setOrphans(orphans: String!)
  func outline() -> String!
  func setOutline(outline: String!)
  func outlineColor() -> String!
  func setOutlineColor(outlineColor: String!)
  func outlineStyle() -> String!
  func setOutlineStyle(outlineStyle: String!)
  func outlineWidth() -> String!
  func setOutlineWidth(outlineWidth: String!)
  func overflow() -> String!
  func setOverflow(overflow: String!)
  func padding() -> String!
  func setPadding(padding: String!)
  func paddingTop() -> String!
  func setPaddingTop(paddingTop: String!)
  func paddingRight() -> String!
  func setPaddingRight(paddingRight: String!)
  func paddingBottom() -> String!
  func setPaddingBottom(paddingBottom: String!)
  func paddingLeft() -> String!
  func setPaddingLeft(paddingLeft: String!)
  func page() -> String!
  func setPage(page: String!)
  func pageBreakAfter() -> String!
  func setPageBreakAfter(pageBreakAfter: String!)
  func pageBreakBefore() -> String!
  func setPageBreakBefore(pageBreakBefore: String!)
  func pageBreakInside() -> String!
  func setPageBreakInside(pageBreakInside: String!)
  func pause() -> String!
  func setPause(pause: String!)
  func pauseAfter() -> String!
  func setPauseAfter(pauseAfter: String!)
  func pauseBefore() -> String!
  func setPauseBefore(pauseBefore: String!)
  func pitch() -> String!
  func setPitch(pitch: String!)
  func pitchRange() -> String!
  func setPitchRange(pitchRange: String!)
  func playDuring() -> String!
  func setPlayDuring(playDuring: String!)
  func position() -> String!
  func setPosition(position: String!)
  func quotes() -> String!
  func setQuotes(quotes: String!)
  func richness() -> String!
  func setRichness(richness: String!)
  func right() -> String!
  func setRight(right: String!)
  func size() -> String!
  func setSize(size: String!)
  func speak() -> String!
  func setSpeak(speak: String!)
  func speakHeader() -> String!
  func setSpeakHeader(speakHeader: String!)
  func speakNumeral() -> String!
  func setSpeakNumeral(speakNumeral: String!)
  func speakPunctuation() -> String!
  func setSpeakPunctuation(speakPunctuation: String!)
  func speechRate() -> String!
  func setSpeechRate(speechRate: String!)
  func stress() -> String!
  func setStress(stress: String!)
  func tableLayout() -> String!
  func setTableLayout(tableLayout: String!)
  func textAlign() -> String!
  func setTextAlign(textAlign: String!)
  func textDecoration() -> String!
  func setTextDecoration(textDecoration: String!)
  func textIndent() -> String!
  func setTextIndent(textIndent: String!)
  func textShadow() -> String!
  func setTextShadow(textShadow: String!)
  func textTransform() -> String!
  func setTextTransform(textTransform: String!)
  func top() -> String!
  func setTop(top: String!)
  func unicodeBidi() -> String!
  func setUnicodeBidi(unicodeBidi: String!)
  func verticalAlign() -> String!
  func setVerticalAlign(verticalAlign: String!)
  func visibility() -> String!
  func setVisibility(visibility: String!)
  func voiceFamily() -> String!
  func setVoiceFamily(voiceFamily: String!)
  func volume() -> String!
  func setVolume(volume: String!)
  func whiteSpace() -> String!
  func setWhiteSpace(whiteSpace: String!)
  func widows() -> String!
  func setWidows(widows: String!)
  func width() -> String!
  func setWidth(width: String!)
  func wordSpacing() -> String!
  func setWordSpacing(wordSpacing: String!)
  func zIndex() -> String!
  func setZIndex(zIndex: String!)
}
class DOMCSSCharsetRule : DOMCSSRule {
  var encoding: String! { get }
}
class DOMCSSFontFaceRule : DOMCSSRule {
  var style: DOMCSSStyleDeclaration! { get }
}
class DOMCSSImportRule : DOMCSSRule {
  var href: String! { get }
  var media: DOMMediaList! { get }
  var styleSheet: DOMCSSStyleSheet! { get }
}
class DOMCSSMediaRule : DOMCSSRule {
  var media: DOMMediaList! { get }
  var cssRules: DOMCSSRuleList! { get }
  func insertRule(rule: String!, index: UInt32) -> UInt32
  func deleteRule(index: UInt32)
}
extension DOMCSSMediaRule {
}
class DOMCSSPageRule : DOMCSSRule {
  var selectorText: String!
  var style: DOMCSSStyleDeclaration! { get }
}
var DOM_CSS_UNKNOWN: Int { get }
var DOM_CSS_NUMBER: Int { get }
var DOM_CSS_PERCENTAGE: Int { get }
var DOM_CSS_EMS: Int { get }
var DOM_CSS_EXS: Int { get }
var DOM_CSS_PX: Int { get }
var DOM_CSS_CM: Int { get }
var DOM_CSS_MM: Int { get }
var DOM_CSS_IN: Int { get }
var DOM_CSS_PT: Int { get }
var DOM_CSS_PC: Int { get }
var DOM_CSS_DEG: Int { get }
var DOM_CSS_RAD: Int { get }
var DOM_CSS_GRAD: Int { get }
var DOM_CSS_MS: Int { get }
var DOM_CSS_S: Int { get }
var DOM_CSS_HZ: Int { get }
var DOM_CSS_KHZ: Int { get }
var DOM_CSS_DIMENSION: Int { get }
var DOM_CSS_STRING: Int { get }
var DOM_CSS_URI: Int { get }
var DOM_CSS_IDENT: Int { get }
var DOM_CSS_ATTR: Int { get }
var DOM_CSS_COUNTER: Int { get }
var DOM_CSS_RECT: Int { get }
var DOM_CSS_RGBCOLOR: Int { get }
var DOM_CSS_VW: Int { get }
var DOM_CSS_VH: Int { get }
var DOM_CSS_VMIN: Int { get }
var DOM_CSS_VMAX: Int { get }
class DOMCSSPrimitiveValue : DOMCSSValue {
  var primitiveType: UInt16 { get }
  func setFloatValue(unitType: UInt16, floatValue: Float)
  func getFloatValue(unitType: UInt16) -> Float
  func setStringValue(stringType: UInt16, stringValue: String!)
  func getStringValue() -> String!
  func getCounterValue() -> DOMCounter!
  func getRectValue() -> DOMRect!
  func getRGBColorValue() -> DOMRGBColor!
}
extension DOMCSSPrimitiveValue {
}
var DOM_UNKNOWN_RULE: Int { get }
var DOM_STYLE_RULE: Int { get }
var DOM_CHARSET_RULE: Int { get }
var DOM_IMPORT_RULE: Int { get }
var DOM_MEDIA_RULE: Int { get }
var DOM_FONT_FACE_RULE: Int { get }
var DOM_PAGE_RULE: Int { get }
var DOM_KEYFRAMES_RULE: Int { get }
var DOM_KEYFRAME_RULE: Int { get }
var DOM_SUPPORTS_RULE: Int { get }
var DOM_WEBKIT_REGION_RULE: Int { get }
var DOM_WEBKIT_KEYFRAMES_RULE: Int { get }
var DOM_WEBKIT_KEYFRAME_RULE: Int { get }
class DOMCSSRule : DOMObject {
  var type: UInt16 { get }
  var cssText: String!
  var parentStyleSheet: DOMCSSStyleSheet! { get }
  var parentRule: DOMCSSRule! { get }
}
class DOMCSSRuleList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMCSSRule!
}
class DOMCSSStyleDeclaration : DOMObject {
  var cssText: String!
  var length: UInt32 { get }
  var parentRule: DOMCSSRule! { get }
  func getPropertyValue(propertyName: String!) -> String!
  func getPropertyCSSValue(propertyName: String!) -> DOMCSSValue!
  func removeProperty(propertyName: String!) -> String!
  func getPropertyPriority(propertyName: String!) -> String!
  func setProperty(propertyName: String!, value: String!, priority: String!)
  func item(index: UInt32) -> String!
  func isPropertyImplicit(propertyName: String!) -> Bool
}
extension DOMCSSStyleDeclaration {
}
class DOMCSSStyleRule : DOMCSSRule {
  var selectorText: String!
  var style: DOMCSSStyleDeclaration! { get }
}
class DOMCSSStyleSheet : DOMStyleSheet {
  var ownerRule: DOMCSSRule! { get }
  var cssRules: DOMCSSRuleList! { get }
  var rules: DOMCSSRuleList! { get }
  func insertRule(rule: String!, index: UInt32) -> UInt32
  func deleteRule(index: UInt32)
  func addRule(selector: String!, style: String!, index: UInt32) -> Int32
  func removeRule(index: UInt32)
}
extension DOMCSSStyleSheet {
}
class DOMCSSUnknownRule : DOMCSSRule {
}
var DOM_CSS_INHERIT: Int { get }
var DOM_CSS_PRIMITIVE_VALUE: Int { get }
var DOM_CSS_VALUE_LIST: Int { get }
var DOM_CSS_CUSTOM: Int { get }
class DOMCSSValue : DOMObject {
  var cssText: String!
  var cssValueType: UInt16 { get }
}
class DOMCSSValueList : DOMCSSValue {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMCSSValue!
}
class DOMCharacterData : DOMNode {
  var data: String!
  var length: UInt32 { get }
  func substringData(offset: UInt32, length: UInt32) -> String!
  func appendData(data: String!)
  func insertData(offset: UInt32, data: String!)
  func deleteData(offset: UInt32, length: UInt32)
  func replaceData(offset: UInt32, length: UInt32, data: String!)
}
extension DOMCharacterData {
}
class DOMComment : DOMCharacterData {
}
class DOMCounter : DOMObject {
  var identifier: String! { get }
  var listStyle: String! { get }
  var separator: String! { get }
}
class DOMDocument : DOMNode {
  var doctype: DOMDocumentType! { get }
  var implementation: DOMImplementation! { get }
  var documentElement: DOMElement! { get }
  var inputEncoding: String! { get }
  var xmlEncoding: String! { get }
  var xmlVersion: String!
  var xmlStandalone: Bool
  var documentURI: String!
  var defaultView: DOMAbstractView! { get }
  var styleSheets: DOMStyleSheetList! { get }
  var title: String!
  var referrer: String! { get }
  var domain: String! { get }
  var URL: String! { get }
  var cookie: String!
  var body: DOMHTMLElement!
  var images: DOMHTMLCollection! { get }
  var applets: DOMHTMLCollection! { get }
  var links: DOMHTMLCollection! { get }
  var forms: DOMHTMLCollection! { get }
  var anchors: DOMHTMLCollection! { get }
  var lastModified: String! { get }
  var charset: String!
  var defaultCharset: String! { get }
  var readyState: String! { get }
  var characterSet: String! { get }
  var preferredStylesheetSet: String! { get }
  var selectedStylesheetSet: String!
  var activeElement: DOMElement! { get }
  func createElement(tagName: String!) -> DOMElement!
  func createDocumentFragment() -> DOMDocumentFragment!
  func createTextNode(data: String!) -> DOMText!
  func createComment(data: String!) -> DOMComment!
  func createCDATASection(data: String!) -> DOMCDATASection!
  func createProcessingInstruction(target: String!, data: String!) -> DOMProcessingInstruction!
  func createAttribute(name: String!) -> DOMAttr!
  func createEntityReference(name: String!) -> DOMEntityReference!
  func getElementsByTagName(tagname: String!) -> DOMNodeList!
  func importNode(importedNode: DOMNode!, deep: Bool) -> DOMNode!
  func createElementNS(namespaceURI: String!, qualifiedName: String!) -> DOMElement!
  func createAttributeNS(namespaceURI: String!, qualifiedName: String!) -> DOMAttr!
  func getElementsByTagNameNS(namespaceURI: String!, localName: String!) -> DOMNodeList!
  func adoptNode(source: DOMNode!) -> DOMNode!
  func createEvent(eventType: String!) -> DOMEvent!
  func createRange() -> DOMRange!
  func createNodeIterator(root: DOMNode!, whatToShow: UInt32, filter: DOMNodeFilter!, expandEntityReferences: Bool) -> DOMNodeIterator!
  func createTreeWalker(root: DOMNode!, whatToShow: UInt32, filter: DOMNodeFilter!, expandEntityReferences: Bool) -> DOMTreeWalker!
  func getOverrideStyle(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
  func createExpression(expression: String!, resolver: DOMXPathNSResolver!) -> DOMXPathExpression!
  func createNSResolver(nodeResolver: DOMNode!) -> DOMXPathNSResolver!
  func evaluate(expression: String!, contextNode: DOMNode!, resolver: DOMXPathNSResolver!, type: UInt16, inResult: DOMXPathResult!) -> DOMXPathResult!
  func execCommand(command: String!, userInterface: Bool, value: String!) -> Bool
  func execCommand(command: String!, userInterface: Bool) -> Bool
  func execCommand(command: String!) -> Bool
  func queryCommandEnabled(command: String!) -> Bool
  func queryCommandIndeterm(command: String!) -> Bool
  func queryCommandState(command: String!) -> Bool
  func queryCommandSupported(command: String!) -> Bool
  func queryCommandValue(command: String!) -> String!
  func getElementsByName(elementName: String!) -> DOMNodeList!
  func elementFromPoint(x: Int32, y: Int32) -> DOMElement!
  func createCSSStyleDeclaration() -> DOMCSSStyleDeclaration!
  func getComputedStyle(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
  func getMatchedCSSRules(element: DOMElement!, pseudoElement: String!) -> DOMCSSRuleList!
  func getMatchedCSSRules(element: DOMElement!, pseudoElement: String!, authorOnly: Bool) -> DOMCSSRuleList!
  func getElementsByClassName(classNames: String!) -> DOMNodeList!
  func hasFocus() -> Bool
  func webkitCancelFullScreen()
  func getElementById(elementId: String!) -> DOMElement!
  func querySelector(selectors: String!) -> DOMElement!
  func querySelectorAll(selectors: String!) -> DOMNodeList!
}
extension DOMDocument {
}
class DOMDocumentFragment : DOMNode {
}
class DOMDocumentType : DOMNode {
  var name: String! { get }
  var entities: DOMNamedNodeMap! { get }
  var notations: DOMNamedNodeMap! { get }
  var publicId: String! { get }
  var systemId: String! { get }
  var internalSubset: String! { get }
}
var DOM_ALLOW_KEYBOARD_INPUT: Int { get }
class DOMElement : DOMNode {
  var tagName: String! { get }
  var style: DOMCSSStyleDeclaration! { get }
  var offsetLeft: Int32 { get }
  var offsetTop: Int32 { get }
  var offsetWidth: Int32 { get }
  var offsetHeight: Int32 { get }
  var clientLeft: Int32 { get }
  var clientTop: Int32 { get }
  var clientWidth: Int32 { get }
  var clientHeight: Int32 { get }
  var scrollLeft: Int32
  var scrollTop: Int32
  var scrollWidth: Int32 { get }
  var scrollHeight: Int32 { get }
  var offsetParent: DOMElement! { get }
  var innerHTML: String!
  var outerHTML: String!
  var className: String!
  var innerText: String! { get }
  var previousElementSibling: DOMElement! { get }
  var nextElementSibling: DOMElement! { get }
  var firstElementChild: DOMElement! { get }
  var lastElementChild: DOMElement! { get }
  var childElementCount: UInt32 { get }
  func getAttribute(name: String!) -> String!
  func setAttribute(name: String!, value: String!)
  func removeAttribute(name: String!)
  func getAttributeNode(name: String!) -> DOMAttr!
  func setAttributeNode(newAttr: DOMAttr!) -> DOMAttr!
  func removeAttributeNode(oldAttr: DOMAttr!) -> DOMAttr!
  func getElementsByTagName(name: String!) -> DOMNodeList!
  func getAttributeNS(namespaceURI: String!, localName: String!) -> String!
  func setAttributeNS(namespaceURI: String!, qualifiedName: String!, value: String!)
  func removeAttributeNS(namespaceURI: String!, localName: String!)
  func getElementsByTagNameNS(namespaceURI: String!, localName: String!) -> DOMNodeList!
  func getAttributeNodeNS(namespaceURI: String!, localName: String!) -> DOMAttr!
  func setAttributeNodeNS(newAttr: DOMAttr!) -> DOMAttr!
  func hasAttribute(name: String!) -> Bool
  func hasAttributeNS(namespaceURI: String!, localName: String!) -> Bool
  func focus()
  func blur()
  func scrollIntoView(alignWithTop: Bool)
  func scrollIntoViewIfNeeded(centerIfNeeded: Bool)
  func scrollByLines(lines: Int32)
  func scrollByPages(pages: Int32)
  func getElementsByClassName(name: String!) -> DOMNodeList!
  func webkitRequestFullScreen(flags: UInt16)
  func querySelector(selectors: String!) -> DOMElement!
  func querySelectorAll(selectors: String!) -> DOMNodeList!
}
extension DOMElement {
}
class DOMEntity : DOMNode {
  var publicId: String! { get }
  var systemId: String! { get }
  var notationName: String! { get }
}
class DOMEntityReference : DOMNode {
}
var DOM_NONE: Int { get }
var DOM_CAPTURING_PHASE: Int { get }
var DOM_AT_TARGET: Int { get }
var DOM_BUBBLING_PHASE: Int { get }
class DOMEvent : DOMObject {
  var type: String! { get }
  var target: DOMEventTarget! { get }
  var currentTarget: DOMEventTarget! { get }
  var eventPhase: UInt16 { get }
  var bubbles: Bool { get }
  var cancelable: Bool { get }
  var timeStamp: DOMTimeStamp { get }
  var srcElement: DOMEventTarget! { get }
  var returnValue: Bool
  var cancelBubble: Bool
  func stopPropagation()
  func preventDefault()
  func initEvent(eventTypeArg: String!, canBubbleArg: Bool, cancelableArg: Bool)
}
extension DOMEvent {
}
let DOMEventException: String
struct DOMEventExceptionCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_UNSPECIFIED_EVENT_TYPE_ERR: DOMEventExceptionCode { get }
protocol DOMEventListener : NSObjectProtocol {
  func handleEvent(event: DOMEvent!)
}
protocol DOMEventTarget : NSObjectProtocol, NSCopying {
  func addEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  func removeEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  func dispatchEvent(event: DOMEvent!) -> Bool
}
let DOMException: String
struct DOMExceptionCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_INDEX_SIZE_ERR: DOMExceptionCode { get }
var DOM_DOMSTRING_SIZE_ERR: DOMExceptionCode { get }
var DOM_HIERARCHY_REQUEST_ERR: DOMExceptionCode { get }
var DOM_WRONG_DOCUMENT_ERR: DOMExceptionCode { get }
var DOM_INVALID_CHARACTER_ERR: DOMExceptionCode { get }
var DOM_NO_DATA_ALLOWED_ERR: DOMExceptionCode { get }
var DOM_NO_MODIFICATION_ALLOWED_ERR: DOMExceptionCode { get }
var DOM_NOT_FOUND_ERR: DOMExceptionCode { get }
var DOM_NOT_SUPPORTED_ERR: DOMExceptionCode { get }
var DOM_INUSE_ATTRIBUTE_ERR: DOMExceptionCode { get }
var DOM_INVALID_STATE_ERR: DOMExceptionCode { get }
var DOM_SYNTAX_ERR: DOMExceptionCode { get }
var DOM_INVALID_MODIFICATION_ERR: DOMExceptionCode { get }
var DOM_NAMESPACE_ERR: DOMExceptionCode { get }
var DOM_INVALID_ACCESS_ERR: DOMExceptionCode { get }
extension DOMNode {
  func boundingBox() -> NSRect
  func lineBoxRects() -> [AnyObject]!
}
extension DOMElement {
  func image() -> NSImage!
}
extension DOMHTMLDocument {
  func createDocumentFragmentWithMarkupString(markupString: String!, baseURL: NSURL!) -> DOMDocumentFragment!
  func createDocumentFragmentWithText(text: String!) -> DOMDocumentFragment!
}
class DOMFile : DOMBlob {
  var name: String! { get }
}
class DOMFileList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMFile!
}
class DOMHTMLAnchorElement : DOMHTMLElement {
  var charset: String!
  var coords: String!
  var href: String!
  var hreflang: String!
  var name: String!
  var rel: String!
  var rev: String!
  var shape: String!
  var target: String!
  var type: String!
  var hashName: String! { get }
  var host: String! { get }
  var hostname: String! { get }
  var pathname: String! { get }
  var port: String! { get }
  var `protocol`: String! { get }
  var search: String! { get }
  var text: String! { get }
  @NSCopying var absoluteLinkURL: NSURL! { get }
}
class DOMHTMLAppletElement : DOMHTMLElement {
  var align: String!
  var alt: String!
  var archive: String!
  var code: String!
  var codeBase: String!
  var height: String!
  var hspace: Int32
  var name: String!
  var object: String!
  var vspace: Int32
  var width: String!
}
class DOMHTMLAreaElement : DOMHTMLElement {
  var alt: String!
  var coords: String!
  var href: String!
  var noHref: Bool
  var shape: String!
  var target: String!
  var hashName: String! { get }
  var host: String! { get }
  var hostname: String! { get }
  var pathname: String! { get }
  var port: String! { get }
  var `protocol`: String! { get }
  var search: String! { get }
  @NSCopying var absoluteLinkURL: NSURL! { get }
}
class DOMHTMLBRElement : DOMHTMLElement {
  var clear: String!
}
class DOMHTMLBaseElement : DOMHTMLElement {
  var href: String!
  var target: String!
}
class DOMHTMLBaseFontElement : DOMHTMLElement {
  var color: String!
  var face: String!
  var size: String!
}
class DOMHTMLBodyElement : DOMHTMLElement {
  var aLink: String!
  var background: String!
  var bgColor: String!
  var link: String!
  var text: String!
  var vLink: String!
}
class DOMHTMLButtonElement : DOMHTMLElement {
  var autofocus: Bool
  var disabled: Bool
  var form: DOMHTMLFormElement! { get }
  var name: String!
  var type: String!
  var value: String!
  var willValidate: Bool { get }
  func click()
}
class DOMHTMLCollection : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMNode!
  func namedItem(name: String!) -> DOMNode!
  func tags(name: String!) -> DOMNodeList!
}
class DOMHTMLDListElement : DOMHTMLElement {
  var compact: Bool
}
class DOMHTMLDirectoryElement : DOMHTMLElement {
  var compact: Bool
}
class DOMHTMLDivElement : DOMHTMLElement {
  var align: String!
}
class DOMHTMLDocument : DOMDocument {
  var embeds: DOMHTMLCollection! { get }
  var plugins: DOMHTMLCollection! { get }
  var scripts: DOMHTMLCollection! { get }
  var width: Int32 { get }
  var height: Int32 { get }
  var dir: String!
  var designMode: String!
  var compatMode: String! { get }
  var bgColor: String!
  var fgColor: String!
  var alinkColor: String!
  var linkColor: String!
  var vlinkColor: String!
  func open()
  func close()
  func write(text: String!)
  func writeln(text: String!)
  func clear()
  func captureEvents()
  func releaseEvents()
}
class DOMHTMLElement : DOMElement {
  var idName: String!
  var title: String!
  var lang: String!
  var dir: String!
  var tabIndex: Int32
  var accessKey: String!
  var innerText: String!
  var outerText: String!
  var children: DOMHTMLCollection! { get }
  var contentEditable: String!
  var isContentEditable: Bool { get }
  var titleDisplayString: String! { get }
  func click()
}
class DOMHTMLEmbedElement : DOMHTMLElement {
  var align: String!
  var height: Int32
  var name: String!
  var src: String!
  var type: String!
  var width: Int32
}
class DOMHTMLFieldSetElement : DOMHTMLElement {
  var form: DOMHTMLFormElement! { get }
}
class DOMHTMLFontElement : DOMHTMLElement {
  var color: String!
  var face: String!
  var size: String!
}
class DOMHTMLFormElement : DOMHTMLElement {
  var acceptCharset: String!
  var action: String!
  var enctype: String!
  var encoding: String!
  var method: String!
  var name: String!
  var target: String!
  var elements: DOMHTMLCollection! { get }
  var length: Int32 { get }
  func submit()
  func reset()
}
class DOMHTMLFrameElement : DOMHTMLElement {
  var frameBorder: String!
  var longDesc: String!
  var marginHeight: String!
  var marginWidth: String!
  var name: String!
  var noResize: Bool
  var scrolling: String!
  var src: String!
  var contentDocument: DOMDocument! { get }
  var contentWindow: DOMAbstractView! { get }
  var location: String!
  var width: Int32 { get }
  var height: Int32 { get }
}
class DOMHTMLFrameSetElement : DOMHTMLElement {
  var cols: String!
  var rows: String!
}
class DOMHTMLHRElement : DOMHTMLElement {
  var align: String!
  var noShade: Bool
  var size: String!
  var width: String!
}
class DOMHTMLHeadElement : DOMHTMLElement {
  var profile: String!
}
class DOMHTMLHeadingElement : DOMHTMLElement {
  var align: String!
}
class DOMHTMLHtmlElement : DOMHTMLElement {
  var version: String!
}
class DOMHTMLIFrameElement : DOMHTMLElement {
  var align: String!
  var frameBorder: String!
  var height: String!
  var longDesc: String!
  var marginHeight: String!
  var marginWidth: String!
  var name: String!
  var scrolling: String!
  var src: String!
  var width: String!
  var contentDocument: DOMDocument! { get }
  var contentWindow: DOMAbstractView! { get }
}
class DOMHTMLImageElement : DOMHTMLElement {
  var name: String!
  var align: String!
  var alt: String!
  var border: String!
  var height: Int32
  var hspace: Int32
  var isMap: Bool
  var longDesc: String!
  var src: String!
  var useMap: String!
  var vspace: Int32
  var width: Int32
  var complete: Bool { get }
  var lowsrc: String!
  var naturalHeight: Int32 { get }
  var naturalWidth: Int32 { get }
  var x: Int32 { get }
  var y: Int32 { get }
  var altDisplayString: String! { get }
  @NSCopying var absoluteImageURL: NSURL! { get }
}
class DOMHTMLInputElement : DOMHTMLElement {
  var accept: String!
  var alt: String!
  var autofocus: Bool
  var defaultChecked: Bool
  var checked: Bool
  var disabled: Bool
  var form: DOMHTMLFormElement! { get }
  var files: DOMFileList!
  var indeterminate: Bool
  var maxLength: Int32
  var multiple: Bool
  var name: String!
  var readOnly: Bool
  var size: String!
  var src: String!
  var type: String!
  var defaultValue: String!
  var value: String!
  var willValidate: Bool { get }
  var selectionStart: Int32
  var selectionEnd: Int32
  var align: String!
  var useMap: String!
  var altDisplayString: String! { get }
  @NSCopying var absoluteImageURL: NSURL! { get }
  func select()
  func setSelectionRange(start: Int32, end: Int32)
  func click()
}
class DOMHTMLLIElement : DOMHTMLElement {
  var type: String!
  var value: Int32
}
class DOMHTMLLabelElement : DOMHTMLElement {
  var form: DOMHTMLFormElement! { get }
  var htmlFor: String!
}
class DOMHTMLLegendElement : DOMHTMLElement {
  var form: DOMHTMLFormElement! { get }
  var align: String!
}
class DOMHTMLLinkElement : DOMHTMLElement {
  var disabled: Bool
  var charset: String!
  var href: String!
  var hreflang: String!
  var media: String!
  var rel: String!
  var rev: String!
  var target: String!
  var type: String!
  var sheet: DOMStyleSheet! { get }
  @NSCopying var absoluteLinkURL: NSURL! { get }
}
class DOMHTMLMapElement : DOMHTMLElement {
  var areas: DOMHTMLCollection! { get }
  var name: String!
}
class DOMHTMLMarqueeElement : DOMHTMLElement {
  func start()
  func stop()
}
class DOMHTMLMenuElement : DOMHTMLElement {
  var compact: Bool
}
class DOMHTMLMetaElement : DOMHTMLElement {
  var content: String!
  var httpEquiv: String!
  var name: String!
  var scheme: String!
}
class DOMHTMLModElement : DOMHTMLElement {
  var cite: String!
  var dateTime: String!
}
class DOMHTMLOListElement : DOMHTMLElement {
  var compact: Bool
  var start: Int32
  var type: String!
}
class DOMHTMLObjectElement : DOMHTMLElement {
  var form: DOMHTMLFormElement! { get }
  var code: String!
  var align: String!
  var archive: String!
  var border: String!
  var codeBase: String!
  var codeType: String!
  var data: String!
  var declare: Bool
  var height: String!
  var hspace: Int32
  var name: String!
  var standby: String!
  var type: String!
  var useMap: String!
  var vspace: Int32
  var width: String!
  var contentDocument: DOMDocument! { get }
  @NSCopying var absoluteImageURL: NSURL! { get }
}
class DOMHTMLOptGroupElement : DOMHTMLElement {
  var disabled: Bool
  var label: String!
}
class DOMHTMLOptionElement : DOMHTMLElement {
  var disabled: Bool
  var form: DOMHTMLFormElement! { get }
  var label: String!
  var defaultSelected: Bool
  var selected: Bool
  var value: String!
  var text: String! { get }
  var index: Int32 { get }
}
class DOMHTMLOptionsCollection : DOMObject {
  var selectedIndex: Int32
  var length: UInt32
  func namedItem(name: String!) -> DOMNode!
  func add(option: DOMHTMLOptionElement!, index: UInt32)
  func remove(index: UInt32)
  func item(index: UInt32) -> DOMNode!
}
class DOMHTMLParagraphElement : DOMHTMLElement {
  var align: String!
}
class DOMHTMLParamElement : DOMHTMLElement {
  var name: String!
  var type: String!
  var value: String!
  var valueType: String!
}
class DOMHTMLPreElement : DOMHTMLElement {
  var width: Int32
  var wrap: Bool
}
class DOMHTMLQuoteElement : DOMHTMLElement {
  var cite: String!
}
class DOMHTMLScriptElement : DOMHTMLElement {
  var text: String!
  var htmlFor: String!
  var event: String!
  var charset: String!
  var `defer`: Bool
  var src: String!
  var type: String!
}
class DOMHTMLSelectElement : DOMHTMLElement {
  var autofocus: Bool
  var disabled: Bool
  var form: DOMHTMLFormElement! { get }
  var multiple: Bool
  var name: String!
  var size: Int32
  var type: String! { get }
  var options: DOMHTMLOptionsCollection! { get }
  var length: Int32 { get }
  var selectedIndex: Int32
  var value: String!
  var willValidate: Bool { get }
  func item(index: UInt32) -> DOMNode!
  func namedItem(name: String!) -> DOMNode!
  func add(element: DOMHTMLElement!, before: DOMHTMLElement!)
  func remove(index: Int32)
}
extension DOMHTMLSelectElement {
}
class DOMHTMLStyleElement : DOMHTMLElement {
  var disabled: Bool
  var media: String!
  var type: String!
  var sheet: DOMStyleSheet! { get }
}
class DOMHTMLTableCaptionElement : DOMHTMLElement {
  var align: String!
}
class DOMHTMLTableCellElement : DOMHTMLElement {
  var cellIndex: Int32 { get }
  var abbr: String!
  var align: String!
  var axis: String!
  var bgColor: String!
  var ch: String!
  var chOff: String!
  var colSpan: Int32
  var headers: String!
  var height: String!
  var noWrap: Bool
  var rowSpan: Int32
  var scope: String!
  var vAlign: String!
  var width: String!
}
class DOMHTMLTableColElement : DOMHTMLElement {
  var align: String!
  var ch: String!
  var chOff: String!
  var span: Int32
  var vAlign: String!
  var width: String!
}
class DOMHTMLTableElement : DOMHTMLElement {
  var caption: DOMHTMLTableCaptionElement!
  var tHead: DOMHTMLTableSectionElement!
  var tFoot: DOMHTMLTableSectionElement!
  var rows: DOMHTMLCollection! { get }
  var tBodies: DOMHTMLCollection! { get }
  var align: String!
  var bgColor: String!
  var border: String!
  var cellPadding: String!
  var cellSpacing: String!
  var frameBorders: String!
  var rules: String!
  var summary: String!
  var width: String!
  func createTHead() -> DOMHTMLElement!
  func deleteTHead()
  func createTFoot() -> DOMHTMLElement!
  func deleteTFoot()
  func createCaption() -> DOMHTMLElement!
  func deleteCaption()
  func insertRow(index: Int32) -> DOMHTMLElement!
  func deleteRow(index: Int32)
}
class DOMHTMLTableRowElement : DOMHTMLElement {
  var rowIndex: Int32 { get }
  var sectionRowIndex: Int32 { get }
  var cells: DOMHTMLCollection! { get }
  var align: String!
  var bgColor: String!
  var ch: String!
  var chOff: String!
  var vAlign: String!
  func insertCell(index: Int32) -> DOMHTMLElement!
  func deleteCell(index: Int32)
}
class DOMHTMLTableSectionElement : DOMHTMLElement {
  var align: String!
  var ch: String!
  var chOff: String!
  var vAlign: String!
  var rows: DOMHTMLCollection! { get }
  func insertRow(index: Int32) -> DOMHTMLElement!
  func deleteRow(index: Int32)
}
class DOMHTMLTextAreaElement : DOMHTMLElement {
  var autofocus: Bool
  var cols: Int32
  var disabled: Bool
  var form: DOMHTMLFormElement! { get }
  var name: String!
  var readOnly: Bool
  var rows: Int32
  var type: String! { get }
  var defaultValue: String!
  var value: String!
  var willValidate: Bool { get }
  var selectionStart: Int32
  var selectionEnd: Int32
  func select()
  func setSelectionRange(start: Int32, end: Int32)
}
class DOMHTMLTitleElement : DOMHTMLElement {
  var text: String!
}
class DOMHTMLUListElement : DOMHTMLElement {
  var compact: Bool
  var type: String!
}
class DOMImplementation : DOMObject {
  func hasFeature(feature: String!, version: String!) -> Bool
  func createDocumentType(qualifiedName: String!, publicId: String!, systemId: String!) -> DOMDocumentType!
  func createDocument(namespaceURI: String!, qualifiedName: String!, doctype: DOMDocumentType!) -> DOMDocument!
  func createCSSStyleSheet(title: String!, media: String!) -> DOMCSSStyleSheet!
  func createHTMLDocument(title: String!) -> DOMHTMLDocument!
}
extension DOMImplementation {
}
var DOM_KEY_LOCATION_STANDARD: Int { get }
var DOM_KEY_LOCATION_LEFT: Int { get }
var DOM_KEY_LOCATION_RIGHT: Int { get }
var DOM_KEY_LOCATION_NUMPAD: Int { get }
class DOMKeyboardEvent : DOMUIEvent {
  var keyIdentifier: String! { get }
  var location: UInt32 { get }
  var ctrlKey: Bool { get }
  var shiftKey: Bool { get }
  var altKey: Bool { get }
  var metaKey: Bool { get }
  var altGraphKey: Bool { get }
  var keyCode: Int32 { get }
  var charCode: Int32 { get }
  func getModifierState(keyIdentifierArg: String!) -> Bool
  func initKeyboardEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, keyIdentifier: String!, location: UInt32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool, altGraphKey: Bool)
  func initKeyboardEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, keyIdentifier: String!, location: UInt32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool)
}
class DOMMediaList : DOMObject {
  var mediaText: String!
  var length: UInt32 { get }
  func item(index: UInt32) -> String!
  func deleteMedium(oldMedium: String!)
  func appendMedium(newMedium: String!)
}
class DOMMouseEvent : DOMUIEvent {
  var screenX: Int32 { get }
  var screenY: Int32 { get }
  var clientX: Int32 { get }
  var clientY: Int32 { get }
  var ctrlKey: Bool { get }
  var shiftKey: Bool { get }
  var altKey: Bool { get }
  var metaKey: Bool { get }
  var button: UInt16 { get }
  var relatedTarget: DOMEventTarget! { get }
  var offsetX: Int32 { get }
  var offsetY: Int32 { get }
  var x: Int32 { get }
  var y: Int32 { get }
  var fromElement: DOMNode! { get }
  var toElement: DOMNode! { get }
  func initMouseEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, detail: Int32, screenX: Int32, screenY: Int32, clientX: Int32, clientY: Int32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool, button: UInt16, relatedTarget: DOMEventTarget!)
}
extension DOMMouseEvent {
}
var DOM_MODIFICATION: Int { get }
var DOM_ADDITION: Int { get }
var DOM_REMOVAL: Int { get }
class DOMMutationEvent : DOMEvent {
  var relatedNode: DOMNode! { get }
  var prevValue: String! { get }
  var newValue: String! { get }
  var attrName: String! { get }
  var attrChange: UInt16 { get }
  func initMutationEvent(type: String!, canBubble: Bool, cancelable: Bool, relatedNode: DOMNode!, prevValue: String!, newValue: String!, attrName: String!, attrChange: UInt16)
}
extension DOMMutationEvent {
}
class DOMNamedNodeMap : DOMObject {
  var length: UInt32 { get }
  func getNamedItem(name: String!) -> DOMNode!
  func setNamedItem(node: DOMNode!) -> DOMNode!
  func removeNamedItem(name: String!) -> DOMNode!
  func item(index: UInt32) -> DOMNode!
  func getNamedItemNS(namespaceURI: String!, localName: String!) -> DOMNode!
  func setNamedItemNS(node: DOMNode!) -> DOMNode!
  func removeNamedItemNS(namespaceURI: String!, localName: String!) -> DOMNode!
}
extension DOMNamedNodeMap {
}
var DOM_ELEMENT_NODE: Int { get }
var DOM_ATTRIBUTE_NODE: Int { get }
var DOM_TEXT_NODE: Int { get }
var DOM_CDATA_SECTION_NODE: Int { get }
var DOM_ENTITY_REFERENCE_NODE: Int { get }
var DOM_ENTITY_NODE: Int { get }
var DOM_PROCESSING_INSTRUCTION_NODE: Int { get }
var DOM_COMMENT_NODE: Int { get }
var DOM_DOCUMENT_NODE: Int { get }
var DOM_DOCUMENT_TYPE_NODE: Int { get }
var DOM_DOCUMENT_FRAGMENT_NODE: Int { get }
var DOM_NOTATION_NODE: Int { get }
var DOM_DOCUMENT_POSITION_DISCONNECTED: Int { get }
var DOM_DOCUMENT_POSITION_PRECEDING: Int { get }
var DOM_DOCUMENT_POSITION_FOLLOWING: Int { get }
var DOM_DOCUMENT_POSITION_CONTAINS: Int { get }
var DOM_DOCUMENT_POSITION_CONTAINED_BY: Int { get }
var DOM_DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: Int { get }
class DOMNode : DOMObject, DOMEventTarget {
  var nodeName: String! { get }
  var nodeValue: String!
  var nodeType: UInt16 { get }
  var parentNode: DOMNode! { get }
  var childNodes: DOMNodeList! { get }
  var firstChild: DOMNode! { get }
  var lastChild: DOMNode! { get }
  var previousSibling: DOMNode! { get }
  var nextSibling: DOMNode! { get }
  var ownerDocument: DOMDocument! { get }
  var namespaceURI: String! { get }
  var prefix: String!
  var localName: String! { get }
  var attributes: DOMNamedNodeMap! { get }
  var baseURI: String! { get }
  var textContent: String!
  var parentElement: DOMElement! { get }
  var isContentEditable: Bool { get }
  func insertBefore(newChild: DOMNode!, refChild: DOMNode!) -> DOMNode!
  func replaceChild(newChild: DOMNode!, oldChild: DOMNode!) -> DOMNode!
  func removeChild(oldChild: DOMNode!) -> DOMNode!
  func appendChild(newChild: DOMNode!) -> DOMNode!
  func hasChildNodes() -> Bool
  func cloneNode(deep: Bool) -> DOMNode!
  func normalize()
  func isSupported(feature: String!, version: String!) -> Bool
  func hasAttributes() -> Bool
  func isSameNode(other: DOMNode!) -> Bool
  func isEqualNode(other: DOMNode!) -> Bool
  func lookupPrefix(namespaceURI: String!) -> String!
  func isDefaultNamespace(namespaceURI: String!) -> Bool
  func lookupNamespaceURI(prefix: String!) -> String!
  func compareDocumentPosition(other: DOMNode!) -> UInt16
  func contains(other: DOMNode!) -> Bool
  func addEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  func removeEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  func dispatchEvent(event: DOMEvent!) -> Bool
}
extension DOMNode {
}
var DOM_FILTER_ACCEPT: UInt32 { get }
var DOM_FILTER_REJECT: UInt32 { get }
var DOM_FILTER_SKIP: UInt32 { get }
var DOM_SHOW_ALL: UInt32 { get }
var DOM_SHOW_ELEMENT: UInt32 { get }
var DOM_SHOW_ATTRIBUTE: UInt32 { get }
var DOM_SHOW_TEXT: UInt32 { get }
var DOM_SHOW_CDATA_SECTION: UInt32 { get }
var DOM_SHOW_ENTITY_REFERENCE: UInt32 { get }
var DOM_SHOW_ENTITY: UInt32 { get }
var DOM_SHOW_PROCESSING_INSTRUCTION: UInt32 { get }
var DOM_SHOW_COMMENT: UInt32 { get }
var DOM_SHOW_DOCUMENT: UInt32 { get }
var DOM_SHOW_DOCUMENT_TYPE: UInt32 { get }
var DOM_SHOW_DOCUMENT_FRAGMENT: UInt32 { get }
var DOM_SHOW_NOTATION: UInt32 { get }
protocol DOMNodeFilter : NSObjectProtocol {
  func acceptNode(n: DOMNode!) -> Int16
}
class DOMNodeIterator : DOMObject {
  var root: DOMNode! { get }
  var whatToShow: UInt32 { get }
  var filter: DOMNodeFilter! { get }
  var expandEntityReferences: Bool { get }
  var referenceNode: DOMNode! { get }
  var pointerBeforeReferenceNode: Bool { get }
  func nextNode() -> DOMNode!
  func previousNode() -> DOMNode!
  func detach()
}
class DOMNodeList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMNode!
}
typealias DOMTimeStamp = UInt64
class DOMObject : WebScriptObject, NSCopying {
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension DOMObject {
  var sheet: DOMStyleSheet! { get }
}
var DOM_HORIZONTAL: Int { get }
var DOM_VERTICAL: Int { get }
var DOM_BOTH: Int { get }
class DOMOverflowEvent : DOMEvent {
  var orient: UInt16 { get }
  var horizontalOverflow: Bool { get }
  var verticalOverflow: Bool { get }
  func initOverflowEvent(orient: UInt16, horizontalOverflow: Bool, verticalOverflow: Bool)
}
class DOMProcessingInstruction : DOMCharacterData {
  var target: String! { get }
  var sheet: DOMStyleSheet! { get }
}
class DOMRGBColor : DOMObject {
  var red: DOMCSSPrimitiveValue! { get }
  var green: DOMCSSPrimitiveValue! { get }
  var blue: DOMCSSPrimitiveValue! { get }
  var alpha: DOMCSSPrimitiveValue! { get }
  @NSCopying var color: NSColor! { get }
}
var DOM_START_TO_START: Int { get }
var DOM_START_TO_END: Int { get }
var DOM_END_TO_END: Int { get }
var DOM_END_TO_START: Int { get }
var DOM_NODE_BEFORE: Int { get }
var DOM_NODE_AFTER: Int { get }
var DOM_NODE_BEFORE_AND_AFTER: Int { get }
var DOM_NODE_INSIDE: Int { get }
class DOMRange : DOMObject {
  var startContainer: DOMNode! { get }
  var startOffset: Int32 { get }
  var endContainer: DOMNode! { get }
  var endOffset: Int32 { get }
  var collapsed: Bool { get }
  var commonAncestorContainer: DOMNode! { get }
  var text: String! { get }
  func setStart(refNode: DOMNode!, offset: Int32)
  func setEnd(refNode: DOMNode!, offset: Int32)
  func setStartBefore(refNode: DOMNode!)
  func setStartAfter(refNode: DOMNode!)
  func setEndBefore(refNode: DOMNode!)
  func setEndAfter(refNode: DOMNode!)
  func collapse(toStart: Bool)
  func selectNode(refNode: DOMNode!)
  func selectNodeContents(refNode: DOMNode!)
  func compareBoundaryPoints(how: UInt16, sourceRange: DOMRange!) -> Int16
  func deleteContents()
  func extractContents() -> DOMDocumentFragment!
  func cloneContents() -> DOMDocumentFragment!
  func insertNode(newNode: DOMNode!)
  func surroundContents(newParent: DOMNode!)
  func cloneRange() -> DOMRange!
  func toString() -> String!
  func detach()
  func createContextualFragment(html: String!) -> DOMDocumentFragment!
  func intersectsNode(refNode: DOMNode!) -> Bool
  func compareNode(refNode: DOMNode!) -> Int16
  func comparePoint(refNode: DOMNode!, offset: Int32) -> Int16
  func isPointInRange(refNode: DOMNode!, offset: Int32) -> Bool
}
extension DOMRange {
}
let DOMRangeException: String
struct DOMRangeExceptionCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_BAD_BOUNDARYPOINTS_ERR: DOMRangeExceptionCode { get }
var DOM_INVALID_NODE_TYPE_ERR: DOMRangeExceptionCode { get }
class DOMRect : DOMObject {
  var top: DOMCSSPrimitiveValue! { get }
  var right: DOMCSSPrimitiveValue! { get }
  var bottom: DOMCSSPrimitiveValue! { get }
  var left: DOMCSSPrimitiveValue! { get }
}
class DOMStyleSheet : DOMObject {
  var type: String! { get }
  var disabled: Bool
  var ownerNode: DOMNode! { get }
  var parentStyleSheet: DOMStyleSheet! { get }
  var href: String! { get }
  var title: String! { get }
  var media: DOMMediaList! { get }
}
class DOMStyleSheetList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMStyleSheet!
}
class DOMText : DOMCharacterData {
  var wholeText: String! { get }
  func splitText(offset: UInt32) -> DOMText!
  func replaceWholeText(content: String!) -> DOMText!
}
class DOMTreeWalker : DOMObject {
  var root: DOMNode! { get }
  var whatToShow: UInt32 { get }
  var filter: DOMNodeFilter! { get }
  var expandEntityReferences: Bool { get }
  var currentNode: DOMNode!
  func parentNode() -> DOMNode!
  func firstChild() -> DOMNode!
  func lastChild() -> DOMNode!
  func previousSibling() -> DOMNode!
  func nextSibling() -> DOMNode!
  func previousNode() -> DOMNode!
  func nextNode() -> DOMNode!
}
class DOMUIEvent : DOMEvent {
  var view: DOMAbstractView! { get }
  var detail: Int32 { get }
  var keyCode: Int32 { get }
  var charCode: Int32 { get }
  var pageX: Int32 { get }
  var pageY: Int32 { get }
  var which: Int32 { get }
  func initUIEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, detail: Int32)
}
extension DOMUIEvent {
}
var DOM_DOM_DELTA_PIXEL: Int { get }
var DOM_DOM_DELTA_LINE: Int { get }
var DOM_DOM_DELTA_PAGE: Int { get }
class DOMWheelEvent : DOMMouseEvent {
  var wheelDeltaX: Int32 { get }
  var wheelDeltaY: Int32 { get }
  var wheelDelta: Int32 { get }
  var isHorizontal: Bool { get }
  func initWheelEvent(wheelDeltaX: Int32, wheelDeltaY: Int32, view: DOMAbstractView!, screenX: Int32, screenY: Int32, clientX: Int32, clientY: Int32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool)
}
let DOMXPathException: String
struct DOMXPathExceptionCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_INVALID_EXPRESSION_ERR: DOMXPathExceptionCode { get }
var DOM_TYPE_ERR: DOMXPathExceptionCode { get }
class DOMXPathExpression : DOMObject {
  func evaluate(contextNode: DOMNode!, type: UInt16, inResult: DOMXPathResult!) -> DOMXPathResult!
}
extension DOMXPathExpression {
}
protocol DOMXPathNSResolver : NSObjectProtocol {
  func lookupNamespaceURI(prefix: String!) -> String!
}
var DOM_ANY_TYPE: Int { get }
var DOM_NUMBER_TYPE: Int { get }
var DOM_STRING_TYPE: Int { get }
var DOM_BOOLEAN_TYPE: Int { get }
var DOM_UNORDERED_NODE_ITERATOR_TYPE: Int { get }
var DOM_ORDERED_NODE_ITERATOR_TYPE: Int { get }
var DOM_UNORDERED_NODE_SNAPSHOT_TYPE: Int { get }
var DOM_ORDERED_NODE_SNAPSHOT_TYPE: Int { get }
var DOM_ANY_UNORDERED_NODE_TYPE: Int { get }
var DOM_FIRST_ORDERED_NODE_TYPE: Int { get }
class DOMXPathResult : DOMObject {
  var resultType: UInt16 { get }
  var numberValue: Double { get }
  var stringValue: String! { get }
  var booleanValue: Bool { get }
  var singleNodeValue: DOMNode! { get }
  var invalidIteratorState: Bool { get }
  var snapshotLength: UInt32 { get }
  func iterateNext() -> DOMNode!
  func snapshotItem(index: UInt32) -> DOMNode!
}
class WKBackForwardList : NSObject {
  var currentItem: WKBackForwardListItem? { get }
  var backItem: WKBackForwardListItem? { get }
  var forwardItem: WKBackForwardListItem? { get }
  func itemAtIndex(index: Int) -> WKBackForwardListItem?
  var backList: [WKBackForwardListItem] { get }
  var forwardList: [WKBackForwardListItem] { get }
  init()
}
class WKBackForwardListItem : NSObject {
  @NSCopying var URL: NSURL { get }
  var title: String? { get }
  @NSCopying var initialURL: NSURL { get }
  init()
}
let WKErrorDomain: String
enum WKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case WebContentProcessTerminated
  case WebViewInvalidated
  case JavaScriptExceptionOccurred
  case JavaScriptResultTypeIsUnsupported
}
extension WKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
class WKFrameInfo : NSObject, NSCopying {
  var mainFrame: Bool { get }
  @NSCopying var request: NSURLRequest { get }
  var securityOrigin: WKSecurityOrigin { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class WKNavigation : NSObject {
  init()
}
enum WKNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkActivated
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
class WKNavigationAction : NSObject {
  @NSCopying var sourceFrame: WKFrameInfo { get }
  @NSCopying var targetFrame: WKFrameInfo? { get }
  var navigationType: WKNavigationType { get }
  @NSCopying var request: NSURLRequest { get }
  var modifierFlags: NSEventModifierFlags { get }
  var buttonNumber: Int { get }
  init()
}
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}
protocol WKNavigationDelegate : NSObjectProtocol {
  optional func webView(webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)
  optional func webView(webView: WKWebView, decidePolicyForNavigationResponse navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError)
  optional func webView(webView: WKWebView, didCommitNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!)
  optional func webView(webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError)
  optional func webView(webView: WKWebView, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge, completionHandler: (NSURLSessionAuthChallengeDisposition, NSURLCredential?) -> Void)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}
class WKNavigationResponse : NSObject {
  var forMainFrame: Bool { get }
  @NSCopying var response: NSURLResponse { get }
  var canShowMIMEType: Bool { get }
  init()
}
class WKPreferences : NSObject {
  var minimumFontSize: CGFloat
  var javaScriptEnabled: Bool
  var javaScriptCanOpenWindowsAutomatically: Bool
  var javaEnabled: Bool
  var plugInsEnabled: Bool
  init()
}
class WKProcessPool : NSObject {
  init()
}
class WKScriptMessage : NSObject {
  @NSCopying var body: AnyObject { get }
  weak var webView: @sil_weak WKWebView? { get }
  @NSCopying var frameInfo: WKFrameInfo { get }
  var name: String { get }
  init()
}
protocol WKScriptMessageHandler : NSObjectProtocol {
  func userContentController(userContentController: WKUserContentController, didReceiveScriptMessage message: WKScriptMessage)
}
class WKSecurityOrigin : NSObject {
  var `protocol`: String { get }
  var host: String { get }
  var port: Int { get }
}
protocol WKUIDelegate : NSObjectProtocol {
  optional func webView(webView: WKWebView, createWebViewWithConfiguration configuration: WKWebViewConfiguration, forNavigationAction navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView?
  optional func webViewDidClose(webView: WKWebView)
  optional func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void)
  optional func webView(webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: (Bool) -> Void)
  optional func webView(webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: (String?) -> Void)
}
class WKUserContentController : NSObject {
  var userScripts: [WKUserScript] { get }
  func addUserScript(userScript: WKUserScript)
  func removeAllUserScripts()
  func addScriptMessageHandler(scriptMessageHandler: WKScriptMessageHandler, name: String)
  func removeScriptMessageHandlerForName(name: String)
  init()
}
enum WKUserScriptInjectionTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AtDocumentStart
  case AtDocumentEnd
}
class WKUserScript : NSObject, NSCopying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var forMainFrameOnly: Bool { get }
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class WKWebView : NSView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var UIDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func loadRequest(request: NSURLRequest) -> WKNavigation?
  func loadFileURL(URL: NSURL, allowingReadAccessToURL readAccessURL: NSURL) -> WKNavigation?
  func loadHTMLString(string: String, baseURL: NSURL?) -> WKNavigation?
  func loadData(data: NSData, MIMEType: String, characterEncodingName: String, baseURL: NSURL) -> WKNavigation?
  func goToBackForwardListItem(item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  @NSCopying var URL: NSURL? { get }
  var loading: Bool { get }
  var estimatedProgress: Double { get }
  var hasOnlySecureContent: Bool { get }
  var certificateChain: [AnyObject] { get }
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  func goBack() -> WKNavigation?
  func goForward() -> WKNavigation?
  func reload() -> WKNavigation?
  func reloadFromOrigin() -> WKNavigation?
  func stopLoading()
  func evaluateJavaScript(javaScriptString: String, completionHandler: ((AnyObject?, NSError?) -> Void)?)
  var allowsBackForwardNavigationGestures: Bool
  var customUserAgent: String?
  var allowsLinkPreview: Bool
  var allowsMagnification: Bool
  var magnification: CGFloat
  func setMagnification(magnification: CGFloat, centeredAtPoint point: CGPoint)
  convenience init(frame frameRect: NSRect)
  convenience init()
}
extension WKWebView : NSUserInterfaceValidations {
  @IBAction func goBack(sender: AnyObject?)
  @IBAction func goForward(sender: AnyObject?)
  @IBAction func reload(sender: AnyObject?)
  @IBAction func reloadFromOrigin(sender: AnyObject?)
  @IBAction func stopLoading(sender: AnyObject?)
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
}
class WKWebViewConfiguration : NSObject, NSCopying {
  var processPool: WKProcessPool
  var preferences: WKPreferences
  var userContentController: WKUserContentController
  var websiteDataStore: WKWebsiteDataStore
  var suppressesIncrementalRendering: Bool
  var applicationNameForUserAgent: String?
  var allowsAirPlayForMediaPlayback: Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension WKWebViewConfiguration {
}
let WKWebsiteDataTypeDiskCache: String
let WKWebsiteDataTypeMemoryCache: String
let WKWebsiteDataTypeOfflineWebApplicationCache: String
let WKWebsiteDataTypeCookies: String
let WKWebsiteDataTypeSessionStorage: String
let WKWebsiteDataTypeLocalStorage: String
let WKWebsiteDataTypeWebSQLDatabases: String
let WKWebsiteDataTypeIndexedDBDatabases: String
class WKWebsiteDataRecord : NSObject {
  var displayName: String { get }
  var dataTypes: Set<String> { get }
  init()
}
class WKWebsiteDataStore : NSObject {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistentDataStore() -> WKWebsiteDataStore
  var persistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecordsOfTypes(dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeDataOfTypes(dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)
  func removeDataOfTypes(websiteDataTypes: Set<String>, modifiedSince date: NSDate, completionHandler: () -> Void)
}
class WKWindowFeatures : NSObject {
  var menuBarVisibility: NSNumber? { get }
  var statusBarVisibility: NSNumber? { get }
  var toolbarsVisibility: NSNumber? { get }
  var allowsResizing: NSNumber? { get }
  var x: NSNumber? { get }
  var y: NSNumber? { get }
  var width: NSNumber? { get }
  var height: NSNumber? { get }
  init()
}
let WebArchivePboardType: String
class WebArchive : NSObject, NSCoding, NSCopying {
  init!(mainResource: WebResource!, subresources: [AnyObject]!, subframeArchives: [AnyObject]!)
  init!(data: NSData!)
  var mainResource: WebResource! { get }
  var subresources: [AnyObject]! { get }
  var subframeArchives: [AnyObject]! { get }
  @NSCopying var data: NSData! { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class WebBackForwardList : NSObject {
  func addItem(item: WebHistoryItem!)
  func goBack()
  func goForward()
  func goToItem(item: WebHistoryItem!)
  var backItem: WebHistoryItem! { get }
  var currentItem: WebHistoryItem! { get }
  var forwardItem: WebHistoryItem! { get }
  func backListWithLimit(limit: Int32) -> [AnyObject]!
  func forwardListWithLimit(limit: Int32) -> [AnyObject]!
  var capacity: Int32
  var backListCount: Int32 { get }
  var forwardListCount: Int32 { get }
  func containsItem(item: WebHistoryItem!) -> Bool
  func itemAtIndex(index: Int32) -> WebHistoryItem!
  init()
}
extension WebBackForwardList {
  func setPageCacheSize(size: Int)
  func pageCacheSize() -> Int
}
extension DOMNode {
  var webArchive: WebArchive! { get }
}
extension DOMDocument {
  var webFrame: WebFrame! { get }
  func URLWithAttributeString(string: String!) -> NSURL!
}
extension DOMRange {
  var webArchive: WebArchive! { get }
  var markupString: String! { get }
}
extension DOMHTMLFrameElement {
  var contentFrame: WebFrame! { get }
}
extension DOMHTMLIFrameElement {
  var contentFrame: WebFrame! { get }
}
extension DOMHTMLObjectElement {
  var contentFrame: WebFrame! { get }
}
class WebDataSource : NSObject {
  init!(request: NSURLRequest!)
  @NSCopying var data: NSData! { get }
  var representation: WebDocumentRepresentation! { get }
  var webFrame: WebFrame! { get }
  var initialRequest: NSURLRequest! { get }
  var request: NSMutableURLRequest! { get }
  var response: NSURLResponse! { get }
  var textEncodingName: String! { get }
  var loading: Bool { get }
  var pageTitle: String! { get }
  var unreachableURL: NSURL! { get }
  var webArchive: WebArchive! { get }
  var mainResource: WebResource! { get }
  var subresources: [AnyObject]! { get }
  func subresourceForURL(URL: NSURL!) -> WebResource!
  func addSubresource(subresource: WebResource!)
  init()
}
protocol WebDocumentView : NSObjectProtocol {
  func setDataSource(dataSource: WebDataSource!)
  func dataSourceUpdated(dataSource: WebDataSource!)
  func setNeedsLayout(flag: Bool)
  func layout()
  func viewWillMoveToHostWindow(hostWindow: NSWindow!)
  func viewDidMoveToHostWindow()
}
protocol WebDocumentSearching : NSObjectProtocol {
  func searchFor(string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
}
protocol WebDocumentText : NSObjectProtocol {
  func supportsTextEncoding() -> Bool
  func string() -> String!
  func attributedString() -> NSAttributedString!
  func selectedString() -> String!
  func selectedAttributedString() -> NSAttributedString!
  func selectAll()
  func deselectAll()
}
protocol WebDocumentRepresentation : NSObjectProtocol {
  func setDataSource(dataSource: WebDataSource!)
  func receivedData(data: NSData!, withDataSource dataSource: WebDataSource!)
  func receivedError(error: NSError!, withDataSource dataSource: WebDataSource!)
  func finishedLoadingWithDataSource(dataSource: WebDataSource!)
  func canProvideDocumentSource() -> Bool
  func documentSource() -> String!
  func title() -> String!
}
class WebDownload : NSURLDownload {
  init(request: NSURLRequest, delegate: NSURLDownloadDelegate?)
  init(resumeData: NSData, delegate: NSURLDownloadDelegate?, path: String)
  init()
}
protocol WebDownloadDelegate : NSURLDownloadDelegate {
  optional func downloadWindowForAuthenticationSheet(download: WebDownload!) -> NSWindow!
}
enum WebViewInsertAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Typed
  case Pasted
  case Dropped
}
protocol WebEditingDelegate : NSObjectProtocol {
}
extension NSObject {
  class func webView(webView: WebView!, shouldBeginEditingInDOMRange range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldBeginEditingInDOMRange range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldEndEditingInDOMRange range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldEndEditingInDOMRange range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldInsertNode node: DOMNode!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  func webView(webView: WebView!, shouldInsertNode node: DOMNode!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  class func webView(webView: WebView!, shouldInsertText text: String!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  func webView(webView: WebView!, shouldInsertText text: String!, replacingDOMRange range: DOMRange!, givenAction action: WebViewInsertAction) -> Bool
  class func webView(webView: WebView!, shouldDeleteDOMRange range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldDeleteDOMRange range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, toDOMRange proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  func webView(webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, toDOMRange proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  class func webView(webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsInDOMRange range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsInDOMRange range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  func webView(webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  class func webView(webView: WebView!, doCommandBySelector selector: Selector) -> Bool
  func webView(webView: WebView!, doCommandBySelector selector: Selector) -> Bool
  class func webViewDidBeginEditing(notification: NSNotification!)
  func webViewDidBeginEditing(notification: NSNotification!)
  class func webViewDidChange(notification: NSNotification!)
  func webViewDidChange(notification: NSNotification!)
  class func webViewDidEndEditing(notification: NSNotification!)
  func webViewDidEndEditing(notification: NSNotification!)
  class func webViewDidChangeTypingStyle(notification: NSNotification!)
  func webViewDidChangeTypingStyle(notification: NSNotification!)
  class func webViewDidChangeSelection(notification: NSNotification!)
  func webViewDidChangeSelection(notification: NSNotification!)
  class func undoManagerForWebView(webView: WebView!) -> NSUndoManager!
  func undoManagerForWebView(webView: WebView!) -> NSUndoManager!
}
class WebFrame : NSObject {
  init!(name: String!, webFrameView view: WebFrameView!, webView: WebView!)
  var name: String! { get }
  var webView: WebView! { get }
  var frameView: WebFrameView! { get }
  var DOMDocument: DOMDocument! { get }
  var frameElement: DOMHTMLElement! { get }
  func loadRequest(request: NSURLRequest!)
  func loadData(data: NSData!, MIMEType: String!, textEncodingName encodingName: String!, baseURL URL: NSURL!)
  func loadHTMLString(string: String!, baseURL URL: NSURL!)
  func loadAlternateHTMLString(string: String!, baseURL: NSURL!, forUnreachableURL unreachableURL: NSURL!)
  func loadArchive(archive: WebArchive!)
  var dataSource: WebDataSource? { get }
  var provisionalDataSource: WebDataSource! { get }
  func stopLoading()
  func reload()
  func reloadFromOrigin()
  func findFrameNamed(name: String!) -> WebFrame!
  var parentFrame: WebFrame! { get }
  var childFrames: [AnyObject]! { get }
  var windowObject: WebScriptObject! { get }
  var globalContext: JSGlobalContextRef { get }
  var javaScriptContext: JSContext! { get }
  init()
}
protocol WebFrameLoadDelegate : NSObjectProtocol {
  optional func webView(sender: WebView!, didStartProvisionalLoadForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveServerRedirectForProvisionalLoadForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didFailProvisionalLoadWithError error: NSError!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didCommitLoadForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveTitle title: String!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didReceiveIcon image: NSImage!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didFinishLoadForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didFailLoadWithError error: NSError!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didChangeLocationWithinPageForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, willPerformClientRedirectToURL URL: NSURL!, delay seconds: NSTimeInterval, fireDate date: NSDate!, forFrame frame: WebFrame!)
  optional func webView(sender: WebView!, didCancelClientRedirectForFrame frame: WebFrame!)
  optional func webView(sender: WebView!, willCloseFrame frame: WebFrame!)
  optional func webView(webView: WebView!, didClearWindowObject windowObject: WebScriptObject!, forFrame frame: WebFrame!)
  optional func webView(webView: WebView!, didCreateJavaScriptContext context: JSContext!, forFrame frame: WebFrame!)
}
class WebFrameView : NSView {
  var webFrame: WebFrame! { get }
  var documentView: NSView! { get }
  var allowsScrolling: Bool
  var canPrintHeadersAndFooters: Bool { get }
  func printOperationWithPrintInfo(printInfo: NSPrintInfo!) -> NSPrintOperation!
  var documentViewShouldHandlePrint: Bool { get }
  func printDocumentView()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
let WebHistoryItemsAddedNotification: String
let WebHistoryItemsRemovedNotification: String
let WebHistoryAllItemsRemovedNotification: String
let WebHistoryLoadedNotification: String
let WebHistorySavedNotification: String
let WebHistoryItemsKey: String
class WebHistory : NSObject {
  class func optionalSharedHistory() -> WebHistory!
  class func setOptionalSharedHistory(history: WebHistory!)
  func loadFromURL(URL: NSURL!) throws
  func saveToURL(URL: NSURL!) throws
  func addItems(newItems: [AnyObject]!)
  func removeItems(items: [AnyObject]!)
  func removeAllItems()
  var orderedLastVisitedDays: [AnyObject]! { get }
  func orderedItemsLastVisitedOnDay(calendarDate: NSCalendarDate!) -> [AnyObject]!
  func itemForURL(URL: NSURL!) -> WebHistoryItem!
  var historyItemLimit: Int32
  var historyAgeInDaysLimit: Int32
  init()
}
let WebHistoryItemChangedNotification: String
class WebHistoryItem : NSObject, NSCopying {
  init!(URLString: String!, title: String!, lastVisitedTimeInterval time: NSTimeInterval)
  var originalURLString: String! { get }
  var URLString: String! { get }
  var title: String! { get }
  var lastVisitedTimeInterval: NSTimeInterval { get }
  var alternateTitle: String!
  var icon: NSImage! { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
let WebKitErrorDomain: String
let WebKitErrorMIMETypeKey: String
let WebKitErrorPlugInNameKey: String
let WebKitErrorPlugInPageURLStringKey: String
var WebKitErrorCannotShowMIMEType: Int { get }
var WebKitErrorCannotShowURL: Int { get }
var WebKitErrorFrameLoadInterruptedByPolicyChange: Int { get }
var WebKitErrorCannotFindPlugIn: Int { get }
var WebKitErrorCannotLoadPlugIn: Int { get }
var WebKitErrorJavaUnavailable: Int { get }
var WebKitErrorBlockedPlugInVersion: Int { get }
extension NSObject {
  class func webPlugInInitialize()
  func webPlugInInitialize()
  class func webPlugInStart()
  func webPlugInStart()
  class func webPlugInStop()
  func webPlugInStop()
  class func webPlugInDestroy()
  func webPlugInDestroy()
  class func webPlugInSetIsSelected(isSelected: Bool)
  func webPlugInSetIsSelected(isSelected: Bool)
  var objectForWebScript: AnyObject! { get }
  class func webPlugInMainResourceDidReceiveResponse(response: NSURLResponse!)
  func webPlugInMainResourceDidReceiveResponse(response: NSURLResponse!)
  class func webPlugInMainResourceDidReceiveData(data: NSData!)
  func webPlugInMainResourceDidReceiveData(data: NSData!)
  class func webPlugInMainResourceDidFailWithError(error: NSError!)
  func webPlugInMainResourceDidFailWithError(error: NSError!)
  class func webPlugInMainResourceDidFinishLoading()
  func webPlugInMainResourceDidFinishLoading()
  class func objectForWebScript() -> AnyObject!
}
extension NSObject {
  class func webPlugInContainerLoadRequest(request: NSURLRequest!, inFrame target: String!)
  func webPlugInContainerLoadRequest(request: NSURLRequest!, inFrame target: String!)
  class func webPlugInContainerShowStatus(message: String!)
  func webPlugInContainerShowStatus(message: String!)
  var webPlugInContainerSelectionColor: NSColor! { get }
  var webFrame: WebFrame! { get }
  class func webPlugInContainerSelectionColor() -> NSColor!
  class func webFrame() -> WebFrame!
}
let WebPlugInBaseURLKey: String
let WebPlugInAttributesKey: String
let WebPlugInContainerKey: String
let WebPlugInContainingElementKey: String
let WebPlugInShouldLoadMainResourceKey: String
protocol WebPlugInViewFactory : NSObjectProtocol {
  static func plugInViewWithArguments(arguments: [NSObject : AnyObject]!) -> NSView!
}
enum WebNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkClicked
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
let WebActionNavigationTypeKey: String
let WebActionElementKey: String
let WebActionButtonKey: String
let WebActionModifierFlagsKey: String
let WebActionOriginalURLKey: String
protocol WebPolicyDecisionListener : NSObjectProtocol {
  func use()
  func download()
  func ignore()
}
protocol WebPolicyDelegate : NSObjectProtocol {
  optional func webView(webView: WebView!, decidePolicyForNavigationAction actionInformation: [NSObject : AnyObject]!, request: NSURLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(webView: WebView!, decidePolicyForNewWindowAction actionInformation: [NSObject : AnyObject]!, request: NSURLRequest!, newFrameName frameName: String!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(webView: WebView!, decidePolicyForMIMEType type: String!, request: NSURLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(webView: WebView!, unableToImplementPolicyWithError error: NSError!, frame: WebFrame!)
}
enum WebCacheModel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DocumentViewer
  case DocumentBrowser
  case PrimaryWebBrowser
}
let WebPreferencesChangedNotification: String
class WebPreferences : NSObject, NSCoding {
  class func standardPreferences() -> WebPreferences!
  init!(identifier anIdentifier: String!)
  var identifier: String! { get }
  var standardFontFamily: String!
  var fixedFontFamily: String!
  var serifFontFamily: String!
  var sansSerifFontFamily: String!
  var cursiveFontFamily: String!
  var fantasyFontFamily: String!
  var defaultFontSize: Int32
  var defaultFixedFontSize: Int32
  var minimumFontSize: Int32
  var minimumLogicalFontSize: Int32
  var defaultTextEncodingName: String!
  var userStyleSheetEnabled: Bool
  var userStyleSheetLocation: NSURL!
  var javaEnabled: Bool
  var javaScriptEnabled: Bool
  var javaScriptCanOpenWindowsAutomatically: Bool
  var plugInsEnabled: Bool
  var allowsAnimatedImages: Bool
  var allowsAnimatedImageLooping: Bool
  var loadsImagesAutomatically: Bool
  var autosaves: Bool
  var shouldPrintBackgrounds: Bool
  var privateBrowsingEnabled: Bool
  var tabsToLinks: Bool
  var usesPageCache: Bool
  var cacheModel: WebCacheModel
  var suppressesIncrementalRendering: Bool
  var allowsAirPlayForMediaPlayback: Bool
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class WebResource : NSObject, NSCoding, NSCopying {
  init!(data: NSData!, URL: NSURL!, MIMEType: String!, textEncodingName: String!, frameName: String!)
  @NSCopying var data: NSData! { get }
  var URL: NSURL! { get }
  var MIMEType: String! { get }
  var textEncodingName: String! { get }
  var frameName: String! { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
protocol WebResourceLoadDelegate : NSObjectProtocol {
  optional func webView(sender: WebView!, identifierForInitialRequest request: NSURLRequest!, fromDataSource dataSource: WebDataSource!) -> AnyObject!
  optional func webView(sender: WebView!, resource identifier: AnyObject!, willSendRequest request: NSURLRequest!, redirectResponse: NSURLResponse!, fromDataSource dataSource: WebDataSource!) -> NSURLRequest!
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge!, fromDataSource dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge!, fromDataSource dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceiveResponse response: NSURLResponse!, fromDataSource dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceiveContentLength length: Int, fromDataSource dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didFinishLoadingFromDataSource dataSource: WebDataSource!)
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didFailLoadingWithError error: NSError!, fromDataSource dataSource: WebDataSource!)
  optional func webView(sender: WebView!, plugInFailedWithError error: NSError!, dataSource: WebDataSource!)
}
extension NSObject {
  class func webScriptNameForSelector(selector: Selector) -> String!
  class func isSelectorExcludedFromWebScript(selector: Selector) -> Bool
  class func webScriptNameForKey(name: UnsafePointer<Int8>) -> String!
  class func isKeyExcludedFromWebScript(name: UnsafePointer<Int8>) -> Bool
  class func invokeUndefinedMethodFromWebScript(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  func invokeUndefinedMethodFromWebScript(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  class func invokeDefaultMethodWithArguments(arguments: [AnyObject]!) -> AnyObject!
  func invokeDefaultMethodWithArguments(arguments: [AnyObject]!) -> AnyObject!
  class func finalizeForWebScript()
  func finalizeForWebScript()
}
class WebScriptObject : NSObject {
  class func throwException(exceptionMessage: String!) -> Bool
  func JSObject() -> JSObjectRef
  func callWebScriptMethod(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  func evaluateWebScript(script: String!) -> AnyObject!
  func removeWebScriptKey(name: String!)
  func stringRepresentation() -> String!
  func webScriptValueAtIndex(index: UInt32) -> AnyObject!
  func setWebScriptValueAtIndex(index: UInt32, value: AnyObject!)
  func setException(description: String!)
  func JSValue() -> JSValue!
  init()
}
class WebUndefined : NSObject, NSCoding, NSCopying {
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
var WebMenuItemTagOpenLinkInNewWindow: Int { get }
var WebMenuItemTagDownloadLinkToDisk: Int { get }
var WebMenuItemTagCopyLinkToClipboard: Int { get }
var WebMenuItemTagOpenImageInNewWindow: Int { get }
var WebMenuItemTagDownloadImageToDisk: Int { get }
var WebMenuItemTagCopyImageToClipboard: Int { get }
var WebMenuItemTagOpenFrameInNewWindow: Int { get }
var WebMenuItemTagCopy: Int { get }
var WebMenuItemTagGoBack: Int { get }
var WebMenuItemTagGoForward: Int { get }
var WebMenuItemTagStop: Int { get }
var WebMenuItemTagReload: Int { get }
var WebMenuItemTagCut: Int { get }
var WebMenuItemTagPaste: Int { get }
var WebMenuItemTagSpellingGuess: Int { get }
var WebMenuItemTagNoGuessesFound: Int { get }
var WebMenuItemTagIgnoreSpelling: Int { get }
var WebMenuItemTagLearnSpelling: Int { get }
var WebMenuItemTagOther: Int { get }
var WebMenuItemTagSearchInSpotlight: Int { get }
var WebMenuItemTagSearchWeb: Int { get }
var WebMenuItemTagLookUpInDictionary: Int { get }
var WebMenuItemTagOpenWithDefaultApplication: Int { get }
var WebMenuItemPDFActualSize: Int { get }
var WebMenuItemPDFZoomIn: Int { get }
var WebMenuItemPDFZoomOut: Int { get }
var WebMenuItemPDFAutoSize: Int { get }
var WebMenuItemPDFSinglePage: Int { get }
var WebMenuItemPDFFacingPages: Int { get }
var WebMenuItemPDFContinuous: Int { get }
var WebMenuItemPDFNextPage: Int { get }
var WebMenuItemPDFPreviousPage: Int { get }
struct WebDragDestinationAction : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: WebDragDestinationAction { get }
  static var DHTML: WebDragDestinationAction { get }
  static var Edit: WebDragDestinationAction { get }
  static var Load: WebDragDestinationAction { get }
  static var Any: WebDragDestinationAction { get }
}
struct WebDragSourceAction : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: WebDragSourceAction { get }
  static var DHTML: WebDragSourceAction { get }
  static var Image: WebDragSourceAction { get }
  static var Link: WebDragSourceAction { get }
  static var Selection: WebDragSourceAction { get }
  static var Any: WebDragSourceAction { get }
}
protocol WebOpenPanelResultListener : NSObjectProtocol {
  func chooseFilename(fileName: String!)
  func chooseFilenames(fileNames: [AnyObject]!)
  func cancel()
}
protocol WebUIDelegate : NSObjectProtocol {
  optional func webView(sender: WebView!, createWebViewWithRequest request: NSURLRequest!) -> WebView!
  optional func webViewShow(sender: WebView!)
  optional func webView(sender: WebView!, createWebViewModalDialogWithRequest request: NSURLRequest!) -> WebView!
  optional func webViewRunModal(sender: WebView!)
  optional func webViewClose(sender: WebView!)
  optional func webViewFocus(sender: WebView!)
  optional func webViewUnfocus(sender: WebView!)
  optional func webViewFirstResponder(sender: WebView!) -> NSResponder!
  optional func webView(sender: WebView!, makeFirstResponder responder: NSResponder!)
  optional func webView(sender: WebView!, setStatusText text: String!)
  optional func webViewStatusText(sender: WebView!) -> String!
  optional func webViewAreToolbarsVisible(sender: WebView!) -> Bool
  optional func webView(sender: WebView!, setToolbarsVisible visible: Bool)
  optional func webViewIsStatusBarVisible(sender: WebView!) -> Bool
  optional func webView(sender: WebView!, setStatusBarVisible visible: Bool)
  optional func webViewIsResizable(sender: WebView!) -> Bool
  optional func webView(sender: WebView!, setResizable resizable: Bool)
  optional func webView(sender: WebView!, setFrame frame: NSRect)
  optional func webViewFrame(sender: WebView!) -> NSRect
  optional func webView(sender: WebView!, runJavaScriptAlertPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!)
  optional func webView(sender: WebView!, runJavaScriptConfirmPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!) -> Bool
  optional func webView(sender: WebView!, runJavaScriptTextInputPanelWithPrompt prompt: String!, defaultText: String!, initiatedByFrame frame: WebFrame!) -> String!
  optional func webView(sender: WebView!, runBeforeUnloadConfirmPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!) -> Bool
  optional func webView(sender: WebView!, runOpenPanelForFileButtonWithResultListener resultListener: WebOpenPanelResultListener!)
  optional func webView(sender: WebView!, runOpenPanelForFileButtonWithResultListener resultListener: WebOpenPanelResultListener!, allowMultipleFiles: Bool)
  optional func webView(sender: WebView!, mouseDidMoveOverElement elementInformation: [NSObject : AnyObject]!, modifierFlags: Int)
  optional func webView(sender: WebView!, contextMenuItemsForElement element: [NSObject : AnyObject]!, defaultMenuItems: [AnyObject]!) -> [AnyObject]!
  optional func webView(webView: WebView!, validateUserInterfaceItem item: NSValidatedUserInterfaceItem!, defaultValidation: Bool) -> Bool
  optional func webView(webView: WebView!, shouldPerformAction action: Selector, fromSender sender: AnyObject!) -> Bool
  optional func webView(webView: WebView!, dragDestinationActionMaskForDraggingInfo draggingInfo: NSDraggingInfo!) -> Int
  optional func webView(webView: WebView!, willPerformDragDestinationAction action: WebDragDestinationAction, forDraggingInfo draggingInfo: NSDraggingInfo!)
  optional func webView(webView: WebView!, dragSourceActionMaskForPoint point: NSPoint) -> Int
  optional func webView(webView: WebView!, willPerformDragSourceAction action: WebDragSourceAction, fromPoint point: NSPoint, withPasteboard pasteboard: NSPasteboard!)
  optional func webView(sender: WebView!, printFrameView frameView: WebFrameView!)
  optional func webViewHeaderHeight(sender: WebView!) -> Float
  optional func webViewFooterHeight(sender: WebView!) -> Float
  optional func webView(sender: WebView!, drawHeaderInRect rect: NSRect)
  optional func webView(sender: WebView!, drawFooterInRect rect: NSRect)
}
let WebElementDOMNodeKey: String
let WebElementFrameKey: String
let WebElementImageAltStringKey: String
let WebElementImageKey: String
let WebElementImageRectKey: String
let WebElementImageURLKey: String
let WebElementIsSelectedKey: String
let WebElementLinkURLKey: String
let WebElementLinkTargetFrameKey: String
let WebElementLinkTitleKey: String
let WebElementLinkLabelKey: String
let WebViewProgressStartedNotification: String
let WebViewProgressEstimateChangedNotification: String
let WebViewProgressFinishedNotification: String
class WebView : NSView {
  class func canShowMIMEType(MIMEType: String!) -> Bool
  class func canShowMIMETypeAsHTML(MIMEType: String!) -> Bool
  class func MIMETypesShownAsHTML() -> [AnyObject]!
  class func setMIMETypesShownAsHTML(MIMETypes: [AnyObject]!)
  class func URLFromPasteboard(pasteboard: NSPasteboard!) -> NSURL!
  class func URLTitleFromPasteboard(pasteboard: NSPasteboard!) -> String!
  class func registerURLSchemeAsLocal(scheme: String!)
  init!(frame: NSRect, frameName: String!, groupName: String!)
  func close()
  var shouldCloseWithWindow: Bool
  unowned(unsafe) var UIDelegate: @sil_unmanaged WebUIDelegate!
  unowned(unsafe) var resourceLoadDelegate: @sil_unmanaged WebResourceLoadDelegate!
  unowned(unsafe) var downloadDelegate: @sil_unmanaged WebDownloadDelegate!
  unowned(unsafe) var frameLoadDelegate: @sil_unmanaged WebFrameLoadDelegate!
  unowned(unsafe) var policyDelegate: @sil_unmanaged WebPolicyDelegate!
  var mainFrame: WebFrame! { get }
  var selectedFrame: WebFrame! { get }
  var backForwardList: WebBackForwardList! { get }
  func setMaintainsBackForwardList(flag: Bool)
  func goBack() -> Bool
  func goForward() -> Bool
  func goToBackForwardItem(item: WebHistoryItem!) -> Bool
  var textSizeMultiplier: Float
  var applicationNameForUserAgent: String!
  var customUserAgent: String!
  func userAgentForURL(URL: NSURL!) -> String!
  var supportsTextEncoding: Bool { get }
  var customTextEncodingName: String!
  var mediaStyle: String!
  func stringByEvaluatingJavaScriptFromString(script: String!) -> String!
  var windowScriptObject: WebScriptObject! { get }
  var preferences: WebPreferences!
  var preferencesIdentifier: String!
  var hostWindow: NSWindow!
  func searchFor(string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
  class func registerViewClass(viewClass: AnyClass!, representationClass: AnyClass!, forMIMEType MIMEType: String!)
  var groupName: String!
  var estimatedProgress: Double { get }
  var loading: Bool { get }
  func elementAtPoint(point: NSPoint) -> [NSObject : AnyObject]!
  var pasteboardTypesForSelection: [AnyObject]! { get }
  func writeSelectionWithPasteboardTypes(types: [AnyObject]!, toPasteboard pasteboard: NSPasteboard!)
  func pasteboardTypesForElement(element: [NSObject : AnyObject]!) -> [AnyObject]!
  func writeElement(element: [NSObject : AnyObject]!, withPasteboardTypes types: [AnyObject]!, toPasteboard pasteboard: NSPasteboard!)
  func moveDragCaretToPoint(point: NSPoint)
  func removeDragCaret()
  var drawsBackground: Bool
  var shouldUpdateWhileOffscreen: Bool
  var mainFrameURL: String!
  var mainFrameDocument: DOMDocument! { get }
  var mainFrameTitle: String! { get }
  var mainFrameIcon: NSImage! { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension WebView : NSUserInterfaceValidations {
  @IBAction func takeStringURLFrom(sender: AnyObject?)
  @IBAction func stopLoading(sender: AnyObject?)
  @IBAction func reload(sender: AnyObject?)
  @IBAction func reloadFromOrigin(sender: AnyObject?)
  var canGoBack: Bool { get }
  @IBAction func goBack(sender: AnyObject?)
  var canGoForward: Bool { get }
  @IBAction func goForward(sender: AnyObject?)
  var canMakeTextLarger: Bool { get }
  @IBAction func makeTextLarger(sender: AnyObject?)
  var canMakeTextSmaller: Bool { get }
  @IBAction func makeTextSmaller(sender: AnyObject?)
  var canMakeTextStandardSize: Bool { get }
  @IBAction func makeTextStandardSize(sender: AnyObject?)
  @IBAction func toggleContinuousSpellChecking(sender: AnyObject?)
  @IBAction func toggleSmartInsertDelete(sender: AnyObject?)
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
}
let WebViewDidBeginEditingNotification: String
let WebViewDidChangeNotification: String
let WebViewDidEndEditingNotification: String
let WebViewDidChangeTypingStyleNotification: String
let WebViewDidChangeSelectionNotification: String
extension WebView {
  func computedStyleForElement(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func editableDOMRangeForPoint(point: NSPoint) -> DOMRange!
  func setSelectedDOMRange(range: DOMRange!, affinity selectionAffinity: NSSelectionAffinity)
  var selectedDOMRange: DOMRange! { get }
  var selectionAffinity: NSSelectionAffinity { get }
  var maintainsInactiveSelection: Bool { get }
  var editable: Bool
  var typingStyle: DOMCSSStyleDeclaration!
  var smartInsertDeleteEnabled: Bool
  var continuousSpellCheckingEnabled: Bool
  var spellCheckerDocumentTag: Int { get }
  var undoManager: NSUndoManager! { get }
  var editingDelegate: AnyObject!
  func styleDeclarationWithText(text: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func replaceSelectionWithNode(node: DOMNode!)
  func replaceSelectionWithText(text: String!)
  func replaceSelectionWithMarkupString(markupString: String!)
  func replaceSelectionWithArchive(archive: WebArchive!)
  func deleteSelection()
  func applyStyle(style: DOMCSSStyleDeclaration!)
}
extension WebView {
  func copy(sender: AnyObject?)
  func cut(sender: AnyObject?)
  func paste(sender: AnyObject?)
  func copyFont(sender: AnyObject?)
  func pasteFont(sender: AnyObject?)
  func delete(sender: AnyObject?)
  func pasteAsPlainText(sender: AnyObject?)
  func pasteAsRichText(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
  func changeAttributes(sender: AnyObject?)
  func changeDocumentBackgroundColor(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
  func alignCenter(sender: AnyObject?)
  func alignJustified(sender: AnyObject?)
  func alignLeft(sender: AnyObject?)
  func alignRight(sender: AnyObject?)
  func checkSpelling(sender: AnyObject?)
  func showGuessPanel(sender: AnyObject?)
  func performFindPanelAction(sender: AnyObject?)
  func startSpeaking(sender: AnyObject?)
  func stopSpeaking(sender: AnyObject?)
  func moveToBeginningOfSentence(sender: AnyObject?)
  func moveToBeginningOfSentenceAndModifySelection(sender: AnyObject?)
  func moveToEndOfSentence(sender: AnyObject?)
  func moveToEndOfSentenceAndModifySelection(sender: AnyObject?)
  func selectSentence(sender: AnyObject?)
  func overWrite(sender: AnyObject?)
}
