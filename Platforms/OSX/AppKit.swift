
var NSTextReadInapplicableDocumentTypeError: Int { get }
var NSTextWriteInapplicableDocumentTypeError: Int { get }
var NSTextReadWriteErrorMinimum: Int { get }
var NSTextReadWriteErrorMaximum: Int { get }
var NSServiceApplicationNotFoundError: Int { get }
var NSServiceApplicationLaunchFailedError: Int { get }
var NSServiceRequestTimedOutError: Int { get }
var NSServiceInvalidPasteboardDataError: Int { get }
var NSServiceMalformedServiceDictionaryError: Int { get }
var NSServiceMiscellaneousError: Int { get }
var NSServiceErrorMinimum: Int { get }
var NSServiceErrorMaximum: Int { get }
var NSSharingServiceNotConfiguredError: Int { get }
var NSSharingServiceErrorMinimum: Int { get }
var NSSharingServiceErrorMaximum: Int { get }
class NSATSTypesetter : NSTypesetter {
  class func sharedTypesetter() -> NSATSTypesetter
  init()
}
extension NSATSTypesetter {
}
extension NSATSTypesetter {
  var usesFontLeading: Bool
  var typesetterBehavior: NSTypesetterBehavior
  var hyphenationFactor: Float
  var lineFragmentPadding: CGFloat
  func substituteFontForFont(originalFont: NSFont) -> NSFont
  func textTabForGlyphLocation(glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  func layoutParagraphAtPoint(lineFragmentOrigin: UnsafeMutablePointer<NSPoint>) -> Int
  func lineSpacingAfterGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func getLineFragmentRect(lineFragmentRect: UnsafeMutablePointer<NSRect>, usedRect lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
}
extension NSATSTypesetter {
  func willSetLineFragmentRect(lineRect: UnsafeMutablePointer<NSRect>, forGlyphRange glyphRange: NSRange, usedRect: UnsafeMutablePointer<NSRect>, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacterAtIndex(charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacterAtIndex(charIndex: Int) -> Bool
  func hyphenationFactorForGlyphAtIndex(glyphIndex: Int) -> Float
  func hyphenCharacterForGlyphAtIndex(glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyphAtIndex(glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSATSTypesetter {
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsInRange(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect, baselineOffset: CGFloat)
  func substituteGlyphsInRange(glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  func deleteGlyphsInRange(glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
extension NSObject {
  class func accessibilityAttributeNames() -> [AnyObject]
  func accessibilityAttributeNames() -> [AnyObject]
  class func accessibilityAttributeValue(attribute: String) -> AnyObject?
  func accessibilityAttributeValue(attribute: String) -> AnyObject?
  class func accessibilityIsAttributeSettable(attribute: String) -> Bool
  func accessibilityIsAttributeSettable(attribute: String) -> Bool
  class func accessibilitySetValue(value: AnyObject?, forAttribute attribute: String)
  func accessibilitySetValue(value: AnyObject?, forAttribute attribute: String)
  class func accessibilityParameterizedAttributeNames() -> [AnyObject]
  func accessibilityParameterizedAttributeNames() -> [AnyObject]
  class func accessibilityAttributeValue(attribute: String, forParameter parameter: AnyObject?) -> AnyObject?
  func accessibilityAttributeValue(attribute: String, forParameter parameter: AnyObject?) -> AnyObject?
  class func accessibilityActionNames() -> [AnyObject]
  func accessibilityActionNames() -> [AnyObject]
  class func accessibilityActionDescription(action: String) -> String?
  func accessibilityActionDescription(action: String) -> String?
  class func accessibilityPerformAction(action: String)
  func accessibilityPerformAction(action: String)
  class func accessibilityIsIgnored() -> Bool
  func accessibilityIsIgnored() -> Bool
  class func accessibilityHitTest(point: NSPoint) -> AnyObject?
  func accessibilityHitTest(point: NSPoint) -> AnyObject?
  var accessibilityFocusedUIElement: AnyObject? { get }
  class func accessibilityIndexOfChild(child: AnyObject) -> Int
  func accessibilityIndexOfChild(child: AnyObject) -> Int
  class func accessibilityArrayAttributeCount(attribute: String) -> Int
  func accessibilityArrayAttributeCount(attribute: String) -> Int
  class func accessibilityArrayAttributeValues(attribute: String, index: Int, maxCount: Int) -> [AnyObject]
  func accessibilityArrayAttributeValues(attribute: String, index: Int, maxCount: Int) -> [AnyObject]
  var accessibilityNotifiesWhenDestroyed: Bool { get }
  class func accessibilityFocusedUIElement() -> AnyObject?
  class func accessibilityNotifiesWhenDestroyed() -> Bool
}
extension NSWorkspace {
  var accessibilityDisplayShouldIncreaseContrast: Bool { get }
  var accessibilityDisplayShouldDifferentiateWithoutColor: Bool { get }
  var accessibilityDisplayShouldReduceTransparency: Bool { get }
}
let NSWorkspaceAccessibilityDisplayOptionsDidChangeNotification: String
extension NSObject {
  class func accessibilitySetOverrideValue(value: AnyObject?, forAttribute attribute: String) -> Bool
  func accessibilitySetOverrideValue(value: AnyObject?, forAttribute attribute: String) -> Bool
}
func NSAccessibilityFrameInView(parentView: NSView, _ frame: NSRect) -> NSRect
func NSAccessibilityPointInView(parentView: NSView, _ point: NSPoint) -> NSPoint
func NSAccessibilitySetMayContainProtectedContent(flag: Bool) -> Bool
func NSAccessibilityRoleDescription(role: String, _ subrole: String?) -> String?
func NSAccessibilityRoleDescriptionForUIElement(element: AnyObject) -> String?
func NSAccessibilityActionDescription(action: String) -> String?
func NSAccessibilityRaiseBadArgumentException(element: AnyObject!, _ attribute: String!, _ value: AnyObject!)
func NSAccessibilityUnignoredAncestor(element: AnyObject) -> AnyObject?
func NSAccessibilityUnignoredDescendant(element: AnyObject) -> AnyObject?
func NSAccessibilityUnignoredChildren(originalChildren: [AnyObject]) -> [AnyObject]
func NSAccessibilityUnignoredChildrenForOnlyChild(originalChild: AnyObject) -> [AnyObject]
func NSAccessibilityPostNotification(element: AnyObject, _ notification: String)
let NSAccessibilityErrorCodeExceptionInfo: String
let NSAccessibilityRoleAttribute: String
let NSAccessibilityRoleDescriptionAttribute: String
let NSAccessibilitySubroleAttribute: String
let NSAccessibilityHelpAttribute: String
let NSAccessibilityValueAttribute: String
let NSAccessibilityMinValueAttribute: String
let NSAccessibilityMaxValueAttribute: String
let NSAccessibilityEnabledAttribute: String
let NSAccessibilityFocusedAttribute: String
let NSAccessibilityParentAttribute: String
let NSAccessibilityChildrenAttribute: String
let NSAccessibilityWindowAttribute: String
let NSAccessibilityTopLevelUIElementAttribute: String
let NSAccessibilitySelectedChildrenAttribute: String
let NSAccessibilityVisibleChildrenAttribute: String
let NSAccessibilityPositionAttribute: String
let NSAccessibilitySizeAttribute: String
let NSAccessibilityContentsAttribute: String
let NSAccessibilityTitleAttribute: String
let NSAccessibilityDescriptionAttribute: String
let NSAccessibilityShownMenuAttribute: String
let NSAccessibilityValueDescriptionAttribute: String
let NSAccessibilitySharedFocusElementsAttribute: String
let NSAccessibilityPreviousContentsAttribute: String
let NSAccessibilityNextContentsAttribute: String
let NSAccessibilityHeaderAttribute: String
let NSAccessibilityEditedAttribute: String
let NSAccessibilityTabsAttribute: String
let NSAccessibilityHorizontalScrollBarAttribute: String
let NSAccessibilityVerticalScrollBarAttribute: String
let NSAccessibilityOverflowButtonAttribute: String
let NSAccessibilityIncrementButtonAttribute: String
let NSAccessibilityDecrementButtonAttribute: String
let NSAccessibilityFilenameAttribute: String
let NSAccessibilityExpandedAttribute: String
let NSAccessibilitySelectedAttribute: String
let NSAccessibilitySplittersAttribute: String
let NSAccessibilityDocumentAttribute: String
let NSAccessibilityActivationPointAttribute: String
let NSAccessibilityURLAttribute: String
let NSAccessibilityIndexAttribute: String
let NSAccessibilityRowCountAttribute: String
let NSAccessibilityColumnCountAttribute: String
let NSAccessibilityOrderedByRowAttribute: String
let NSAccessibilityWarningValueAttribute: String
let NSAccessibilityCriticalValueAttribute: String
let NSAccessibilityPlaceholderValueAttribute: String
let NSAccessibilityContainsProtectedContentAttribute: String
let NSAccessibilityAlternateUIVisibleAttribute: String
let NSAccessibilityTitleUIElementAttribute: String
let NSAccessibilityServesAsTitleForUIElementsAttribute: String
let NSAccessibilityLinkedUIElementsAttribute: String
let NSAccessibilitySelectedTextAttribute: String
let NSAccessibilitySelectedTextRangeAttribute: String
let NSAccessibilityNumberOfCharactersAttribute: String
let NSAccessibilityVisibleCharacterRangeAttribute: String
let NSAccessibilitySharedTextUIElementsAttribute: String
let NSAccessibilitySharedCharacterRangeAttribute: String
let NSAccessibilityInsertionPointLineNumberAttribute: String
let NSAccessibilitySelectedTextRangesAttribute: String
let NSAccessibilityLineForIndexParameterizedAttribute: String
let NSAccessibilityRangeForLineParameterizedAttribute: String
let NSAccessibilityStringForRangeParameterizedAttribute: String
let NSAccessibilityRangeForPositionParameterizedAttribute: String
let NSAccessibilityRangeForIndexParameterizedAttribute: String
let NSAccessibilityBoundsForRangeParameterizedAttribute: String
let NSAccessibilityRTFForRangeParameterizedAttribute: String
let NSAccessibilityStyleRangeForIndexParameterizedAttribute: String
let NSAccessibilityAttributedStringForRangeParameterizedAttribute: String
let NSAccessibilityFontTextAttribute: String
let NSAccessibilityForegroundColorTextAttribute: String
let NSAccessibilityBackgroundColorTextAttribute: String
let NSAccessibilityUnderlineColorTextAttribute: String
let NSAccessibilityStrikethroughColorTextAttribute: String
let NSAccessibilityUnderlineTextAttribute: String
let NSAccessibilitySuperscriptTextAttribute: String
let NSAccessibilityStrikethroughTextAttribute: String
let NSAccessibilityShadowTextAttribute: String
let NSAccessibilityAttachmentTextAttribute: String
let NSAccessibilityLinkTextAttribute: String
let NSAccessibilityAutocorrectedTextAttribute: String
let NSAccessibilityListItemPrefixTextAttribute: String
let NSAccessibilityListItemIndexTextAttribute: String
let NSAccessibilityListItemLevelTextAttribute: String
let NSAccessibilityMisspelledTextAttribute: String
let NSAccessibilityMarkedMisspelledTextAttribute: String
let NSAccessibilityFontNameKey: String
let NSAccessibilityFontFamilyKey: String
let NSAccessibilityVisibleNameKey: String
let NSAccessibilityFontSizeKey: String
let NSAccessibilityMainAttribute: String
let NSAccessibilityMinimizedAttribute: String
let NSAccessibilityCloseButtonAttribute: String
let NSAccessibilityZoomButtonAttribute: String
let NSAccessibilityMinimizeButtonAttribute: String
let NSAccessibilityToolbarButtonAttribute: String
let NSAccessibilityProxyAttribute: String
let NSAccessibilityGrowAreaAttribute: String
let NSAccessibilityModalAttribute: String
let NSAccessibilityDefaultButtonAttribute: String
let NSAccessibilityCancelButtonAttribute: String
let NSAccessibilityFullScreenButtonAttribute: String
let NSAccessibilityMenuBarAttribute: String
let NSAccessibilityWindowsAttribute: String
let NSAccessibilityFrontmostAttribute: String
let NSAccessibilityHiddenAttribute: String
let NSAccessibilityMainWindowAttribute: String
let NSAccessibilityFocusedWindowAttribute: String
let NSAccessibilityFocusedUIElementAttribute: String
let NSAccessibilityExtrasMenuBarAttribute: String
enum NSAccessibilityOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Vertical
  case Horizontal
}
let NSAccessibilityOrientationAttribute: String
let NSAccessibilityVerticalOrientationValue: String
let NSAccessibilityHorizontalOrientationValue: String
let NSAccessibilityUnknownOrientationValue: String
let NSAccessibilityColumnTitlesAttribute: String
let NSAccessibilitySearchButtonAttribute: String
let NSAccessibilitySearchMenuAttribute: String
let NSAccessibilityClearButtonAttribute: String
let NSAccessibilityRowsAttribute: String
let NSAccessibilityVisibleRowsAttribute: String
let NSAccessibilitySelectedRowsAttribute: String
let NSAccessibilityColumnsAttribute: String
let NSAccessibilityVisibleColumnsAttribute: String
let NSAccessibilitySelectedColumnsAttribute: String
let NSAccessibilitySortDirectionAttribute: String
let NSAccessibilitySelectedCellsAttribute: String
let NSAccessibilityVisibleCellsAttribute: String
let NSAccessibilityRowHeaderUIElementsAttribute: String
let NSAccessibilityColumnHeaderUIElementsAttribute: String
let NSAccessibilityCellForColumnAndRowParameterizedAttribute: String
let NSAccessibilityRowIndexRangeAttribute: String
let NSAccessibilityColumnIndexRangeAttribute: String
let NSAccessibilityHorizontalUnitsAttribute: String
let NSAccessibilityVerticalUnitsAttribute: String
let NSAccessibilityHorizontalUnitDescriptionAttribute: String
let NSAccessibilityVerticalUnitDescriptionAttribute: String
let NSAccessibilityLayoutPointForScreenPointParameterizedAttribute: String
let NSAccessibilityLayoutSizeForScreenSizeParameterizedAttribute: String
let NSAccessibilityScreenPointForLayoutPointParameterizedAttribute: String
let NSAccessibilityScreenSizeForLayoutSizeParameterizedAttribute: String
let NSAccessibilityHandlesAttribute: String
let NSAccessibilityAscendingSortDirectionValue: String
let NSAccessibilityDescendingSortDirectionValue: String
let NSAccessibilityUnknownSortDirectionValue: String
enum NSAccessibilitySortDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Ascending
  case Descending
}
let NSAccessibilityDisclosingAttribute: String
let NSAccessibilityDisclosedRowsAttribute: String
let NSAccessibilityDisclosedByRowAttribute: String
let NSAccessibilityDisclosureLevelAttribute: String
let NSAccessibilityAllowedValuesAttribute: String
let NSAccessibilityLabelUIElementsAttribute: String
let NSAccessibilityLabelValueAttribute: String
let NSAccessibilityMatteHoleAttribute: String
let NSAccessibilityMatteContentUIElementAttribute: String
let NSAccessibilityMarkerUIElementsAttribute: String
let NSAccessibilityMarkerValuesAttribute: String
let NSAccessibilityMarkerGroupUIElementAttribute: String
let NSAccessibilityUnitsAttribute: String
let NSAccessibilityUnitDescriptionAttribute: String
let NSAccessibilityMarkerTypeAttribute: String
let NSAccessibilityMarkerTypeDescriptionAttribute: String
let NSAccessibilityIdentifierAttribute: String
let NSAccessibilityLeftTabStopMarkerTypeValue: String
let NSAccessibilityRightTabStopMarkerTypeValue: String
let NSAccessibilityCenterTabStopMarkerTypeValue: String
let NSAccessibilityDecimalTabStopMarkerTypeValue: String
let NSAccessibilityHeadIndentMarkerTypeValue: String
let NSAccessibilityTailIndentMarkerTypeValue: String
let NSAccessibilityFirstLineIndentMarkerTypeValue: String
let NSAccessibilityUnknownMarkerTypeValue: String
enum NSAccessibilityRulerMarkerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case TabStopLeft
  case TabStopRight
  case TabStopCenter
  case TabStopDecimal
  case IndentHead
  case IndentTail
  case IndentFirstLine
}
let NSAccessibilityInchesUnitValue: String
let NSAccessibilityCentimetersUnitValue: String
let NSAccessibilityPointsUnitValue: String
let NSAccessibilityPicasUnitValue: String
let NSAccessibilityUnknownUnitValue: String
enum NSAccessibilityUnits : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Inches
  case Centimeters
  case Points
  case Picas
}
let NSAccessibilityPressAction: String
let NSAccessibilityIncrementAction: String
let NSAccessibilityDecrementAction: String
let NSAccessibilityConfirmAction: String
let NSAccessibilityPickAction: String
let NSAccessibilityCancelAction: String
let NSAccessibilityRaiseAction: String
let NSAccessibilityShowMenuAction: String
let NSAccessibilityDeleteAction: String
let NSAccessibilityShowAlternateUIAction: String
let NSAccessibilityShowDefaultUIAction: String
let NSAccessibilityMainWindowChangedNotification: String
let NSAccessibilityFocusedWindowChangedNotification: String
let NSAccessibilityFocusedUIElementChangedNotification: String
let NSAccessibilityApplicationActivatedNotification: String
let NSAccessibilityApplicationDeactivatedNotification: String
let NSAccessibilityApplicationHiddenNotification: String
let NSAccessibilityApplicationShownNotification: String
let NSAccessibilityWindowCreatedNotification: String
let NSAccessibilityWindowMovedNotification: String
let NSAccessibilityWindowResizedNotification: String
let NSAccessibilityWindowMiniaturizedNotification: String
let NSAccessibilityWindowDeminiaturizedNotification: String
let NSAccessibilityDrawerCreatedNotification: String
let NSAccessibilitySheetCreatedNotification: String
let NSAccessibilityUIElementDestroyedNotification: String
let NSAccessibilityValueChangedNotification: String
let NSAccessibilityTitleChangedNotification: String
let NSAccessibilityResizedNotification: String
let NSAccessibilityMovedNotification: String
let NSAccessibilityCreatedNotification: String
let NSAccessibilityLayoutChangedNotification: String
let NSAccessibilityHelpTagCreatedNotification: String
let NSAccessibilitySelectedTextChangedNotification: String
let NSAccessibilityRowCountChangedNotification: String
let NSAccessibilitySelectedChildrenChangedNotification: String
let NSAccessibilitySelectedRowsChangedNotification: String
let NSAccessibilitySelectedColumnsChangedNotification: String
let NSAccessibilityRowExpandedNotification: String
let NSAccessibilityRowCollapsedNotification: String
let NSAccessibilitySelectedCellsChangedNotification: String
let NSAccessibilityUnitsChangedNotification: String
let NSAccessibilitySelectedChildrenMovedNotification: String
let NSAccessibilityAnnouncementRequestedNotification: String
let NSAccessibilityUnknownRole: String
let NSAccessibilityButtonRole: String
let NSAccessibilityRadioButtonRole: String
let NSAccessibilityCheckBoxRole: String
let NSAccessibilitySliderRole: String
let NSAccessibilityTabGroupRole: String
let NSAccessibilityTextFieldRole: String
let NSAccessibilityStaticTextRole: String
let NSAccessibilityTextAreaRole: String
let NSAccessibilityScrollAreaRole: String
let NSAccessibilityPopUpButtonRole: String
let NSAccessibilityMenuButtonRole: String
let NSAccessibilityTableRole: String
let NSAccessibilityApplicationRole: String
let NSAccessibilityGroupRole: String
let NSAccessibilityRadioGroupRole: String
let NSAccessibilityListRole: String
let NSAccessibilityScrollBarRole: String
let NSAccessibilityValueIndicatorRole: String
let NSAccessibilityImageRole: String
let NSAccessibilityMenuBarRole: String
let NSAccessibilityMenuRole: String
let NSAccessibilityMenuItemRole: String
let NSAccessibilityColumnRole: String
let NSAccessibilityRowRole: String
let NSAccessibilityToolbarRole: String
let NSAccessibilityBusyIndicatorRole: String
let NSAccessibilityProgressIndicatorRole: String
let NSAccessibilityWindowRole: String
let NSAccessibilityDrawerRole: String
let NSAccessibilitySystemWideRole: String
let NSAccessibilityOutlineRole: String
let NSAccessibilityIncrementorRole: String
let NSAccessibilityBrowserRole: String
let NSAccessibilityComboBoxRole: String
let NSAccessibilitySplitGroupRole: String
let NSAccessibilitySplitterRole: String
let NSAccessibilityColorWellRole: String
let NSAccessibilityGrowAreaRole: String
let NSAccessibilitySheetRole: String
let NSAccessibilityHelpTagRole: String
let NSAccessibilityMatteRole: String
let NSAccessibilityRulerRole: String
let NSAccessibilityRulerMarkerRole: String
let NSAccessibilityLinkRole: String
let NSAccessibilityDisclosureTriangleRole: String
let NSAccessibilityGridRole: String
let NSAccessibilityRelevanceIndicatorRole: String
let NSAccessibilityLevelIndicatorRole: String
let NSAccessibilityCellRole: String
let NSAccessibilityPopoverRole: String
let NSAccessibilityLayoutAreaRole: String
let NSAccessibilityLayoutItemRole: String
let NSAccessibilityHandleRole: String
let NSAccessibilityUnknownSubrole: String
let NSAccessibilityCloseButtonSubrole: String
let NSAccessibilityZoomButtonSubrole: String
let NSAccessibilityMinimizeButtonSubrole: String
let NSAccessibilityToolbarButtonSubrole: String
let NSAccessibilityTableRowSubrole: String
let NSAccessibilityOutlineRowSubrole: String
let NSAccessibilitySecureTextFieldSubrole: String
let NSAccessibilityStandardWindowSubrole: String
let NSAccessibilityDialogSubrole: String
let NSAccessibilitySystemDialogSubrole: String
let NSAccessibilityFloatingWindowSubrole: String
let NSAccessibilitySystemFloatingWindowSubrole: String
let NSAccessibilityIncrementArrowSubrole: String
let NSAccessibilityDecrementArrowSubrole: String
let NSAccessibilityIncrementPageSubrole: String
let NSAccessibilityDecrementPageSubrole: String
let NSAccessibilitySearchFieldSubrole: String
let NSAccessibilityTextAttachmentSubrole: String
let NSAccessibilityTextLinkSubrole: String
let NSAccessibilityTimelineSubrole: String
let NSAccessibilitySortButtonSubrole: String
let NSAccessibilityRatingIndicatorSubrole: String
let NSAccessibilityContentListSubrole: String
let NSAccessibilityDefinitionListSubrole: String
let NSAccessibilityFullScreenButtonSubrole: String
let NSAccessibilityToggleSubrole: String
let NSAccessibilitySwitchSubrole: String
let NSAccessibilityDescriptionListSubrole: String
func NSAccessibilityPostNotificationWithUserInfo(element: AnyObject, _ notification: String, _ userInfo: [NSObject : AnyObject])
let NSAccessibilityUIElementsKey: String
let NSAccessibilityPriorityKey: String
let NSAccessibilityAnnouncementKey: String
enum NSAccessibilityPriorityLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
class NSAccessibilityElement : NSObject, NSAccessibility {
  class func accessibilityElementWithRole(role: String, frame: NSRect, label: String?, parent: AnyObject?) -> AnyObject
  func accessibilityAddChildElement(childElement: NSAccessibilityElement)
  func accessibilityFrameInParentSpace() -> NSRect
  func setAccessibilityFrameInParentSpace(accessibilityFrameInParentSpace: NSRect)
  init()
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityRangeForLine(line: Int) -> NSRange
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  func accessibilityRangeForIndex(index: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityPerformCancel() -> Bool
  func accessibilityPerformConfirm() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityPerformDelete() -> Bool
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformPick() -> Bool
  func accessibilityPerformPress() -> Bool
  func accessibilityPerformRaise() -> Bool
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func accessibilityPerformShowMenu() -> Bool
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  func isAccessibilityElement() -> Bool
  func setAccessibilityElement(accessibilityElement: Bool)
  func accessibilityFrame() -> NSRect
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  func isAccessibilityFocused() -> Bool
  func setAccessibilityFocused(accessibilityFocused: Bool)
  func accessibilityActivationPoint() -> NSPoint
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  func accessibilityTopLevelUIElement() -> AnyObject?
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  func accessibilityURL() -> NSURL?
  func setAccessibilityURL(accessibilityURL: NSURL?)
  func accessibilityValue() -> AnyObject?
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  func accessibilityValueDescription() -> String?
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  func accessibilityVisibleChildren() -> [AnyObject]?
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  func accessibilitySubrole() -> String?
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  func accessibilityTitle() -> String?
  func setAccessibilityTitle(accessibilityTitle: String?)
  func accessibilityTitleUIElement() -> AnyObject?
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  func accessibilityNextContents() -> [AnyObject]?
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  func accessibilityOverflowButton() -> AnyObject?
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  func accessibilityParent() -> AnyObject?
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  func accessibilityPlaceholderValue() -> String?
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  func accessibilityPreviousContents() -> [AnyObject]?
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  func accessibilityRole() -> String?
  func setAccessibilityRole(accessibilityRole: String?)
  func accessibilityRoleDescription() -> String?
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  func accessibilitySearchButton() -> AnyObject?
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  func accessibilitySearchMenu() -> AnyObject?
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  func isAccessibilitySelected() -> Bool
  func setAccessibilitySelected(accessibilitySelected: Bool)
  func accessibilitySelectedChildren() -> [AnyObject]?
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  func accessibilityShownMenu() -> AnyObject?
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  func accessibilityMinValue() -> AnyObject?
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  func accessibilityMaxValue() -> AnyObject?
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  func accessibilityWindow() -> AnyObject?
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  func accessibilityIdentifier() -> String?
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func accessibilityHelp() -> String?
  func setAccessibilityHelp(accessibilityHelp: String?)
  func accessibilityFilename() -> String?
  func setAccessibilityFilename(accessibilityFilename: String?)
  func isAccessibilityExpanded() -> Bool
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  func isAccessibilityEdited() -> Bool
  func setAccessibilityEdited(accessibilityEdited: Bool)
  func isAccessibilityEnabled() -> Bool
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  func accessibilityChildren() -> [AnyObject]?
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  func accessibilityClearButton() -> AnyObject?
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  func accessibilityCancelButton() -> AnyObject?
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  func isAccessibilityProtectedContent() -> Bool
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  func accessibilityContents() -> [AnyObject]?
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  func accessibilityLabel() -> String?
  func setAccessibilityLabel(accessibilityLabel: String?)
  func isAccessibilityAlternateUIVisible() -> Bool
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  func accessibilityMainWindow() -> AnyObject?
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  func isAccessibilityHidden() -> Bool
  func setAccessibilityHidden(accessibilityHidden: Bool)
  func isAccessibilityFrontmost() -> Bool
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  func accessibilityFocusedWindow() -> AnyObject?
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  func accessibilityWindows() -> [AnyObject]?
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  func accessibilityExtrasMenuBar() -> AnyObject?
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  func accessibilityMenuBar() -> AnyObject?
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  func accessibilityColumnTitles() -> [AnyObject]?
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  func isAccessibilityOrderedByRow() -> Bool
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  func accessibilityHorizontalUnitDescription() -> String?
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  func accessibilityVerticalUnitDescription() -> String?
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  func accessibilityHandles() -> [AnyObject]?
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  func accessibilityWarningValue() -> AnyObject?
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  func accessibilityCriticalValue() -> AnyObject?
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  func isAccessibilityDisclosed() -> Bool
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  func accessibilityDisclosedByRow() -> AnyObject?
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  func accessibilityDisclosedRows() -> AnyObject?
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  func accessibilityDisclosureLevel() -> Int
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  func accessibilityMarkerValues() -> AnyObject?
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  func accessibilityUnits() -> NSAccessibilityUnits
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  func accessibilityUnitDescription() -> String?
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  func accessibilityMarkerTypeDescription() -> String?
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  func accessibilityVerticalScrollBar() -> AnyObject?
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  func accessibilityAllowedValues() -> [NSNumber]?
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  func accessibilityLabelUIElements() -> [AnyObject]?
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  func accessibilityLabelValue() -> Float
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  func accessibilitySplitters() -> [AnyObject]?
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  func accessibilityDecrementButton() -> AnyObject?
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  func accessibilityIncrementButton() -> AnyObject?
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  func accessibilityTabs() -> [AnyObject]?
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  func accessibilityHeader() -> AnyObject?
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  func accessibilityColumnCount() -> Int
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  func accessibilityRowCount() -> Int
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  func accessibilityIndex() -> Int
  func setAccessibilityIndex(accessibilityIndex: Int)
  func accessibilityColumns() -> [AnyObject]?
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  func accessibilityRows() -> [AnyObject]?
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  func accessibilityVisibleRows() -> [AnyObject]?
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  func accessibilitySelectedRows() -> [AnyObject]?
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  func accessibilityVisibleColumns() -> [AnyObject]?
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  func accessibilitySelectedColumns() -> [AnyObject]?
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  func accessibilitySelectedCells() -> [AnyObject]?
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  func accessibilityVisibleCells() -> [AnyObject]?
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  func accessibilityRowIndexRange() -> NSRange
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  func accessibilityColumnIndexRange() -> NSRange
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  func accessibilityInsertionPointLineNumber() -> Int
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  func accessibilitySharedCharacterRange() -> NSRange
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  func accessibilityVisibleCharacterRange() -> NSRange
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  func accessibilityNumberOfCharacters() -> Int
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  func accessibilitySelectedText() -> String?
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  func accessibilitySelectedTextRange() -> NSRange
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  func accessibilityToolbarButton() -> AnyObject?
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  func isAccessibilityModal() -> Bool
  func setAccessibilityModal(accessibilityModal: Bool)
  func accessibilityProxy() -> AnyObject?
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  func isAccessibilityMain() -> Bool
  func setAccessibilityMain(accessibilityMain: Bool)
  func accessibilityFullScreenButton() -> AnyObject?
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  func accessibilityGrowArea() -> AnyObject?
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  func accessibilityDocument() -> String?
  func setAccessibilityDocument(accessibilityDocument: String?)
  func accessibilityDefaultButton() -> AnyObject?
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  func accessibilityCloseButton() -> AnyObject?
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  func accessibilityZoomButton() -> AnyObject?
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  func accessibilityMinimizeButton() -> AnyObject?
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  func isAccessibilityMinimized() -> Bool
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
protocol NSAccessibilityElementProtocol : NSObjectProtocol {
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  optional func isAccessibilityFocused() -> Bool
  optional func accessibilityIdentifier() -> String
}
protocol NSAccessibilityGroup : NSAccessibilityElementProtocol {
}
protocol NSAccessibilityButton : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityPerformPress() -> Bool
}
protocol NSAccessibilitySwitch : NSAccessibilityButton {
  func accessibilityValue() -> String?
  optional func accessibilityPerformIncrement() -> Bool
  optional func accessibilityPerformDecrement() -> Bool
}
protocol NSAccessibilityRadioButton : NSAccessibilityButton {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityCheckBox : NSAccessibilityButton {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityStaticText : NSAccessibilityElementProtocol {
  func accessibilityValue() -> String?
  optional func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  optional func accessibilityVisibleCharacterRange() -> NSRange
}
protocol NSAccessibilityNavigableStaticText : NSAccessibilityStaticText {
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityRangeForLine(lineNumber: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
}
protocol NSAccessibilityProgressIndicator : NSAccessibilityGroup {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityStepper : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
  optional func accessibilityValue() -> AnyObject?
}
protocol NSAccessibilitySlider : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityValue() -> AnyObject?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
}
protocol NSAccessibilityImage : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
}
protocol NSAccessibilityContainsTransientUI : NSAccessibilityElementProtocol {
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func isAccessibilityAlternateUIVisible() -> Bool
}
protocol NSAccessibilityTable : NSAccessibilityGroup {
  func accessibilityLabel() -> String?
  func accessibilityRows() -> [NSAccessibilityRow]?
  optional func accessibilitySelectedRows() -> [NSAccessibilityRow]?
  optional func setAccessibilitySelectedRows(selectedRows: [NSAccessibilityRow])
  optional func accessibilityVisibleRows() -> [NSAccessibilityRow]?
  optional func accessibilityColumns() -> [AnyObject]?
  optional func accessibilityVisibleColumns() -> [AnyObject]?
  optional func accessibilitySelectedColumns() -> [AnyObject]?
  optional func accessibilityHeaderGroup() -> String?
  optional func accessibilitySelectedCells() -> [AnyObject]?
  optional func accessibilityVisibleCells() -> [AnyObject]?
  optional func accessibilityRowHeaderUIElements() -> [AnyObject]?
  optional func accessibilityColumnHeaderUIElements() -> [AnyObject]?
}
protocol NSAccessibilityOutline : NSAccessibilityTable {
}
protocol NSAccessibilityList : NSAccessibilityTable {
}
protocol NSAccessibilityRow : NSAccessibilityGroup {
  func accessibilityIndex() -> Int
  optional func accessibilityDisclosureLevel() -> Int
}
protocol NSAccessibilityLayoutArea : NSAccessibilityGroup {
  func accessibilityLabel() -> String
  func accessibilityChildren() -> [AnyObject]?
  func accessibilitySelectedChildren() -> [AnyObject]?
  func accessibilityFocusedUIElement() -> AnyObject
}
protocol NSAccessibilityLayoutItem : NSAccessibilityGroup {
  optional func setAccessibilityFrame(frame: NSRect)
}
protocol NSAccessibility : NSObjectProtocol {
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityRangeForLine(line: Int) -> NSRange
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  func accessibilityRangeForIndex(index: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityPerformCancel() -> Bool
  func accessibilityPerformConfirm() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityPerformDelete() -> Bool
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformPick() -> Bool
  func accessibilityPerformPress() -> Bool
  func accessibilityPerformRaise() -> Bool
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func accessibilityPerformShowMenu() -> Bool
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  func isAccessibilityElement() -> Bool
  func setAccessibilityElement(accessibilityElement: Bool)
  func accessibilityFrame() -> NSRect
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  func isAccessibilityFocused() -> Bool
  func setAccessibilityFocused(accessibilityFocused: Bool)
  func accessibilityActivationPoint() -> NSPoint
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  func accessibilityTopLevelUIElement() -> AnyObject?
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  func accessibilityURL() -> NSURL?
  func setAccessibilityURL(accessibilityURL: NSURL?)
  func accessibilityValue() -> AnyObject?
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  func accessibilityValueDescription() -> String?
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  func accessibilityVisibleChildren() -> [AnyObject]?
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  func accessibilitySubrole() -> String?
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  func accessibilityTitle() -> String?
  func setAccessibilityTitle(accessibilityTitle: String?)
  func accessibilityTitleUIElement() -> AnyObject?
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  func accessibilityNextContents() -> [AnyObject]?
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  func accessibilityOverflowButton() -> AnyObject?
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  func accessibilityParent() -> AnyObject?
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  func accessibilityPlaceholderValue() -> String?
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  func accessibilityPreviousContents() -> [AnyObject]?
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  func accessibilityRole() -> String?
  func setAccessibilityRole(accessibilityRole: String?)
  func accessibilityRoleDescription() -> String?
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  func accessibilitySearchButton() -> AnyObject?
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  func accessibilitySearchMenu() -> AnyObject?
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  func isAccessibilitySelected() -> Bool
  func setAccessibilitySelected(accessibilitySelected: Bool)
  func accessibilitySelectedChildren() -> [AnyObject]?
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  func accessibilityShownMenu() -> AnyObject?
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  func accessibilityMinValue() -> AnyObject?
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  func accessibilityMaxValue() -> AnyObject?
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  func accessibilityWindow() -> AnyObject?
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  func accessibilityIdentifier() -> String?
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func accessibilityHelp() -> String?
  func setAccessibilityHelp(accessibilityHelp: String?)
  func accessibilityFilename() -> String?
  func setAccessibilityFilename(accessibilityFilename: String?)
  func isAccessibilityExpanded() -> Bool
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  func isAccessibilityEdited() -> Bool
  func setAccessibilityEdited(accessibilityEdited: Bool)
  func isAccessibilityEnabled() -> Bool
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  func accessibilityChildren() -> [AnyObject]?
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  func accessibilityClearButton() -> AnyObject?
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  func accessibilityCancelButton() -> AnyObject?
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  func isAccessibilityProtectedContent() -> Bool
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  func accessibilityContents() -> [AnyObject]?
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  func accessibilityLabel() -> String?
  func setAccessibilityLabel(accessibilityLabel: String?)
  func isAccessibilityAlternateUIVisible() -> Bool
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  func accessibilityMainWindow() -> AnyObject?
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  func isAccessibilityHidden() -> Bool
  func setAccessibilityHidden(accessibilityHidden: Bool)
  func isAccessibilityFrontmost() -> Bool
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  func accessibilityFocusedWindow() -> AnyObject?
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  func accessibilityWindows() -> [AnyObject]?
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  func accessibilityExtrasMenuBar() -> AnyObject?
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  func accessibilityMenuBar() -> AnyObject?
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  func accessibilityColumnTitles() -> [AnyObject]?
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  func isAccessibilityOrderedByRow() -> Bool
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  func accessibilityHorizontalUnitDescription() -> String?
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  func accessibilityVerticalUnitDescription() -> String?
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  func accessibilityHandles() -> [AnyObject]?
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  func accessibilityWarningValue() -> AnyObject?
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  func accessibilityCriticalValue() -> AnyObject?
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  func isAccessibilityDisclosed() -> Bool
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  func accessibilityDisclosedByRow() -> AnyObject?
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  func accessibilityDisclosedRows() -> AnyObject?
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  func accessibilityDisclosureLevel() -> Int
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  func accessibilityMarkerValues() -> AnyObject?
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  func accessibilityUnits() -> NSAccessibilityUnits
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  func accessibilityUnitDescription() -> String?
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  func accessibilityMarkerTypeDescription() -> String?
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  func accessibilityVerticalScrollBar() -> AnyObject?
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  func accessibilityAllowedValues() -> [NSNumber]?
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  func accessibilityLabelUIElements() -> [AnyObject]?
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  func accessibilityLabelValue() -> Float
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  func accessibilitySplitters() -> [AnyObject]?
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  func accessibilityDecrementButton() -> AnyObject?
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  func accessibilityIncrementButton() -> AnyObject?
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  func accessibilityTabs() -> [AnyObject]?
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  func accessibilityHeader() -> AnyObject?
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  func accessibilityColumnCount() -> Int
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  func accessibilityRowCount() -> Int
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  func accessibilityIndex() -> Int
  func setAccessibilityIndex(accessibilityIndex: Int)
  func accessibilityColumns() -> [AnyObject]?
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  func accessibilityRows() -> [AnyObject]?
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  func accessibilityVisibleRows() -> [AnyObject]?
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  func accessibilitySelectedRows() -> [AnyObject]?
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  func accessibilityVisibleColumns() -> [AnyObject]?
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  func accessibilitySelectedColumns() -> [AnyObject]?
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  func accessibilitySelectedCells() -> [AnyObject]?
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  func accessibilityVisibleCells() -> [AnyObject]?
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  func accessibilityRowIndexRange() -> NSRange
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  func accessibilityColumnIndexRange() -> NSRange
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  func accessibilityInsertionPointLineNumber() -> Int
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  func accessibilitySharedCharacterRange() -> NSRange
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  func accessibilityVisibleCharacterRange() -> NSRange
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  func accessibilityNumberOfCharacters() -> Int
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  func accessibilitySelectedText() -> String?
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  func accessibilitySelectedTextRange() -> NSRange
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  func accessibilityToolbarButton() -> AnyObject?
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  func isAccessibilityModal() -> Bool
  func setAccessibilityModal(accessibilityModal: Bool)
  func accessibilityProxy() -> AnyObject?
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  func isAccessibilityMain() -> Bool
  func setAccessibilityMain(accessibilityMain: Bool)
  func accessibilityFullScreenButton() -> AnyObject?
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  func accessibilityGrowArea() -> AnyObject?
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  func accessibilityDocument() -> String?
  func setAccessibilityDocument(accessibilityDocument: String?)
  func accessibilityDefaultButton() -> AnyObject?
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  func accessibilityCloseButton() -> AnyObject?
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  func accessibilityZoomButton() -> AnyObject?
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  func accessibilityMinimizeButton() -> AnyObject?
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  func isAccessibilityMinimized() -> Bool
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
class NSActionCell : NSCell {
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSAffineTransform {
  func transformBezierPath(aPath: NSBezierPath) -> NSBezierPath
  func set()
  func concat()
}
enum NSAlertStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case WarningAlertStyle
  case InformationalAlertStyle
  case CriticalAlertStyle
}
class NSAlert : NSObject {
   init(error: NSError)
  var messageText: String
  var informativeText: String
  var icon: NSImage!
  func addButtonWithTitle(title: String) -> NSButton
  var buttons: [NSButton] { get }
  var showsHelp: Bool
  var helpAnchor: String?
  var alertStyle: NSAlertStyle
  unowned(unsafe) var delegate: @sil_unmanaged NSAlertDelegate?
  var showsSuppressionButton: Bool
  var suppressionButton: NSButton? { get }
  var accessoryView: NSView?
  func layout()
  func runModal() -> NSModalResponse
  func beginSheetModalForWindow(window: NSWindow, modalDelegate delegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func beginSheetModalForWindow(sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)?)
  var window: NSWindow { get }
  init()
}
var NSAlertFirstButtonReturn: Int { get }
var NSAlertSecondButtonReturn: Int { get }
var NSAlertThirdButtonReturn: Int { get }
protocol NSAlertDelegate : NSObjectProtocol {
  optional func alertShowHelp(alert: NSAlert) -> Bool
}
protocol NSAlignmentFeedbackToken : NSObjectProtocol {
}
class NSAlignmentFeedbackFilter : NSObject {
  class func inputEventMask() -> NSEventMask
  func updateWithEvent(event: NSEvent)
  func updateWithPanRecognizer(panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovementInView(view: NSView?, previousPoint: NSPoint, alignedPoint: NSPoint, defaultPoint: NSPoint) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovementInView(view: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovementInView(view: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackPerformanceTime)
  init()
}
enum NSAnimationCurve : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case EaseInOut
  case EaseIn
  case EaseOut
  case Linear
}
enum NSAnimationBlockingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Blocking
  case Nonblocking
  case NonblockingThreaded
}
typealias NSAnimationProgress = Float
let NSAnimationProgressMarkNotification: String
let NSAnimationProgressMark: String
class NSAnimation : NSObject, NSCopying, NSCoding {
  init(duration: NSTimeInterval, animationCurve: NSAnimationCurve)
  func startAnimation()
  func stopAnimation()
  var animating: Bool { get }
  var currentProgress: NSAnimationProgress
  var duration: NSTimeInterval
  var animationBlockingMode: NSAnimationBlockingMode
  var frameRate: Float
  var animationCurve: NSAnimationCurve
  var currentValue: Float { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSAnimationDelegate?
  var progressMarks: [NSNumber]
  func addProgressMark(progressMark: NSAnimationProgress)
  func removeProgressMark(progressMark: NSAnimationProgress)
  func startWhenAnimation(animation: NSAnimation, reachesProgress startProgress: NSAnimationProgress)
  func stopWhenAnimation(animation: NSAnimation, reachesProgress stopProgress: NSAnimationProgress)
  func clearStartAnimation()
  func clearStopAnimation()
  var runLoopModesForAnimating: [String]? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __aFlags {
  var delegateAnimationShouldStart: UInt32
  var delegateAnimationDidStop: UInt32
  var delegateAnimationDidEnd: UInt32
  var delegateAnimationValueForProgress: UInt32
  var delegateAnimationDidReachProgressMark: UInt32
  var animating: UInt32
  var blocking: UInt32
  var sendProgressAllTheTime: UInt32
  var reserved: UInt32
  init()
  init(delegateAnimationShouldStart: UInt32, delegateAnimationDidStop: UInt32, delegateAnimationDidEnd: UInt32, delegateAnimationValueForProgress: UInt32, delegateAnimationDidReachProgressMark: UInt32, animating: UInt32, blocking: UInt32, sendProgressAllTheTime: UInt32, reserved: UInt32)
}
struct __aSettings {
  var animationCurve: UInt32
  var animationBlockingMode: UInt32
  var reserved: UInt32
  init()
  init(animationCurve: UInt32, animationBlockingMode: UInt32, reserved: UInt32)
}
protocol NSAnimationDelegate : NSObjectProtocol {
  optional func animationShouldStart(animation: NSAnimation) -> Bool
  optional func animationDidStop(animation: NSAnimation)
  optional func animationDidEnd(animation: NSAnimation)
  optional func animation(animation: NSAnimation, valueForProgress progress: NSAnimationProgress) -> Float
  optional func animation(animation: NSAnimation, didReachProgressMark progress: NSAnimationProgress)
}
let NSViewAnimationTargetKey: String
let NSViewAnimationStartFrameKey: String
let NSViewAnimationEndFrameKey: String
let NSViewAnimationEffectKey: String
let NSViewAnimationFadeInEffect: String
let NSViewAnimationFadeOutEffect: String
class NSViewAnimation : NSAnimation {
  init(viewAnimations: [[String : AnyObject]])
  var viewAnimations: [[String : AnyObject]]
  init(duration: NSTimeInterval, animationCurve: NSAnimationCurve)
  init()
  init?(coder aDecoder: NSCoder)
}
struct __vaFlags {
  var reserved: UInt32
  init()
  init(reserved: UInt32)
}
protocol NSAnimatablePropertyContainer {
  func animator() -> Self
  var animations: [String : AnyObject] { get set }
  func animationForKey(key: String) -> AnyObject?
  static func defaultAnimationForKey(key: String) -> AnyObject?
}
let NSAnimationTriggerOrderIn: String
let NSAnimationTriggerOrderOut: String
class NSAnimationContext : NSObject {
  class func runAnimationGroup(changes: (NSAnimationContext) -> Void, completionHandler: (() -> Void)?)
  class func beginGrouping()
  class func endGrouping()
  class func currentContext() -> NSAnimationContext
  var duration: NSTimeInterval
  var timingFunction: CAMediaTimingFunction?
  var completionHandler: (() -> Void)?
  var allowsImplicitAnimation: Bool
  init()
}
class NSAppearance : NSObject, NSCoding {
  var name: String { get }
  class func currentAppearance() -> NSAppearance
  class func setCurrentAppearance(appearance: NSAppearance?)
   init?(named name: String)
  init?(appearanceNamed name: String, bundle: NSBundle?)
  var allowsVibrancy: Bool { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let NSAppearanceNameAqua: String
let NSAppearanceNameLightContent: String
let NSAppearanceNameVibrantDark: String
let NSAppearanceNameVibrantLight: String
protocol NSAppearanceCustomization : NSObjectProtocol {
  var appearance: NSAppearance? { get set }
  var effectiveAppearance: NSAppearance { get }
}
extension NSAppleScript {
  var richTextSource: NSAttributedString? { get }
}
let NSAppKitVersionNumber: Double
var NSAppKitVersionNumber10_0: Int32 { get }
var NSAppKitVersionNumber10_1: Int32 { get }
var NSAppKitVersionNumber10_2: Int32 { get }
var NSAppKitVersionNumber10_2_3: Double { get }
var NSAppKitVersionNumber10_3: Int32 { get }
var NSAppKitVersionNumber10_3_2: Double { get }
var NSAppKitVersionNumber10_3_3: Double { get }
var NSAppKitVersionNumber10_3_5: Double { get }
var NSAppKitVersionNumber10_3_7: Double { get }
var NSAppKitVersionNumber10_3_9: Double { get }
var NSAppKitVersionNumber10_4: Int32 { get }
var NSAppKitVersionNumber10_4_1: Double { get }
var NSAppKitVersionNumber10_4_3: Double { get }
var NSAppKitVersionNumber10_4_4: Double { get }
var NSAppKitVersionNumber10_4_7: Double { get }
var NSAppKitVersionNumber10_5: Int32 { get }
var NSAppKitVersionNumber10_5_2: Double { get }
var NSAppKitVersionNumber10_5_3: Double { get }
var NSAppKitVersionNumber10_6: Int32 { get }
var NSAppKitVersionNumber10_7: Int32 { get }
var NSAppKitVersionNumber10_7_2: Double { get }
var NSAppKitVersionNumber10_7_3: Double { get }
var NSAppKitVersionNumber10_7_4: Double { get }
var NSAppKitVersionNumber10_8: Int32 { get }
var NSAppKitVersionNumber10_9: Int32 { get }
var NSAppKitVersionNumber10_10: Int32 { get }
var NSAppKitVersionNumber10_10_2: Int32 { get }
var NSAppKitVersionNumber10_10_3: Int32 { get }
var NSAppKitVersionNumber10_10_4: Int32 { get }
var NSAppKitVersionNumber10_10_5: Int32 { get }
var NSAppKitVersionNumber10_10_Max: Int32 { get }
let NSModalPanelRunLoopMode: String
let NSEventTrackingRunLoopMode: String
var NSModalResponseStop: Int { get }
var NSModalResponseAbort: Int { get }
var NSModalResponseContinue: Int { get }
typealias NSModalResponse = Int
var NSUpdateWindowsRunLoopOrdering: Int { get }
struct NSApplicationPresentationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Default: NSApplicationPresentationOptions { get }
  static var AutoHideDock: NSApplicationPresentationOptions { get }
  static var HideDock: NSApplicationPresentationOptions { get }
  static var AutoHideMenuBar: NSApplicationPresentationOptions { get }
  static var HideMenuBar: NSApplicationPresentationOptions { get }
  static var DisableAppleMenu: NSApplicationPresentationOptions { get }
  static var DisableProcessSwitching: NSApplicationPresentationOptions { get }
  static var DisableForceQuit: NSApplicationPresentationOptions { get }
  static var DisableSessionTermination: NSApplicationPresentationOptions { get }
  static var DisableHideApplication: NSApplicationPresentationOptions { get }
  static var DisableMenuBarTransparency: NSApplicationPresentationOptions { get }
  static var FullScreen: NSApplicationPresentationOptions { get }
  static var AutoHideToolbar: NSApplicationPresentationOptions { get }
  static var DisableCursorLocationAssistance: NSApplicationPresentationOptions { get }
}
struct NSApplicationOcclusionState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Visible: NSApplicationOcclusionState { get }
}
typealias NSModalSession = COpaquePointer
class NSApplication : NSResponder, NSUserInterfaceValidations, NSAccessibilityElementProtocol, NSAccessibility {
  class func sharedApplication() -> NSApplication
  unowned(unsafe) var delegate: @sil_unmanaged NSApplicationDelegate?
  var context: NSGraphicsContext? { get }
  func hide(sender: AnyObject?)
  func unhide(sender: AnyObject?)
  func unhideWithoutActivation()
  func windowWithWindowNumber(windowNum: Int) -> NSWindow?
  unowned(unsafe) var mainWindow: @sil_unmanaged NSWindow? { get }
  unowned(unsafe) var keyWindow: @sil_unmanaged NSWindow? { get }
  var active: Bool { get }
  var hidden: Bool { get }
  var running: Bool { get }
  func deactivate()
  func activateIgnoringOtherApps(flag: Bool)
  func hideOtherApplications(sender: AnyObject?)
  func unhideAllApplications(sender: AnyObject?)
  func finishLaunching()
  func run()
  func runModalForWindow(theWindow: NSWindow) -> Int
  func stop(sender: AnyObject?)
  func stopModal()
  func stopModalWithCode(returnCode: Int)
  func abortModal()
  var modalWindow: NSWindow? { get }
  func beginModalSessionForWindow(theWindow: NSWindow) -> NSModalSession
  func runModalSession(session: NSModalSession) -> Int
  func endModalSession(session: NSModalSession)
  func terminate(sender: AnyObject?)
  func requestUserAttention(requestType: NSRequestUserAttentionType) -> Int
  func cancelUserAttentionRequest(request: Int)
  func nextEventMatchingMask(mask: Int, untilDate expiration: NSDate?, inMode mode: String, dequeue deqFlag: Bool) -> NSEvent?
  func discardEventsMatchingMask(mask: Int, beforeEvent lastEvent: NSEvent?)
  func postEvent(event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  func sendEvent(theEvent: NSEvent)
  func preventWindowOrdering()
  func makeWindowsPerform(aSelector: Selector, inOrder flag: Bool) -> NSWindow?
  var windows: [NSWindow] { get }
  func setWindowsNeedUpdate(needUpdate: Bool)
  func updateWindows()
  var mainMenu: NSMenu?
  var helpMenu: NSMenu?
  var applicationIconImage: NSImage!
  func activationPolicy() -> NSApplicationActivationPolicy
  func setActivationPolicy(activationPolicy: NSApplicationActivationPolicy) -> Bool
  var dockTile: NSDockTile { get }
  func sendAction(theAction: Selector, to theTarget: AnyObject?, from sender: AnyObject?) -> Bool
  func targetForAction(theAction: Selector) -> AnyObject?
  func targetForAction(theAction: Selector, to theTarget: AnyObject?, from sender: AnyObject?) -> AnyObject?
  func tryToPerform(anAction: Selector, with anObject: AnyObject?) -> Bool
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func reportException(theException: NSException)
  class func detachDrawingThread(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  func replyToApplicationShouldTerminate(shouldTerminate: Bool)
  func replyToOpenOrPrint(reply: NSApplicationDelegateReply)
  func orderFrontCharacterPalette(sender: AnyObject?)
  var presentationOptions: NSApplicationPresentationOptions
  var currentSystemPresentationOptions: NSApplicationPresentationOptions { get }
  var occlusionState: NSApplicationOcclusionState { get }
  init()
  init?(coder: NSCoder)
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityRangeForLine(line: Int) -> NSRange
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  func accessibilityRangeForIndex(index: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityPerformCancel() -> Bool
  func accessibilityPerformConfirm() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityPerformDelete() -> Bool
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformPick() -> Bool
  func accessibilityPerformPress() -> Bool
  func accessibilityPerformRaise() -> Bool
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func accessibilityPerformShowMenu() -> Bool
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  func isAccessibilityElement() -> Bool
  func setAccessibilityElement(accessibilityElement: Bool)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  func accessibilityActivationPoint() -> NSPoint
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  func accessibilityTopLevelUIElement() -> AnyObject?
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  func accessibilityURL() -> NSURL?
  func setAccessibilityURL(accessibilityURL: NSURL?)
  func accessibilityValue() -> AnyObject?
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  func accessibilityValueDescription() -> String?
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  func accessibilityVisibleChildren() -> [AnyObject]?
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  func accessibilitySubrole() -> String?
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  func accessibilityTitle() -> String?
  func setAccessibilityTitle(accessibilityTitle: String?)
  func accessibilityTitleUIElement() -> AnyObject?
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  func accessibilityNextContents() -> [AnyObject]?
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  func accessibilityOverflowButton() -> AnyObject?
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  func accessibilityPlaceholderValue() -> String?
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  func accessibilityPreviousContents() -> [AnyObject]?
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  func accessibilityRole() -> String?
  func setAccessibilityRole(accessibilityRole: String?)
  func accessibilityRoleDescription() -> String?
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  func accessibilitySearchButton() -> AnyObject?
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  func accessibilitySearchMenu() -> AnyObject?
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  func isAccessibilitySelected() -> Bool
  func setAccessibilitySelected(accessibilitySelected: Bool)
  func accessibilitySelectedChildren() -> [AnyObject]?
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  func accessibilityShownMenu() -> AnyObject?
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  func accessibilityMinValue() -> AnyObject?
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  func accessibilityMaxValue() -> AnyObject?
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  func accessibilityWindow() -> AnyObject?
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func accessibilityHelp() -> String?
  func setAccessibilityHelp(accessibilityHelp: String?)
  func accessibilityFilename() -> String?
  func setAccessibilityFilename(accessibilityFilename: String?)
  func isAccessibilityExpanded() -> Bool
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  func isAccessibilityEdited() -> Bool
  func setAccessibilityEdited(accessibilityEdited: Bool)
  func isAccessibilityEnabled() -> Bool
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  func accessibilityChildren() -> [AnyObject]?
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  func accessibilityClearButton() -> AnyObject?
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  func accessibilityCancelButton() -> AnyObject?
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  func isAccessibilityProtectedContent() -> Bool
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  func accessibilityContents() -> [AnyObject]?
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  func accessibilityLabel() -> String?
  func setAccessibilityLabel(accessibilityLabel: String?)
  func isAccessibilityAlternateUIVisible() -> Bool
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  func accessibilityMainWindow() -> AnyObject?
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  func isAccessibilityHidden() -> Bool
  func setAccessibilityHidden(accessibilityHidden: Bool)
  func isAccessibilityFrontmost() -> Bool
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  func accessibilityFocusedWindow() -> AnyObject?
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  func accessibilityWindows() -> [AnyObject]?
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  func accessibilityExtrasMenuBar() -> AnyObject?
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  func accessibilityMenuBar() -> AnyObject?
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  func accessibilityColumnTitles() -> [AnyObject]?
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  func isAccessibilityOrderedByRow() -> Bool
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  func accessibilityHorizontalUnitDescription() -> String?
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  func accessibilityVerticalUnitDescription() -> String?
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  func accessibilityHandles() -> [AnyObject]?
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  func accessibilityWarningValue() -> AnyObject?
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  func accessibilityCriticalValue() -> AnyObject?
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  func isAccessibilityDisclosed() -> Bool
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  func accessibilityDisclosedByRow() -> AnyObject?
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  func accessibilityDisclosedRows() -> AnyObject?
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  func accessibilityDisclosureLevel() -> Int
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  func accessibilityMarkerValues() -> AnyObject?
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  func accessibilityUnits() -> NSAccessibilityUnits
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  func accessibilityUnitDescription() -> String?
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  func accessibilityMarkerTypeDescription() -> String?
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  func accessibilityVerticalScrollBar() -> AnyObject?
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  func accessibilityAllowedValues() -> [NSNumber]?
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  func accessibilityLabelUIElements() -> [AnyObject]?
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  func accessibilityLabelValue() -> Float
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  func accessibilitySplitters() -> [AnyObject]?
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  func accessibilityDecrementButton() -> AnyObject?
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  func accessibilityIncrementButton() -> AnyObject?
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  func accessibilityTabs() -> [AnyObject]?
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  func accessibilityHeader() -> AnyObject?
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  func accessibilityColumnCount() -> Int
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  func accessibilityRowCount() -> Int
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  func accessibilityIndex() -> Int
  func setAccessibilityIndex(accessibilityIndex: Int)
  func accessibilityColumns() -> [AnyObject]?
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  func accessibilityRows() -> [AnyObject]?
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  func accessibilityVisibleRows() -> [AnyObject]?
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  func accessibilitySelectedRows() -> [AnyObject]?
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  func accessibilityVisibleColumns() -> [AnyObject]?
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  func accessibilitySelectedColumns() -> [AnyObject]?
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  func accessibilitySelectedCells() -> [AnyObject]?
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  func accessibilityVisibleCells() -> [AnyObject]?
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  func accessibilityRowIndexRange() -> NSRange
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  func accessibilityColumnIndexRange() -> NSRange
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  func accessibilityInsertionPointLineNumber() -> Int
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  func accessibilitySharedCharacterRange() -> NSRange
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  func accessibilityVisibleCharacterRange() -> NSRange
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  func accessibilityNumberOfCharacters() -> Int
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  func accessibilitySelectedText() -> String?
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  func accessibilitySelectedTextRange() -> NSRange
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  func accessibilityToolbarButton() -> AnyObject?
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  func isAccessibilityModal() -> Bool
  func setAccessibilityModal(accessibilityModal: Bool)
  func accessibilityProxy() -> AnyObject?
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  func isAccessibilityMain() -> Bool
  func setAccessibilityMain(accessibilityMain: Bool)
  func accessibilityFullScreenButton() -> AnyObject?
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  func accessibilityGrowArea() -> AnyObject?
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  func accessibilityDocument() -> String?
  func setAccessibilityDocument(accessibilityDocument: String?)
  func accessibilityDefaultButton() -> AnyObject?
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  func accessibilityCloseButton() -> AnyObject?
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  func accessibilityZoomButton() -> AnyObject?
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  func accessibilityMinimizeButton() -> AnyObject?
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  func isAccessibilityMinimized() -> Bool
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
struct __appFlags {
  var _hidden: UInt32
  var _appleEventActivationInProgress: UInt32
  var _active: UInt32
  var _hasBeenRun: UInt32
  var _doingUnhide: UInt32
  var _delegateReturnsValidRequestor: UInt32
  var _deactPending: UInt32
  var _invalidState: UInt32
  var _invalidEvent: UInt32
  var _postedWindowsNeedUpdateNote: UInt32
  var _wantsToActivate: UInt32
  var _doingHide: UInt32
  var _dontSendShouldTerminate: UInt32
  var _ignoresFullScreen: UInt32
  var _finishedLaunching: UInt32
  var _hasEventDelegate: UInt32
  var _appDying: UInt32
  var _didNSOpenOrPrint: UInt32
  var _inDealloc: UInt32
  var _pendingDidFinish: UInt32
  var _hasKeyFocus: UInt32
  var _panelsNonactivating: UInt32
  var _hiddenOnLaunch: UInt32
  var _openStatus: UInt32
  var _batchOrdering: UInt32
  var _waitingForTerminationReply: UInt32
  var _windowMoveDisabled: UInt32
  var _enumeratingMemoryPressureHandlers: UInt32
  var _didTryRestoringPersistentState: UInt32
  var _reservedN: UInt32
  var _mightBeSwitching: UInt32
  init()
  init(_hidden: UInt32, _appleEventActivationInProgress: UInt32, _active: UInt32, _hasBeenRun: UInt32, _doingUnhide: UInt32, _delegateReturnsValidRequestor: UInt32, _deactPending: UInt32, _invalidState: UInt32, _invalidEvent: UInt32, _postedWindowsNeedUpdateNote: UInt32, _wantsToActivate: UInt32, _doingHide: UInt32, _dontSendShouldTerminate: UInt32, _ignoresFullScreen: UInt32, _finishedLaunching: UInt32, _hasEventDelegate: UInt32, _appDying: UInt32, _didNSOpenOrPrint: UInt32, _inDealloc: UInt32, _pendingDidFinish: UInt32, _hasKeyFocus: UInt32, _panelsNonactivating: UInt32, _hiddenOnLaunch: UInt32, _openStatus: UInt32, _batchOrdering: UInt32, _waitingForTerminationReply: UInt32, _windowMoveDisabled: UInt32, _enumeratingMemoryPressureHandlers: UInt32, _didTryRestoringPersistentState: UInt32, _reservedN: UInt32, _mightBeSwitching: UInt32)
}
var NSApp: NSApplication!
enum NSRequestUserAttentionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CriticalRequest
  case InformationalRequest
}
enum NSApplicationDelegateReply : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Success
  case Cancel
  case Failure
}
extension NSApplication {
  var windowsMenu: NSMenu?
  func arrangeInFront(sender: AnyObject?)
  func removeWindowsItem(win: NSWindow)
  func addWindowsItem(win: NSWindow, title aString: String, filename isFilename: Bool)
  func changeWindowsItem(win: NSWindow, title aString: String, filename isFilename: Bool)
  func updateWindowsItem(win: NSWindow)
  func miniaturizeAll(sender: AnyObject?)
}
extension NSApplication {
  var fullKeyboardAccessEnabled: Bool { get }
}
enum NSApplicationTerminateReply : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TerminateCancel
  case TerminateNow
  case TerminateLater
}
enum NSApplicationPrintReply : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PrintingCancelled
  case PrintingSuccess
  case PrintingFailure
  case PrintingReplyLater
}
protocol NSApplicationDelegate : NSObjectProtocol {
  optional func applicationShouldTerminate(sender: NSApplication) -> NSApplicationTerminateReply
  optional func application(sender: NSApplication, openFile filename: String) -> Bool
  optional func application(sender: NSApplication, openFiles filenames: [String])
  optional func application(sender: NSApplication, openTempFile filename: String) -> Bool
  optional func applicationShouldOpenUntitledFile(sender: NSApplication) -> Bool
  optional func applicationOpenUntitledFile(sender: NSApplication) -> Bool
  optional func application(sender: AnyObject, openFileWithoutUI filename: String) -> Bool
  optional func application(sender: NSApplication, printFile filename: String) -> Bool
  optional func application(application: NSApplication, printFiles fileNames: [String], withSettings printSettings: [String : AnyObject], showPrintPanels: Bool) -> NSApplicationPrintReply
  optional func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool
  optional func applicationShouldHandleReopen(sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool
  optional func applicationDockMenu(sender: NSApplication) -> NSMenu?
  optional func application(application: NSApplication, willPresentError error: NSError) -> NSError
  optional func application(application: NSApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  optional func application(application: NSApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError)
  optional func application(application: NSApplication, didReceiveRemoteNotification userInfo: [String : AnyObject])
  optional func application(app: NSApplication, willEncodeRestorableState coder: NSCoder)
  optional func application(app: NSApplication, didDecodeRestorableState coder: NSCoder)
  optional func application(application: NSApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  optional func application(application: NSApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]) -> Void) -> Bool
  optional func application(application: NSApplication, didFailToContinueUserActivityWithType userActivityType: String, error: NSError)
  optional func application(application: NSApplication, didUpdateUserActivity userActivity: NSUserActivity)
  optional func applicationWillFinishLaunching(notification: NSNotification)
  optional func applicationDidFinishLaunching(notification: NSNotification)
  optional func applicationWillHide(notification: NSNotification)
  optional func applicationDidHide(notification: NSNotification)
  optional func applicationWillUnhide(notification: NSNotification)
  optional func applicationDidUnhide(notification: NSNotification)
  optional func applicationWillBecomeActive(notification: NSNotification)
  optional func applicationDidBecomeActive(notification: NSNotification)
  optional func applicationWillResignActive(notification: NSNotification)
  optional func applicationDidResignActive(notification: NSNotification)
  optional func applicationWillUpdate(notification: NSNotification)
  optional func applicationDidUpdate(notification: NSNotification)
  optional func applicationWillTerminate(notification: NSNotification)
  optional func applicationDidChangeScreenParameters(notification: NSNotification)
  optional func applicationDidChangeOcclusionState(notification: NSNotification)
}
extension NSApplication {
  var servicesMenu: NSMenu?
  func registerServicesMenuSendTypes(sendTypes: [String], returnTypes: [String])
}
protocol NSServicesMenuRequestor : NSObjectProtocol {
  optional func writeSelectionToPasteboard(pboard: NSPasteboard, types: [String]) -> Bool
  optional func readSelectionFromPasteboard(pboard: NSPasteboard) -> Bool
}
extension NSApplication {
  var servicesProvider: AnyObject?
}
extension NSApplication {
  func orderFrontStandardAboutPanel(sender: AnyObject?)
  func orderFrontStandardAboutPanelWithOptions(optionsDictionary: [String : AnyObject])
}
extension NSApplication {
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { get }
}
extension NSApplication {
  func disableRelaunchOnLogin()
  func enableRelaunchOnLogin()
}
struct NSRemoteNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSRemoteNotificationType { get }
  static var Badge: NSRemoteNotificationType { get }
  static var Sound: NSRemoteNotificationType { get }
  static var Alert: NSRemoteNotificationType { get }
}
extension NSApplication {
  func registerForRemoteNotificationTypes(types: NSRemoteNotificationType)
  func unregisterForRemoteNotifications()
  var enabledRemoteNotificationTypes: NSRemoteNotificationType { get }
}
func NSApplicationMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func NSApplicationLoad() -> Bool
func NSShowsServicesMenuItem(itemName: String) -> Bool
func NSSetShowsServicesMenuItem(itemName: String, _ enabled: Bool) -> Int
func NSUpdateDynamicServices()
func NSPerformService(itemName: String, _ pboard: NSPasteboard?) -> Bool
func NSRegisterServicesProvider(provider: AnyObject?, _ name: String)
func NSUnregisterServicesProvider(name: String)
let NSApplicationDidBecomeActiveNotification: String
let NSApplicationDidHideNotification: String
let NSApplicationDidFinishLaunchingNotification: String
let NSApplicationDidResignActiveNotification: String
let NSApplicationDidUnhideNotification: String
let NSApplicationDidUpdateNotification: String
let NSApplicationWillBecomeActiveNotification: String
let NSApplicationWillHideNotification: String
let NSApplicationWillFinishLaunchingNotification: String
let NSApplicationWillResignActiveNotification: String
let NSApplicationWillUnhideNotification: String
let NSApplicationWillUpdateNotification: String
let NSApplicationWillTerminateNotification: String
let NSApplicationDidChangeScreenParametersNotification: String
let NSApplicationLaunchIsDefaultLaunchKey: String
let NSApplicationLaunchUserNotificationKey: String
let NSApplicationDidChangeOcclusionStateNotification: String
extension NSApplication {
  func beginSheet(sheet: NSWindow, modalForWindow docWindow: NSWindow, modalDelegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func endSheet(sheet: NSWindow)
  func endSheet(sheet: NSWindow, returnCode: Int)
}
var NSRunStoppedResponse: Int { get }
var NSRunAbortedResponse: Int { get }
var NSRunContinuesResponse: Int { get }
extension NSApplication {
  var orderedDocuments: [NSDocument] { get }
  var orderedWindows: [NSWindow] { get }
}
extension NSObject {
  class func application(sender: NSApplication, delegateHandlesKey key: String) -> Bool
  func application(sender: NSApplication, delegateHandlesKey key: String) -> Bool
}
class NSArrayController : NSObjectController {
  func rearrangeObjects()
  var automaticallyRearrangesObjects: Bool
  var automaticRearrangementKeyPaths: [String]? { get }
  func didChangeArrangementCriteria()
  var sortDescriptors: [NSSortDescriptor]
  var filterPredicate: NSPredicate?
  var clearsFilterPredicateOnInsertion: Bool
  func arrangeObjects(objects: [AnyObject]) -> [AnyObject]
  var arrangedObjects: AnyObject { get }
  var avoidsEmptySelection: Bool
  var preservesSelection: Bool
  var selectsInsertedObjects: Bool
  var alwaysUsesMultipleValuesMarker: Bool
  func setSelectionIndexes(indexes: NSIndexSet) -> Bool
  @NSCopying var selectionIndexes: NSIndexSet { get }
  func setSelectionIndex(index: Int) -> Bool
  var selectionIndex: Int { get }
  func addSelectionIndexes(indexes: NSIndexSet) -> Bool
  func removeSelectionIndexes(indexes: NSIndexSet) -> Bool
  func setSelectedObjects(objects: [AnyObject]) -> Bool
  var selectedObjects: [AnyObject]! { get }
  func addSelectedObjects(objects: [AnyObject]) -> Bool
  func removeSelectedObjects(objects: [AnyObject]) -> Bool
  func add(sender: AnyObject?)
  func remove(sender: AnyObject?)
  func insert(sender: AnyObject?)
  var canInsert: Bool { get }
  func selectNext(sender: AnyObject?)
  func selectPrevious(sender: AnyObject?)
  var canSelectNext: Bool { get }
  var canSelectPrevious: Bool { get }
  func addObject(object: AnyObject)
  func addObjects(objects: [AnyObject])
  func insertObject(object: AnyObject, atArrangedObjectIndex index: Int)
  func insertObjects(objects: [AnyObject], atArrangedObjectIndexes indexes: NSIndexSet)
  func removeObjectAtArrangedObjectIndex(index: Int)
  func removeObjectsAtArrangedObjectIndexes(indexes: NSIndexSet)
  func removeObject(object: AnyObject)
  func removeObjects(objects: [AnyObject])
  init(content: AnyObject?)
  init?(coder: NSCoder)
  convenience init()
}
struct __arrayControllerFlags {
  var _avoidsEmptySelection: UInt32
  var _preservesSelection: UInt32
  var _selectsInsertedObjects: UInt32
  var _alwaysUsesMultipleValuesMarker: UInt32
  var _refreshesAllModelObjects: UInt32
  var _filterRestrictsInsertion: UInt32
  var _overridesArrangeObjects: UInt32
  var _overridesDidChangeArrangementCriteria: UInt32
  var _explicitlyCannotInsert: UInt32
  var _generatedEmptyArray: UInt32
  var _isObservingKeyPathsThroughArrangedObjects: UInt32
  var _arrangedObjectsIsMutable: UInt32
  var _clearsFilterPredicateOnInsertion: UInt32
  var _skipSortingAfterFetch: UInt32
  var _automaticallyRearrangesObjects: UInt32
  var _reservedArrayController: UInt32
  init()
  init(_avoidsEmptySelection: UInt32, _preservesSelection: UInt32, _selectsInsertedObjects: UInt32, _alwaysUsesMultipleValuesMarker: UInt32, _refreshesAllModelObjects: UInt32, _filterRestrictsInsertion: UInt32, _overridesArrangeObjects: UInt32, _overridesDidChangeArrangementCriteria: UInt32, _explicitlyCannotInsert: UInt32, _generatedEmptyArray: UInt32, _isObservingKeyPathsThroughArrangedObjects: UInt32, _arrangedObjectsIsMutable: UInt32, _clearsFilterPredicateOnInsertion: UInt32, _skipSortingAfterFetch: UInt32, _automaticallyRearrangesObjects: UInt32, _reservedArrayController: UInt32)
}
let NSFontAttributeName: String
let NSParagraphStyleAttributeName: String
let NSForegroundColorAttributeName: String
let NSBackgroundColorAttributeName: String
let NSLigatureAttributeName: String
let NSKernAttributeName: String
let NSStrikethroughStyleAttributeName: String
let NSUnderlineStyleAttributeName: String
let NSStrokeColorAttributeName: String
let NSStrokeWidthAttributeName: String
let NSShadowAttributeName: String
let NSTextEffectAttributeName: String
let NSAttachmentAttributeName: String
let NSLinkAttributeName: String
let NSBaselineOffsetAttributeName: String
let NSUnderlineColorAttributeName: String
let NSStrikethroughColorAttributeName: String
let NSObliquenessAttributeName: String
let NSExpansionAttributeName: String
let NSWritingDirectionAttributeName: String
let NSVerticalGlyphFormAttributeName: String
let NSCursorAttributeName: String
let NSToolTipAttributeName: String
let NSMarkedClauseSegmentAttributeName: String
let NSTextAlternativesAttributeName: String
let NSSpellingStateAttributeName: String
let NSSuperscriptAttributeName: String
let NSGlyphInfoAttributeName: String
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  case StyleThick
  case StyleDouble
  static var PatternSolid: NSUnderlineStyle { get }
  case PatternDot
  case PatternDash
  case PatternDashDot
  case PatternDashDotDot
  case ByWord
}
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
let NSTextEffectLetterpressStyle: String
var NSSpellingStateSpellingFlag: Int { get }
var NSSpellingStateGrammarFlag: Int { get }
extension NSMutableAttributedString {
  func fixAttributesInRange(range: NSRange)
  func fixFontAttributeInRange(range: NSRange)
  func fixParagraphStyleAttributeInRange(range: NSRange)
  func fixAttachmentAttributeInRange(range: NSRange)
}
let NSPlainTextDocumentType: String
let NSRTFTextDocumentType: String
let NSRTFDTextDocumentType: String
let NSHTMLTextDocumentType: String
let NSMacSimpleTextDocumentType: String
let NSDocFormatTextDocumentType: String
let NSWordMLTextDocumentType: String
let NSWebArchiveTextDocumentType: String
let NSOfficeOpenXMLTextDocumentType: String
let NSOpenDocumentTextDocumentType: String
let NSTextLayoutSectionOrientation: String
let NSTextLayoutSectionRange: String
let NSDocumentTypeDocumentAttribute: String
let NSConvertedDocumentAttribute: String
let NSCocoaVersionDocumentAttribute: String
let NSFileTypeDocumentAttribute: String
let NSTitleDocumentAttribute: String
let NSCompanyDocumentAttribute: String
let NSCopyrightDocumentAttribute: String
let NSSubjectDocumentAttribute: String
let NSAuthorDocumentAttribute: String
let NSKeywordsDocumentAttribute: String
let NSCommentDocumentAttribute: String
let NSEditorDocumentAttribute: String
let NSCreationTimeDocumentAttribute: String
let NSModificationTimeDocumentAttribute: String
let NSManagerDocumentAttribute: String
let NSCategoryDocumentAttribute: String
let NSCharacterEncodingDocumentAttribute: String
let NSDefaultAttributesDocumentAttribute: String
let NSPaperSizeDocumentAttribute: String
let NSLeftMarginDocumentAttribute: String
let NSRightMarginDocumentAttribute: String
let NSTopMarginDocumentAttribute: String
let NSBottomMarginDocumentAttribute: String
let NSViewSizeDocumentAttribute: String
let NSViewZoomDocumentAttribute: String
let NSViewModeDocumentAttribute: String
let NSReadOnlyDocumentAttribute: String
let NSBackgroundColorDocumentAttribute: String
let NSHyphenationFactorDocumentAttribute: String
let NSDefaultTabIntervalDocumentAttribute: String
let NSTextLayoutSectionsAttribute: String
let NSExcludedElementsDocumentAttribute: String
let NSTextEncodingNameDocumentAttribute: String
let NSPrefixSpacesDocumentAttribute: String
let NSDocumentTypeDocumentOption: String
let NSDefaultAttributesDocumentOption: String
let NSCharacterEncodingDocumentOption: String
let NSTextEncodingNameDocumentOption: String
let NSBaseURLDocumentOption: String
let NSTimeoutDocumentOption: String
let NSWebPreferencesDocumentOption: String
let NSWebResourceLoadDelegateDocumentOption: String
let NSTextSizeMultiplierDocumentOption: String
let NSFileTypeDocumentOption: String
extension NSAttributedString {
  init(URL url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  func dataFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSData
  func fileWrapperFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSFileWrapper
  init?(RTF data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(RTFD data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, baseURL base: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(docFormat data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(RTFDFileWrapper wrapper: NSFileWrapper, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  func RTFFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
  func RTFDFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
  func RTFDFileWrapperFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSFileWrapper?
  func docFormatFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
}
extension NSMutableAttributedString {
  func readFromURL(url: NSURL, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>, error: ()) throws
  func readFromData(data: NSData, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>, error: ()) throws
}
extension NSAttributedString {
  func fontAttributesInRange(range: NSRange) -> [String : AnyObject]
  func rulerAttributesInRange(range: NSRange) -> [String : AnyObject]
  func containsAttachmentsInRange(range: NSRange) -> Bool
  func lineBreakBeforeIndex(location: Int, withinRange aRange: NSRange) -> Int
  func lineBreakByHyphenatingBeforeIndex(location: Int, withinRange aRange: NSRange) -> Int
  func doubleClickAtIndex(location: Int) -> NSRange
  func nextWordFromIndex(location: Int, forward isForward: Bool) -> Int
  func rangeOfTextBlock(block: NSTextBlock, atIndex location: Int) -> NSRange
  func rangeOfTextTable(table: NSTextTable, atIndex location: Int) -> NSRange
  func rangeOfTextList(list: NSTextList, atIndex location: Int) -> NSRange
  func itemNumberInTextList(list: NSTextList, atIndex location: Int) -> Int
}
extension NSAttributedString : NSPasteboardReading, NSPasteboardWriting {
  class func textTypes() -> [String]
  class func textUnfilteredTypes() -> [String]
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
extension NSMutableAttributedString {
  func superscriptRange(range: NSRange)
  func subscriptRange(range: NSRange)
  func unscriptRange(range: NSRange)
  func applyFontTraits(traitMask: NSFontTraitMask, range: NSRange)
  func setAlignment(alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(writingDirection: NSWritingDirection, range: NSRange)
}
let NSCharacterShapeAttributeName: String
let NSUsesScreenFontsDocumentAttribute: String
var NSUnderlineByWordMask: Int
extension NSAttributedString {
  var containsAttachments: Bool { get }
  init?(URL url: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(path: String, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  func URLAtIndex(location: Int, effectiveRange: NSRangePointer) -> NSURL?
}
extension NSMutableAttributedString {
  func readFromURL(url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func readFromData(data: NSData, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
}
enum NSLineCapStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ButtLineCapStyle
  case RoundLineCapStyle
  case SquareLineCapStyle
}
enum NSLineJoinStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MiterLineJoinStyle
  case RoundLineJoinStyle
  case BevelLineJoinStyle
}
enum NSWindingRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NonZeroWindingRule
  case EvenOddWindingRule
}
enum NSBezierPathElement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MoveToBezierPathElement
  case LineToBezierPathElement
  case CurveToBezierPathElement
  case ClosePathBezierPathElement
}
class NSBezierPath : NSObject, NSCopying, NSCoding {
   init(rect: NSRect)
   init(ovalInRect rect: NSRect)
   init(roundedRect rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  class func fillRect(rect: NSRect)
  class func strokeRect(rect: NSRect)
  class func clipRect(rect: NSRect)
  class func strokeLineFromPoint(point1: NSPoint, toPoint point2: NSPoint)
  class func drawPackedGlyphs(packedGlyphs: UnsafePointer<Int8>, atPoint point: NSPoint)
  class func setDefaultMiterLimit(limit: CGFloat)
  class func defaultMiterLimit() -> CGFloat
  class func setDefaultFlatness(flatness: CGFloat)
  class func defaultFlatness() -> CGFloat
  class func setDefaultWindingRule(windingRule: NSWindingRule)
  class func defaultWindingRule() -> NSWindingRule
  class func setDefaultLineCapStyle(lineCapStyle: NSLineCapStyle)
  class func defaultLineCapStyle() -> NSLineCapStyle
  class func setDefaultLineJoinStyle(lineJoinStyle: NSLineJoinStyle)
  class func defaultLineJoinStyle() -> NSLineJoinStyle
  class func setDefaultLineWidth(lineWidth: CGFloat)
  class func defaultLineWidth() -> CGFloat
  func moveToPoint(point: NSPoint)
  func lineToPoint(point: NSPoint)
  func curveToPoint(endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  func closePath()
  func removeAllPoints()
  func relativeMoveToPoint(point: NSPoint)
  func relativeLineToPoint(point: NSPoint)
  func relativeCurveToPoint(endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  var lineWidth: CGFloat
  var lineCapStyle: NSLineCapStyle
  var lineJoinStyle: NSLineJoinStyle
  var windingRule: NSWindingRule
  var miterLimit: CGFloat
  var flatness: CGFloat
  func getLineDash(pattern: UnsafeMutablePointer<CGFloat>, count: UnsafeMutablePointer<Int>, phase: UnsafeMutablePointer<CGFloat>)
  func setLineDash(pattern: UnsafePointer<CGFloat>, count: Int, phase: CGFloat)
  func stroke()
  func fill()
  func addClip()
  func setClip()
  @NSCopying var bezierPathByFlatteningPath: NSBezierPath { get }
  @NSCopying var bezierPathByReversingPath: NSBezierPath { get }
  func transformUsingAffineTransform(transform: NSAffineTransform)
  var empty: Bool { get }
  var currentPoint: NSPoint { get }
  var controlPointBounds: NSRect { get }
  var bounds: NSRect { get }
  var elementCount: Int { get }
  func elementAtIndex(index: Int, associatedPoints points: NSPointArray) -> NSBezierPathElement
  func elementAtIndex(index: Int) -> NSBezierPathElement
  func setAssociatedPoints(points: NSPointArray, atIndex index: Int)
  func appendBezierPath(path: NSBezierPath)
  func appendBezierPathWithRect(rect: NSRect)
  func appendBezierPathWithPoints(points: NSPointArray, count: Int)
  func appendBezierPathWithOvalInRect(rect: NSRect)
  func appendBezierPathWithArcWithCenter(center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func appendBezierPathWithArcWithCenter(center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat)
  func appendBezierPathWithArcFromPoint(point1: NSPoint, toPoint point2: NSPoint, radius: CGFloat)
  func appendBezierPathWithGlyph(glyph: NSGlyph, inFont font: NSFont)
  func appendBezierPathWithGlyphs(glyphs: UnsafeMutablePointer<NSGlyph>, count: Int, inFont font: NSFont)
  func appendBezierPathWithPackedGlyphs(packedGlyphs: UnsafePointer<Int8>)
  func appendBezierPathWithRoundedRect(rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  func containsPoint(point: NSPoint) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSBezierPath {
}
enum NSTIFFCompression : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case CCITTFAX3
  case CCITTFAX4
  case LZW
  case JPEG
  case NEXT
  case PackBits
  case OldJPEG
}
enum NSBitmapImageFileType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NSTIFFFileType
  case NSBMPFileType
  case NSGIFFileType
  case NSJPEGFileType
  case NSPNGFileType
  case NSJPEG2000FileType
}
enum NSImageRepLoadStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownType
  case ReadingHeader
  case WillNeedAllData
  case InvalidData
  case UnexpectedEOF
  case Completed
}
struct NSBitmapFormat : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NSAlphaFirstBitmapFormat: NSBitmapFormat { get }
  static var NSAlphaNonpremultipliedBitmapFormat: NSBitmapFormat { get }
  static var NSFloatingPointSamplesBitmapFormat: NSBitmapFormat { get }
  static var NS16BitLittleEndianBitmapFormat: NSBitmapFormat { get }
  static var NS32BitLittleEndianBitmapFormat: NSBitmapFormat { get }
  static var NS16BitBigEndianBitmapFormat: NSBitmapFormat { get }
  static var NS32BitBigEndianBitmapFormat: NSBitmapFormat { get }
}
let NSImageCompressionMethod: String
let NSImageCompressionFactor: String
let NSImageDitherTransparency: String
let NSImageRGBColorTable: String
let NSImageInterlaced: String
let NSImageColorSyncProfileData: String
let NSImageFrameCount: String
let NSImageCurrentFrame: String
let NSImageCurrentFrameDuration: String
let NSImageLoopCount: String
let NSImageGamma: String
let NSImageProgressive: String
let NSImageEXIFData: String
let NSImageFallbackBackgroundColor: String
class NSBitmapImageRep : NSImageRep, NSSecureCoding {
  init?(focusedViewRect rect: NSRect)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: String, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: String, bitmapFormat: NSBitmapFormat, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  init(CGImage cgImage: CGImage)
  init(CIImage ciImage: CIImage)
  class func imageRepsWithData(data: NSData) -> [NSImageRep]
  init?(data: NSData)
  var bitmapData: UnsafeMutablePointer<UInt8> { get }
  func getBitmapDataPlanes(data: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>)
  var planar: Bool { get }
  var samplesPerPixel: Int { get }
  var bitsPerPixel: Int { get }
  var bytesPerRow: Int { get }
  var bytesPerPlane: Int { get }
  var numberOfPlanes: Int { get }
  var bitmapFormat: NSBitmapFormat { get }
  func getCompression(compression: UnsafeMutablePointer<NSTIFFCompression>, factor: UnsafeMutablePointer<Float>)
  func setCompression(compression: NSTIFFCompression, factor: Float)
  @NSCopying var TIFFRepresentation: NSData? { get }
  func TIFFRepresentationUsingCompression(comp: NSTIFFCompression, factor: Float) -> NSData?
  class func TIFFRepresentationOfImageRepsInArray(array: [NSImageRep]) -> NSData?
  class func TIFFRepresentationOfImageRepsInArray(array: [NSImageRep], usingCompression comp: NSTIFFCompression, factor: Float) -> NSData?
  class func getTIFFCompressionTypes(list: UnsafeMutablePointer<UnsafePointer<NSTIFFCompression>>, count numTypes: UnsafeMutablePointer<Int>)
  class func localizedNameForTIFFCompressionType(compression: NSTIFFCompression) -> String?
  func canBeCompressedUsing(compression: NSTIFFCompression) -> Bool
  func colorizeByMappingGray(midPoint: CGFloat, toColor midPointColor: NSColor?, blackMapping shadowColor: NSColor?, whiteMapping lightColor: NSColor?)
  init(forIncrementalLoad: ())
  func incrementalLoadFromData(data: NSData, complete: Bool) -> Int
  func setColor(color: NSColor, atX x: Int, y: Int)
  func colorAtX(x: Int, y: Int) -> NSColor?
  func getPixel(p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  func setPixel(p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  var CGImage: CGImage? { get }
  var colorSpace: NSColorSpace { get }
  func bitmapImageRepByConvertingToColorSpace(targetSpace: NSColorSpace, renderingIntent: NSColorRenderingIntent) -> NSBitmapImageRep?
  func bitmapImageRepByRetaggingWithColorSpace(newSpace: NSColorSpace) -> NSBitmapImageRep?
  init()
  init?(coder: NSCoder)
  class func supportsSecureCoding() -> Bool
}
struct __bitmapRepFlags {
  var bitsPerPixel: UInt32
  var isPlanar: UInt32
  var explicitPlanes: UInt32
  var imageSourceIsIndexed: UInt32
  var dataLoaded: UInt32
  var colorModel: UInt32
  var tierTwoInfoIsLoaded: UInt32
  var respectO: UInt32
  var compressionFactor: UInt32
  var imageNumber: UInt32
  var bitmapFormat: UInt32
  var cgImageIsPrimary: UInt32
  var compression: UInt32
  init()
  init(bitsPerPixel: UInt32, isPlanar: UInt32, explicitPlanes: UInt32, imageSourceIsIndexed: UInt32, dataLoaded: UInt32, colorModel: UInt32, tierTwoInfoIsLoaded: UInt32, respectO: UInt32, compressionFactor: UInt32, imageNumber: UInt32, bitmapFormat: UInt32, cgImageIsPrimary: UInt32, compression: UInt32)
}
extension NSBitmapImageRep {
  class func representationOfImageRepsInArray(imageReps: [NSImageRep], usingType storageType: NSBitmapImageFileType, properties: [String : AnyObject]) -> NSData?
  func representationUsingType(storageType: NSBitmapImageFileType, properties: [String : AnyObject]) -> NSData?
  func setProperty(property: String, withValue value: AnyObject?)
  func valueForProperty(property: String) -> AnyObject?
}
enum NSTitlePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoTitle
  case AboveTop
  case AtTop
  case BelowTop
  case AboveBottom
  case AtBottom
  case BelowBottom
}
enum NSBoxType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Primary
  case Secondary
  case Separator
  case OldStyle
  case Custom
}
class NSBox : NSView {
  var borderType: NSBorderType
  var titlePosition: NSTitlePosition
  var boxType: NSBoxType
  var title: String
  var titleFont: NSFont
  var borderRect: NSRect { get }
  var titleRect: NSRect { get }
  var titleCell: AnyObject { get }
  func sizeToFit()
  var contentViewMargins: NSSize
  func setFrameFromContentFrame(contentFrame: NSRect)
  unowned(unsafe) var contentView: @sil_unmanaged NSView?
  var transparent: Bool
  var borderWidth: CGFloat
  var cornerRadius: CGFloat
  @NSCopying var borderColor: NSColor
  @NSCopying var fillColor: NSColor
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __bFlags {
  var borderType: NSBorderType
  var titlePosition: NSTitlePosition
  var backgroundTransparent: UInt32
  var orientation: UInt32
  var needsTile: UInt32
  var transparent: UInt32
  var colorAltInterpretation: UInt32
  var boxType: UInt32
  var useSuperAddSubview: UInt32
  var _RESERVED: UInt32
  init()
  init(borderType: NSBorderType, titlePosition: NSTitlePosition, backgroundTransparent: UInt32, orientation: UInt32, needsTile: UInt32, transparent: UInt32, colorAltInterpretation: UInt32, boxType: UInt32, useSuperAddSubview: UInt32, _RESERVED: UInt32)
}
extension NSBox {
}
var NSAppKitVersionNumberWithContinuousScrollingBrowser: Double { get }
var NSAppKitVersionNumberWithColumnResizingBrowser: Double { get }
struct __Brflags {
  var firstVisibleCalculationDisabled: UInt32
  var prefersAllColumnUserResizing: UInt32
  var usesSmallScrollers: UInt32
  var usesSmallSizeTitleFont: UInt32
  var actionNeedsToBeSent: UInt32
  var acceptsFirstMouse: UInt32
  var refusesFirstResponder: UInt32
  var disableCompositing: UInt32
  var delegateSelectsCellsByRow: UInt32
  var allowsIncrementalSearching: UInt32
  var time: UInt32
  var hasHorizontalScroller: UInt32
  var prohibitEmptySel: UInt32
  var sendActionOnArrowKeys: UInt32
  var dontDrawTitles: UInt32
  var acceptArrowKeys: UInt32
  var delegateValidatesColumns: UInt32
  var delegateDoesNotCreateRowsInMatrix: UInt32
  var delegateSelectsCellsByString: UInt32
  var delegateSetsTitles: UInt32
  var delegateImplementsWillDisplayCell: UInt32
  var separateColumns: UInt32
  var titleFromPrevious: UInt32
  var isTitled: UInt32
  var reuseColumns: UInt32
  var allowsBranchSelection: UInt32
  var allowsMultipleSelection: UInt32
  init()
  init(firstVisibleCalculationDisabled: UInt32, prefersAllColumnUserResizing: UInt32, usesSmallScrollers: UInt32, usesSmallSizeTitleFont: UInt32, actionNeedsToBeSent: UInt32, acceptsFirstMouse: UInt32, refusesFirstResponder: UInt32, disableCompositing: UInt32, delegateSelectsCellsByRow: UInt32, allowsIncrementalSearching: UInt32, time: UInt32, hasHorizontalScroller: UInt32, prohibitEmptySel: UInt32, sendActionOnArrowKeys: UInt32, dontDrawTitles: UInt32, acceptArrowKeys: UInt32, delegateValidatesColumns: UInt32, delegateDoesNotCreateRowsInMatrix: UInt32, delegateSelectsCellsByString: UInt32, delegateSetsTitles: UInt32, delegateImplementsWillDisplayCell: UInt32, separateColumns: UInt32, titleFromPrevious: UInt32, isTitled: UInt32, reuseColumns: UInt32, allowsBranchSelection: UInt32, allowsMultipleSelection: UInt32)
}
typealias _Brflags = __Brflags
enum NSBrowserColumnResizingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoColumnResizing
  case AutoColumnResizing
  case UserColumnResizing
}
enum NSBrowserDropOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case On
  case Above
}
class NSBrowser : NSControl {
  class func cellClass() -> AnyClass
  func loadColumnZero()
  var loaded: Bool { get }
  var doubleAction: Selector
  func setCellClass(factoryId: AnyClass)
  var cellPrototype: AnyObject!
  unowned(unsafe) var delegate: @sil_unmanaged NSBrowserDelegate?
  var reusesColumns: Bool
  var hasHorizontalScroller: Bool
  var autohidesScroller: Bool
  var separatesColumns: Bool
  var titled: Bool
  var minColumnWidth: CGFloat
  var maxVisibleColumns: Int
  var allowsMultipleSelection: Bool
  var allowsBranchSelection: Bool
  var allowsEmptySelection: Bool
  var takesTitleFromPreviousColumn: Bool
  var sendsActionOnArrowKeys: Bool
  func itemAtIndexPath(indexPath: NSIndexPath) -> AnyObject?
  func itemAtRow(row: Int, inColumn column: Int) -> AnyObject?
  func indexPathForColumn(column: Int) -> NSIndexPath
  func isLeafItem(item: AnyObject?) -> Bool
  func reloadDataForRowIndexes(rowIndexes: NSIndexSet, inColumn column: Int)
  func parentForItemsInColumn(column: Int) -> AnyObject?
  func scrollRowToVisible(row: Int, inColumn column: Int)
  func setTitle(aString: String, ofColumn column: Int)
  func titleOfColumn(column: Int) -> String?
  var pathSeparator: String
  func setPath(path: String) -> Bool
  func path() -> String
  func pathToColumn(column: Int) -> String
  var clickedColumn: Int { get }
  var clickedRow: Int { get }
  var selectedColumn: Int { get }
  func selectedCellInColumn(column: Int) -> AnyObject?
  var selectedCells: [NSCell]? { get }
  func selectRow(row: Int, inColumn column: Int)
  func selectedRowInColumn(column: Int) -> Int
  @NSCopying var selectionIndexPath: NSIndexPath
  var selectionIndexPaths: [NSIndexPath]
  func selectRowIndexes(indexes: NSIndexSet, inColumn column: Int)
  func selectedRowIndexesInColumn(column: Int) -> NSIndexSet?
  func reloadColumn(column: Int)
  func validateVisibleColumns()
  func scrollColumnsRightBy(shiftAmount: Int)
  func scrollColumnsLeftBy(shiftAmount: Int)
  func scrollColumnToVisible(column: Int)
  var lastColumn: Int
  func addColumn()
  var numberOfVisibleColumns: Int { get }
  var firstVisibleColumn: Int { get }
  var lastVisibleColumn: Int { get }
  func loadedCellAtRow(row: Int, column col: Int) -> AnyObject?
  func selectAll(sender: AnyObject?)
  func tile()
  func doClick(sender: AnyObject?)
  func doDoubleClick(sender: AnyObject?)
  func sendAction() -> Bool
  func titleFrameOfColumn(column: Int) -> NSRect
  func drawTitleOfColumn(column: Int, inRect aRect: NSRect)
  var titleHeight: CGFloat { get }
  func frameOfColumn(column: Int) -> NSRect
  func frameOfInsideOfColumn(column: Int) -> NSRect
  func frameOfRow(row: Int, inColumn column: Int) -> NSRect
  func getRow(row: UnsafeMutablePointer<Int>, column: UnsafeMutablePointer<Int>, forPoint point: NSPoint) -> Bool
  func columnWidthForColumnContentWidth(columnContentWidth: CGFloat) -> CGFloat
  func columnContentWidthForColumnWidth(columnWidth: CGFloat) -> CGFloat
  var columnResizingType: NSBrowserColumnResizingType
  var prefersAllColumnUserResizing: Bool
  func setWidth(columnWidth: CGFloat, ofColumn columnIndex: Int)
  func widthOfColumn(column: Int) -> CGFloat
  var rowHeight: CGFloat
  func noteHeightOfRowsWithIndexesChanged(indexSet: NSIndexSet, inColumn columnIndex: Int)
  func setDefaultColumnWidth(columnWidth: CGFloat)
  func defaultColumnWidth() -> CGFloat
  var columnsAutosaveName: String
  class func removeSavedColumnsWithAutosaveName(name: String)
  func canDragRowsWithIndexes(rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent) -> Bool
  func draggingImageForRowsWithIndexes(rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage?
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  var allowsTypeSelect: Bool
  var backgroundColor: NSColor
  func editItemAtIndexPath(indexPath: NSIndexPath, withEvent theEvent: NSEvent, select: Bool)
  func selectedCell() -> AnyObject?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
let NSBrowserColumnConfigurationDidChangeNotification: String
protocol NSBrowserDelegate : NSObjectProtocol {
  optional func browser(sender: NSBrowser, numberOfRowsInColumn column: Int) -> Int
  optional func browser(sender: NSBrowser, createRowsForColumn column: Int, inMatrix matrix: NSMatrix)
  optional func browser(browser: NSBrowser, numberOfChildrenOfItem item: AnyObject?) -> Int
  optional func browser(browser: NSBrowser, child index: Int, ofItem item: AnyObject?) -> AnyObject
  optional func browser(browser: NSBrowser, isLeafItem item: AnyObject?) -> Bool
  optional func browser(browser: NSBrowser, objectValueForItem item: AnyObject?) -> AnyObject?
  optional func browser(browser: NSBrowser, heightOfRow row: Int, inColumn columnIndex: Int) -> CGFloat
  optional func rootItemForBrowser(browser: NSBrowser) -> AnyObject?
  optional func browser(browser: NSBrowser, setObjectValue object: AnyObject?, forItem item: AnyObject?)
  optional func browser(browser: NSBrowser, shouldEditItem item: AnyObject?) -> Bool
  optional func browser(sender: NSBrowser, willDisplayCell cell: AnyObject, atRow row: Int, column: Int)
  optional func browser(sender: NSBrowser, titleOfColumn column: Int) -> String?
  optional func browser(sender: NSBrowser, selectCellWithString title: String, inColumn column: Int) -> Bool
  optional func browser(sender: NSBrowser, selectRow row: Int, inColumn column: Int) -> Bool
  optional func browser(sender: NSBrowser, isColumnValid column: Int) -> Bool
  optional func browserWillScroll(sender: NSBrowser)
  optional func browserDidScroll(sender: NSBrowser)
  optional func browser(browser: NSBrowser, shouldSizeColumn columnIndex: Int, forUserResize: Bool, toWidth suggestedWidth: CGFloat) -> CGFloat
  optional func browser(browser: NSBrowser, sizeToFitWidthOfColumn columnIndex: Int) -> CGFloat
  optional func browserColumnConfigurationDidChange(notification: NSNotification)
  optional func browser(browser: NSBrowser, shouldShowCellExpansionForRow row: Int, column: Int) -> Bool
  optional func browser(browser: NSBrowser, writeRowsWithIndexes rowIndexes: NSIndexSet, inColumn column: Int, toPasteboard pasteboard: NSPasteboard) -> Bool
  optional func browser(browser: NSBrowser, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedRowsWithIndexes rowIndexes: NSIndexSet, inColumn column: Int) -> [String]
  optional func browser(browser: NSBrowser, canDragRowsWithIndexes rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent) -> Bool
  optional func browser(browser: NSBrowser, draggingImageForRowsWithIndexes rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage?
  optional func browser(browser: NSBrowser, validateDrop info: NSDraggingInfo, proposedRow row: UnsafeMutablePointer<Int>, column: UnsafeMutablePointer<Int>, dropOperation: UnsafeMutablePointer<NSBrowserDropOperation>) -> NSDragOperation
  optional func browser(browser: NSBrowser, acceptDrop info: NSDraggingInfo, atRow row: Int, column: Int, dropOperation: NSBrowserDropOperation) -> Bool
  optional func browser(browser: NSBrowser, typeSelectStringForRow row: Int, inColumn column: Int) -> String
  optional func browser(browser: NSBrowser, shouldTypeSelectForEvent event: NSEvent, withCurrentSearchString searchString: String?) -> Bool
  optional func browser(browser: NSBrowser, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, inColumn column: Int, forString searchString: String?) -> Int
  optional func browser(browser: NSBrowser, previewViewControllerForLeafItem item: AnyObject) -> NSViewController?
  optional func browser(browser: NSBrowser, headerViewControllerForItem item: AnyObject?) -> NSViewController?
  optional func browser(browser: NSBrowser, didChangeLastColumn oldLastColumn: Int, toColumn column: Int)
  optional func browser(browser: NSBrowser, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet, inColumn column: Int) -> NSIndexSet
}
extension NSBrowser {
  func setMatrixClass(factoryId: AnyClass)
  func matrixClass() -> AnyClass
  func columnOfMatrix(matrix: NSMatrix) -> Int
  func matrixInColumn(column: Int) -> NSMatrix?
}
class NSBrowserCell : NSCell {
  class func branchImage() -> NSImage?
  class func highlightedBranchImage() -> NSImage?
  func highlightColorInView(controlView: NSView) -> NSColor?
  var leaf: Bool
  var loaded: Bool
  func reset()
  func set()
  var image: NSImage?
  var alternateImage: NSImage?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSButton : NSControl, NSUserInterfaceValidations, NSAccessibilityButton {
  var title: String
  var alternateTitle: String
  var image: NSImage?
  var alternateImage: NSImage?
  var imagePosition: NSCellImagePosition
  func setButtonType(aType: NSButtonType)
  var state: Int
  var bordered: Bool
  var transparent: Bool
  func setPeriodicDelay(delay: Float, interval: Float)
  func getPeriodicDelay(delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  func highlight(flag: Bool)
  func performKeyEquivalent(key: NSEvent) -> Bool
  var springLoaded: Bool
  var maxAcceleratorLevel: Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityLabel() -> String?
  func accessibilityPerformPress() -> Bool
}
extension NSButton {
  @NSCopying var attributedTitle: NSAttributedString
  @NSCopying var attributedAlternateTitle: NSAttributedString
}
extension NSButton {
  var bezelStyle: NSBezelStyle
}
extension NSButton {
  var allowsMixedState: Bool
  func setNextState()
}
extension NSButton {
  var showsBorderOnlyWhileMouseInside: Bool
}
extension NSButton {
  var sound: NSSound?
}
extension NSButton {
}
enum NSButtonType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MomentaryLightButton
  case PushOnPushOffButton
  case ToggleButton
  case SwitchButton
  case RadioButton
  case MomentaryChangeButton
  case OnOffButton
  case MomentaryPushInButton
  case AcceleratorButton
  case MultiLevelAcceleratorButton
}
enum NSBezelStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundedBezelStyle
  case RegularSquareBezelStyle
  case ThickSquareBezelStyle
  case ThickerSquareBezelStyle
  case DisclosureBezelStyle
  case ShadowlessSquareBezelStyle
  case CircularBezelStyle
  case TexturedSquareBezelStyle
  case HelpButtonBezelStyle
  case SmallSquareBezelStyle
  case TexturedRoundedBezelStyle
  case RoundRectBezelStyle
  case RecessedBezelStyle
  case RoundedDisclosureBezelStyle
  case InlineBezelStyle
}
struct __BCFlags {
  var __reserved: UInt32
  var allowTitleTightening: UInt32
  var isDrawingFocus: UInt32
  var useButtonImageSource: UInt32
  var hasTitleTextField: UInt32
  var isDrawingDisclosure: UInt32
  var suppressAXValueChangeNote: UInt32
  var doesNotDimImage: UInt32
  var inset: UInt32
  var transparent: UInt32
  var inIntermediateDisclosure: UInt32
  var hasKeyEquivalentInsteadOfImage: UInt32
  var imageSizeDiff: UInt32
  var imageAndText: UInt32
  var bottomOrLeft: UInt32
  var horizontal: UInt32
  var imageOverlaps: UInt32
  var bordered: UInt32
  var drawing: UInt32
  var lightByGray: UInt32
  var lightByBackground: UInt32
  var lightByContents: UInt32
  var changeGray: UInt32
  var changeBackground: UInt32
  var changeContents: UInt32
  var pushIn: UInt32
  init()
  init(__reserved: UInt32, allowTitleTightening: UInt32, isDrawingFocus: UInt32, useButtonImageSource: UInt32, hasTitleTextField: UInt32, isDrawingDisclosure: UInt32, suppressAXValueChangeNote: UInt32, doesNotDimImage: UInt32, inset: UInt32, transparent: UInt32, inIntermediateDisclosure: UInt32, hasKeyEquivalentInsteadOfImage: UInt32, imageSizeDiff: UInt32, imageAndText: UInt32, bottomOrLeft: UInt32, horizontal: UInt32, imageOverlaps: UInt32, bordered: UInt32, drawing: UInt32, lightByGray: UInt32, lightByBackground: UInt32, lightByContents: UInt32, changeGray: UInt32, changeBackground: UInt32, changeContents: UInt32, pushIn: UInt32)
}
typealias _BCFlags = __BCFlags
struct __BCFlags2 {
  var bezelStyle: UInt32
  var showsBorderOnlyWhileMouseInside: UInt32
  var mouseInside: UInt32
  var bezelStyle2: UInt32
  var imageScaling: UInt32
  var keyEquivalentModifierMask: UInt32
  init()
  init(bezelStyle: UInt32, showsBorderOnlyWhileMouseInside: UInt32, mouseInside: UInt32, bezelStyle2: UInt32, imageScaling: UInt32, keyEquivalentModifierMask: UInt32)
}
typealias _BCFlags2 = __BCFlags2
class NSButtonCell : NSActionCell {
  var title: String!
  var alternateTitle: String
  var alternateImage: NSImage?
  var imagePosition: NSCellImagePosition
  var imageScaling: NSImageScaling
  var highlightsBy: NSCellStyleMask
  var showsStateBy: NSCellStyleMask
  func setButtonType(aType: NSButtonType)
  var opaque: Bool { get }
  var transparent: Bool
  func setPeriodicDelay(delay: Float, interval: Float)
  func getPeriodicDelay(delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  var keyEquivalentFont: NSFont?
  func setKeyEquivalentFont(fontName: String, size fontSize: CGFloat)
  func performClick(sender: AnyObject?)
  func drawImage(image: NSImage, withFrame frame: NSRect, inView controlView: NSView)
  func drawTitle(title: NSAttributedString, withFrame frame: NSRect, inView controlView: NSView) -> NSRect
  func drawBezelWithFrame(frame: NSRect, inView controlView: NSView)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
enum NSGradientType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ConcaveWeak
  case ConcaveStrong
  case ConvexWeak
  case ConvexStrong
}
extension NSButtonCell {
  var gradientType: NSGradientType
  var imageDimsWhenDisabled: Bool
  var showsBorderOnlyWhileMouseInside: Bool
  func mouseEntered(event: NSEvent)
  func mouseExited(event: NSEvent)
  @NSCopying var backgroundColor: NSColor?
}
extension NSButtonCell {
  @NSCopying var attributedTitle: NSAttributedString
  @NSCopying var attributedAlternateTitle: NSAttributedString
}
extension NSButtonCell {
  var bezelStyle: NSBezelStyle
}
extension NSButtonCell {
  var sound: NSSound?
}
extension NSButtonCell {
}
class NSCIImageRep : NSImageRep {
  init(CIImage image: CIImage)
  var CIImage: CIImage { get }
  init()
  init?(coder: NSCoder)
}
extension CIImage {
  init?(bitmapImageRep: NSBitmapImageRep)
  func drawInRect(rect: NSRect, fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawAtPoint(point: NSPoint, fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
}
enum NSCellType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NullCellType
  case TextCellType
  case ImageCellType
}
enum NSCellAttribute : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CellDisabled
  case CellState
  case PushInCell
  case CellEditable
  case ChangeGrayCell
  case CellHighlighted
  case CellLightsByContents
  case CellLightsByGray
  case ChangeBackgroundCell
  case CellLightsByBackground
  case CellIsBordered
  case CellHasOverlappingImage
  case CellHasImageHorizontal
  case CellHasImageOnLeftOrBottom
  case CellChangesContents
  case CellIsInsetButton
  case CellAllowsMixedState
}
enum NSCellImagePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoImage
  case ImageOnly
  case ImageLeft
  case ImageRight
  case ImageBelow
  case ImageAbove
  case ImageOverlaps
}
enum NSImageScaling : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ScaleProportionallyDown
  case ScaleAxesIndependently
  case ScaleNone
  case ScaleProportionallyUpOrDown
  static var NSScaleProportionally: NSImageScaling { get }
  static var NSScaleToFit: NSImageScaling { get }
  static var NSScaleNone: NSImageScaling { get }
}
var NSMixedState: Int { get }
var NSOffState: Int { get }
var NSOnState: Int { get }
typealias NSCellStateValue = Int
struct NSCellStyleMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoCellMask: NSCellStyleMask { get }
  static var ContentsCellMask: NSCellStyleMask { get }
  static var PushInCellMask: NSCellStyleMask { get }
  static var ChangeGrayCellMask: NSCellStyleMask { get }
  static var ChangeBackgroundCellMask: NSCellStyleMask { get }
}
enum NSControlTint : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultControlTint
  case BlueControlTint
  case GraphiteControlTint
  case ClearControlTint
}
enum NSControlSize : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RegularControlSize
  case SmallControlSize
  case MiniControlSize
}
struct __CFlags {
  var state: UInt32
  var highlighted: UInt32
  var disabled: UInt32
  var editable: UInt32
  var type: NSCellType
  var vCentered: UInt32
  var hCentered: UInt32
  var bordered: UInt32
  var bezeled: UInt32
  var selectable: UInt32
  var scrollable: UInt32
  var continuous: UInt32
  var actOnMouseDown: UInt32
  var isLeaf: UInt32
  var invalidObjectValue: UInt32
  var invalidFont: UInt32
  var lineBreakMode: NSLineBreakMode
  var weakTargetHelperFlag: UInt32
  var allowsAppearanceEffects: UInt32
  var singleLineMode: UInt32
  var actOnMouseDragged: UInt32
  var isLoaded: UInt32
  var truncateLastLine: UInt32
  var dontActOnMouseUp: UInt32
  var isWhite: UInt32
  var useUserKeyEquivalent: UInt32
  var showsFirstResponder: UInt32
  var focusRingType: UInt32
  var wasSelectable: UInt32
  var hasInvalidObject: UInt32
  var allowsEditingTextAttributes: UInt32
  var importsGraphics: UInt32
  var alignment: NSTextAlignment
  var layoutDirectionRTL: UInt32
  var backgroundStyle: UInt32
  var cellReserved2: UInt32
  var refusesFirstResponder: UInt32
  var needsHighlightedText: UInt32
  var dontAllowsUndo: UInt32
  var currentlyEditing: UInt32
  var allowsMixedState: UInt32
  var inMixedState: UInt32
  var sendsActionOnEndEditing: UInt32
  var inSendAction: UInt32
  var menuWasSet: UInt32
  var controlTint: UInt32
  var controlSize: UInt32
  var branchImageDisabled: UInt32
  var drawingInRevealover: UInt32
  var needsHighlightedTextHint: UInt32
  init()
  init(state: UInt32, highlighted: UInt32, disabled: UInt32, editable: UInt32, type: NSCellType, vCentered: UInt32, hCentered: UInt32, bordered: UInt32, bezeled: UInt32, selectable: UInt32, scrollable: UInt32, continuous: UInt32, actOnMouseDown: UInt32, isLeaf: UInt32, invalidObjectValue: UInt32, invalidFont: UInt32, lineBreakMode: NSLineBreakMode, weakTargetHelperFlag: UInt32, allowsAppearanceEffects: UInt32, singleLineMode: UInt32, actOnMouseDragged: UInt32, isLoaded: UInt32, truncateLastLine: UInt32, dontActOnMouseUp: UInt32, isWhite: UInt32, useUserKeyEquivalent: UInt32, showsFirstResponder: UInt32, focusRingType: UInt32, wasSelectable: UInt32, hasInvalidObject: UInt32, allowsEditingTextAttributes: UInt32, importsGraphics: UInt32, alignment: NSTextAlignment, layoutDirectionRTL: UInt32, backgroundStyle: UInt32, cellReserved2: UInt32, refusesFirstResponder: UInt32, needsHighlightedText: UInt32, dontAllowsUndo: UInt32, currentlyEditing: UInt32, allowsMixedState: UInt32, inMixedState: UInt32, sendsActionOnEndEditing: UInt32, inSendAction: UInt32, menuWasSet: UInt32, controlTint: UInt32, controlSize: UInt32, branchImageDisabled: UInt32, drawingInRevealover: UInt32, needsHighlightedTextHint: UInt32)
}
typealias _CFlags = __CFlags
class NSCell : NSObject, NSCopying, NSCoding, NSUserInterfaceItemIdentification, NSAccessibilityElementProtocol, NSAccessibility {
  class func prefersTrackingUntilMouseUp() -> Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  unowned(unsafe) var controlView: @sil_unmanaged NSView?
  var type: NSCellType
  var state: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  var title: String
  var opaque: Bool { get }
  var enabled: Bool
  func sendActionOn(mask: Int) -> Int
  var continuous: Bool
  var editable: Bool
  var selectable: Bool
  var bordered: Bool
  var bezeled: Bool
  var scrollable: Bool
  var highlighted: Bool
  var alignment: NSTextAlignment
  var wraps: Bool
  var font: NSFont?
  var keyEquivalent: String { get }
  var formatter: NSFormatter?
  @NSCopying var objectValue: AnyObject?
  var hasValidObjectValue: Bool { get }
  var stringValue: String
  func compare(otherCell: AnyObject) -> NSComparisonResult
  var intValue: Int32
  var floatValue: Float
  var doubleValue: Double
  func takeIntValueFrom(sender: AnyObject?)
  func takeFloatValueFrom(sender: AnyObject?)
  func takeDoubleValueFrom(sender: AnyObject?)
  func takeStringValueFrom(sender: AnyObject?)
  func takeObjectValueFrom(sender: AnyObject?)
  var image: NSImage?
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  var representedObject: AnyObject?
  func cellAttribute(aParameter: NSCellAttribute) -> Int
  func setCellAttribute(aParameter: NSCellAttribute, to value: Int)
  func imageRectForBounds(theRect: NSRect) -> NSRect
  func titleRectForBounds(theRect: NSRect) -> NSRect
  func drawingRectForBounds(theRect: NSRect) -> NSRect
  var cellSize: NSSize { get }
  func cellSizeForBounds(aRect: NSRect) -> NSSize
  func highlightColorWithFrame(cellFrame: NSRect, inView controlView: NSView) -> NSColor
  func calcDrawInfo(aRect: NSRect)
  func setUpFieldEditorAttributes(textObj: NSText) -> NSText
  func drawInteriorWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func highlight(flag: Bool, withFrame cellFrame: NSRect, inView controlView: NSView)
  var mouseDownFlags: Int { get }
  func getPeriodicDelay(delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  func startTrackingAt(startPoint: NSPoint, inView controlView: NSView) -> Bool
  func continueTracking(lastPoint: NSPoint, at currentPoint: NSPoint, inView controlView: NSView) -> Bool
  func stopTracking(lastPoint: NSPoint, at stopPoint: NSPoint, inView controlView: NSView, mouseIsUp flag: Bool)
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView, untilMouseUp flag: Bool) -> Bool
  func editWithFrame(aRect: NSRect, inView controlView: NSView, editor textObj: NSText, delegate anObject: AnyObject?, event theEvent: NSEvent)
  func selectWithFrame(aRect: NSRect, inView controlView: NSView, editor textObj: NSText, delegate anObject: AnyObject?, start selStart: Int, length selLength: Int)
  func endEditing(textObj: NSText)
  func resetCursorRect(cellFrame: NSRect, inView controlView: NSView)
  var menu: NSMenu?
  func menuForEvent(event: NSEvent, inRect cellFrame: NSRect, ofView view: NSView) -> NSMenu?
  class func defaultMenu() -> NSMenu?
  var sendsActionOnEndEditing: Bool
  var baseWritingDirection: NSWritingDirection
  var lineBreakMode: NSLineBreakMode
  var allowsUndo: Bool
  var integerValue: Int
  func takeIntegerValueFrom(sender: AnyObject?)
  var truncatesLastVisibleLine: Bool
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  func fieldEditorForView(aControlView: NSView) -> NSTextView?
  var usesSingleLineMode: Bool
  func draggingImageComponentsWithFrame(frame: NSRect, inView view: NSView) -> [NSDraggingImageComponent]
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  var identifier: String?
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityRangeForLine(line: Int) -> NSRange
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  func accessibilityRangeForIndex(index: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityPerformCancel() -> Bool
  func accessibilityPerformConfirm() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityPerformDelete() -> Bool
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformPick() -> Bool
  func accessibilityPerformPress() -> Bool
  func accessibilityPerformRaise() -> Bool
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func accessibilityPerformShowMenu() -> Bool
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  func isAccessibilityElement() -> Bool
  func setAccessibilityElement(accessibilityElement: Bool)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  func accessibilityActivationPoint() -> NSPoint
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  func accessibilityTopLevelUIElement() -> AnyObject?
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  func accessibilityURL() -> NSURL?
  func setAccessibilityURL(accessibilityURL: NSURL?)
  func accessibilityValue() -> AnyObject?
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  func accessibilityValueDescription() -> String?
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  func accessibilityVisibleChildren() -> [AnyObject]?
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  func accessibilitySubrole() -> String?
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  func accessibilityTitle() -> String?
  func setAccessibilityTitle(accessibilityTitle: String?)
  func accessibilityTitleUIElement() -> AnyObject?
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  func accessibilityNextContents() -> [AnyObject]?
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  func accessibilityOverflowButton() -> AnyObject?
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  func accessibilityPlaceholderValue() -> String?
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  func accessibilityPreviousContents() -> [AnyObject]?
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  func accessibilityRole() -> String?
  func setAccessibilityRole(accessibilityRole: String?)
  func accessibilityRoleDescription() -> String?
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  func accessibilitySearchButton() -> AnyObject?
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  func accessibilitySearchMenu() -> AnyObject?
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  func isAccessibilitySelected() -> Bool
  func setAccessibilitySelected(accessibilitySelected: Bool)
  func accessibilitySelectedChildren() -> [AnyObject]?
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  func accessibilityShownMenu() -> AnyObject?
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  func accessibilityMinValue() -> AnyObject?
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  func accessibilityMaxValue() -> AnyObject?
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  func accessibilityWindow() -> AnyObject?
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func accessibilityHelp() -> String?
  func setAccessibilityHelp(accessibilityHelp: String?)
  func accessibilityFilename() -> String?
  func setAccessibilityFilename(accessibilityFilename: String?)
  func isAccessibilityExpanded() -> Bool
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  func isAccessibilityEdited() -> Bool
  func setAccessibilityEdited(accessibilityEdited: Bool)
  func isAccessibilityEnabled() -> Bool
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  func accessibilityChildren() -> [AnyObject]?
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  func accessibilityClearButton() -> AnyObject?
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  func accessibilityCancelButton() -> AnyObject?
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  func isAccessibilityProtectedContent() -> Bool
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  func accessibilityContents() -> [AnyObject]?
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  func accessibilityLabel() -> String?
  func setAccessibilityLabel(accessibilityLabel: String?)
  func isAccessibilityAlternateUIVisible() -> Bool
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  func accessibilityMainWindow() -> AnyObject?
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  func isAccessibilityHidden() -> Bool
  func setAccessibilityHidden(accessibilityHidden: Bool)
  func isAccessibilityFrontmost() -> Bool
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  func accessibilityFocusedWindow() -> AnyObject?
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  func accessibilityWindows() -> [AnyObject]?
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  func accessibilityExtrasMenuBar() -> AnyObject?
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  func accessibilityMenuBar() -> AnyObject?
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  func accessibilityColumnTitles() -> [AnyObject]?
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  func isAccessibilityOrderedByRow() -> Bool
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  func accessibilityHorizontalUnitDescription() -> String?
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  func accessibilityVerticalUnitDescription() -> String?
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  func accessibilityHandles() -> [AnyObject]?
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  func accessibilityWarningValue() -> AnyObject?
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  func accessibilityCriticalValue() -> AnyObject?
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  func isAccessibilityDisclosed() -> Bool
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  func accessibilityDisclosedByRow() -> AnyObject?
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  func accessibilityDisclosedRows() -> AnyObject?
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  func accessibilityDisclosureLevel() -> Int
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  func accessibilityMarkerValues() -> AnyObject?
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  func accessibilityUnits() -> NSAccessibilityUnits
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  func accessibilityUnitDescription() -> String?
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  func accessibilityMarkerTypeDescription() -> String?
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  func accessibilityVerticalScrollBar() -> AnyObject?
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  func accessibilityAllowedValues() -> [NSNumber]?
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  func accessibilityLabelUIElements() -> [AnyObject]?
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  func accessibilityLabelValue() -> Float
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  func accessibilitySplitters() -> [AnyObject]?
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  func accessibilityDecrementButton() -> AnyObject?
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  func accessibilityIncrementButton() -> AnyObject?
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  func accessibilityTabs() -> [AnyObject]?
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  func accessibilityHeader() -> AnyObject?
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  func accessibilityColumnCount() -> Int
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  func accessibilityRowCount() -> Int
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  func accessibilityIndex() -> Int
  func setAccessibilityIndex(accessibilityIndex: Int)
  func accessibilityColumns() -> [AnyObject]?
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  func accessibilityRows() -> [AnyObject]?
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  func accessibilityVisibleRows() -> [AnyObject]?
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  func accessibilitySelectedRows() -> [AnyObject]?
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  func accessibilityVisibleColumns() -> [AnyObject]?
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  func accessibilitySelectedColumns() -> [AnyObject]?
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  func accessibilitySelectedCells() -> [AnyObject]?
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  func accessibilityVisibleCells() -> [AnyObject]?
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  func accessibilityRowIndexRange() -> NSRange
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  func accessibilityColumnIndexRange() -> NSRange
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  func accessibilityInsertionPointLineNumber() -> Int
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  func accessibilitySharedCharacterRange() -> NSRange
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  func accessibilityVisibleCharacterRange() -> NSRange
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  func accessibilityNumberOfCharacters() -> Int
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  func accessibilitySelectedText() -> String?
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  func accessibilitySelectedTextRange() -> NSRange
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  func accessibilityToolbarButton() -> AnyObject?
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  func isAccessibilityModal() -> Bool
  func setAccessibilityModal(accessibilityModal: Bool)
  func accessibilityProxy() -> AnyObject?
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  func isAccessibilityMain() -> Bool
  func setAccessibilityMain(accessibilityMain: Bool)
  func accessibilityFullScreenButton() -> AnyObject?
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  func accessibilityGrowArea() -> AnyObject?
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  func accessibilityDocument() -> String?
  func setAccessibilityDocument(accessibilityDocument: String?)
  func accessibilityDefaultButton() -> AnyObject?
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  func accessibilityCloseButton() -> AnyObject?
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  func accessibilityZoomButton() -> AnyObject?
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  func accessibilityMinimizeButton() -> AnyObject?
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  func isAccessibilityMinimized() -> Bool
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
extension NSCell {
  var refusesFirstResponder: Bool
  var acceptsFirstResponder: Bool { get }
  var showsFirstResponder: Bool
  func performClick(sender: AnyObject?)
  var focusRingType: NSFocusRingType
  class func defaultFocusRingType() -> NSFocusRingType
  func drawFocusRingMaskWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func focusRingMaskBoundsForFrame(cellFrame: NSRect, inView controlView: NSView) -> NSRect
  var wantsNotificationForMarkedText: Bool { get }
}
extension NSCell {
  @NSCopying var attributedStringValue: NSAttributedString
  var allowsEditingTextAttributes: Bool
  var importsGraphics: Bool
}
extension NSCell {
  var allowsMixedState: Bool
  var nextState: Int { get }
  func setNextState()
}
let NSControlTintDidChangeNotification: String
struct NSCellHitResult : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSCellHitResult { get }
  static var ContentArea: NSCellHitResult { get }
  static var EditableTextArea: NSCellHitResult { get }
  static var TrackableArea: NSCellHitResult { get }
}
extension NSCell {
  func hitTestForEvent(event: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView) -> NSCellHitResult
}
extension NSCell {
  func expansionFrameWithFrame(cellFrame: NSRect, inView view: NSView) -> NSRect
  func drawWithExpansionFrame(cellFrame: NSRect, inView view: NSView)
}
enum NSBackgroundStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Light
  case Dark
  case Raised
  case Lowered
}
extension NSCell {
  var backgroundStyle: NSBackgroundStyle
  var interiorBackgroundStyle: NSBackgroundStyle { get }
}
extension NSCell {
}
func NSDrawThreePartImage(frame: NSRect, _ startCap: NSImage?, _ centerFill: NSImage?, _ endCap: NSImage?, _ vertical: Bool, _ op: NSCompositingOperation, _ alphaFraction: CGFloat, _ flipped: Bool)
func NSDrawNinePartImage(frame: NSRect, _ topLeftCorner: NSImage, _ topEdgeFill: NSImage, _ topRightCorner: NSImage, _ leftEdgeFill: NSImage, _ centerFill: NSImage, _ rightEdgeFill: NSImage, _ bottomLeftCorner: NSImage, _ bottomEdgeFill: NSImage, _ bottomRightCorner: NSImage, _ op: NSCompositingOperation, _ alphaFraction: CGFloat, _ flipped: Bool)
var NSAnyType: Int { get }
var NSIntType: Int { get }
var NSPositiveIntType: Int { get }
var NSFloatType: Int { get }
var NSPositiveFloatType: Int { get }
var NSDoubleType: Int { get }
var NSPositiveDoubleType: Int { get }
class NSClipView : NSView {
  @NSCopying var backgroundColor: NSColor
  var drawsBackground: Bool
  unowned(unsafe) var documentView: @sil_unmanaged AnyObject?
  var documentRect: NSRect { get }
  var documentCursor: NSCursor?
  var documentVisibleRect: NSRect { get }
  func viewFrameChanged(notification: NSNotification)
  func viewBoundsChanged(notification: NSNotification)
  var copiesOnScroll: Bool
  func autoscroll(theEvent: NSEvent) -> Bool
  func scrollToPoint(newOrigin: NSPoint)
  func constrainBoundsRect(proposedBounds: NSRect) -> NSRect
  var contentInsets: NSEdgeInsets
  var automaticallyAdjustsContentInsets: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __cvFlags {
  var onlyUncovered: UInt32
  var reflectScroll: UInt32
  var usedByCell: UInt32
  var scrollClipTo: UInt32
  var noCopyOnScroll: UInt32
  var drawsBackground: UInt32
  var scrollInProgress: UInt32
  var skipRemoveSuperviewCheck: UInt32
  var animateCurrentScroll: UInt32
  var canAnimateScrolls: UInt32
  var nextScrollRelativeToCurrentPosition: UInt32
  var viewBoundsChangedOverridden: UInt32
  var viewFrameChangedOverridden: UInt32
  var documentViewAlignment: UInt32
  var redrawnWhileScrolling: UInt32
  var dontConstrainScroll: UInt32
  var lastAtEdgesState: UInt32
  var showOverlayScrollersForScrollStep: UInt32
  var scrollerKnobFlashSpecifier: UInt32
  var drawsContentShadow: UInt32
  var dontConstrainBoundsChange: UInt32
  var isScrollDueToUserAction: UInt32
  var hasOverlappingViews: UInt32
  var automaticallyCalculateContentSize: UInt32
  init()
  init(onlyUncovered: UInt32, reflectScroll: UInt32, usedByCell: UInt32, scrollClipTo: UInt32, noCopyOnScroll: UInt32, drawsBackground: UInt32, scrollInProgress: UInt32, skipRemoveSuperviewCheck: UInt32, animateCurrentScroll: UInt32, canAnimateScrolls: UInt32, nextScrollRelativeToCurrentPosition: UInt32, viewBoundsChangedOverridden: UInt32, viewFrameChangedOverridden: UInt32, documentViewAlignment: UInt32, redrawnWhileScrolling: UInt32, dontConstrainScroll: UInt32, lastAtEdgesState: UInt32, showOverlayScrollersForScrollStep: UInt32, scrollerKnobFlashSpecifier: UInt32, drawsContentShadow: UInt32, dontConstrainBoundsChange: UInt32, isScrollDueToUserAction: UInt32, hasOverlappingViews: UInt32, automaticallyCalculateContentSize: UInt32)
}
extension NSClipView {
  func constrainScrollPoint(newOrigin: NSPoint) -> NSPoint
}
extension NSView {
  func reflectScrolledClipView(aClipView: NSClipView)
  func scrollClipView(aClipView: NSClipView, toPoint aPoint: NSPoint)
}
enum NSCollectionViewDropOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case On
  case Before
}
enum NSCollectionViewItemHighlightState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ForSelection
  case ForDeselection
  case AsDropTarget
}
struct NSCollectionViewScrollPosition : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSCollectionViewScrollPosition { get }
  static var Top: NSCollectionViewScrollPosition { get }
  static var CenteredVertically: NSCollectionViewScrollPosition { get }
  static var Bottom: NSCollectionViewScrollPosition { get }
  static var NearestHorizontalEdge: NSCollectionViewScrollPosition { get }
  static var Left: NSCollectionViewScrollPosition { get }
  static var CenteredHorizontally: NSCollectionViewScrollPosition { get }
  static var Right: NSCollectionViewScrollPosition { get }
  static var LeadingEdge: NSCollectionViewScrollPosition { get }
  static var TrailingEdge: NSCollectionViewScrollPosition { get }
  static var NearestVerticalEdge: NSCollectionViewScrollPosition { get }
}
protocol NSCollectionViewElement : NSObjectProtocol, NSUserInterfaceItemIdentification {
  optional func prepareForReuse()
  optional func applyLayoutAttributes(layoutAttributes: NSCollectionViewLayoutAttributes)
  optional func willTransitionFromLayout(oldLayout: NSCollectionViewLayout, toLayout newLayout: NSCollectionViewLayout)
  optional func didTransitionFromLayout(oldLayout: NSCollectionViewLayout, toLayout newLayout: NSCollectionViewLayout)
  optional func preferredLayoutAttributesFittingAttributes(layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
}
class NSCollectionViewItem : NSViewController, NSCopying, NSCollectionViewElement {
  var collectionView: NSCollectionView { get }
  var selected: Bool
  var highlightState: NSCollectionViewItemHighlightState
  @IBOutlet unowned(unsafe) var imageView: @sil_unmanaged NSImageView?
  @IBOutlet unowned(unsafe) var textField: @sil_unmanaged NSTextField?
  var draggingImageComponents: [NSDraggingImageComponent] { get }
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func prepareForReuse()
  func applyLayoutAttributes(layoutAttributes: NSCollectionViewLayoutAttributes)
  func willTransitionFromLayout(oldLayout: NSCollectionViewLayout, toLayout newLayout: NSCollectionViewLayout)
  func didTransitionFromLayout(oldLayout: NSCollectionViewLayout, toLayout newLayout: NSCollectionViewLayout)
  func preferredLayoutAttributesFittingAttributes(layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
}
class NSCollectionView : NSView, NSDraggingSource, NSDraggingDestination {
  weak var dataSource: @sil_weak NSCollectionViewDataSource?
  var content: [AnyObject]
  func reloadData()
  unowned(unsafe) var delegate: @sil_unmanaged NSCollectionViewDelegate?
  var backgroundView: NSView?
  var collectionViewLayout: NSCollectionViewLayout?
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func frameForItemAtIndex(index: Int) -> NSRect
  func frameForItemAtIndex(index: Int, withNumberOfItems numberOfItems: Int) -> NSRect
  var maxNumberOfRows: Int
  var maxNumberOfColumns: Int
  var minItemSize: NSSize
  var maxItemSize: NSSize
  var backgroundColors: [NSColor]!
  var numberOfSections: Int { get }
  func numberOfItemsInSection(section: Int) -> Int
  var firstResponder: Bool { get }
  var selectable: Bool
  var allowsEmptySelection: Bool
  var allowsMultipleSelection: Bool
  @NSCopying var selectionIndexes: NSIndexSet
  var selectionIndexPaths: Set<NSIndexPath>
  func selectItemsAtIndexPaths(indexPaths: Set<NSIndexPath>, scrollPosition: NSCollectionViewScrollPosition)
  func deselectItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  @IBAction func selectAll(sender: AnyObject?)
  @IBAction func deselectAll(sender: AnyObject?)
  func registerClass(itemClass: AnyClass?, forItemWithIdentifier identifier: String)
  func registerNib(nib: NSNib?, forItemWithIdentifier identifier: String)
  func registerClass(viewClass: AnyClass?, forSupplementaryViewOfKind kind: String, withIdentifier identifier: String)
  func registerNib(nib: NSNib?, forSupplementaryViewOfKind kind: String, withIdentifier identifier: String)
  func makeItemWithIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem
  func makeSupplementaryViewOfKind(elementKind: String, withIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> NSView
  func newItemForRepresentedObject(object: AnyObject) -> NSCollectionViewItem
  var itemPrototype: NSCollectionViewItem?
  func itemAtIndex(index: Int) -> NSCollectionViewItem?
  func itemAtIndexPath(indexPath: NSIndexPath) -> NSCollectionViewItem?
  func visibleItems() -> [NSCollectionViewItem]
  func indexPathsForVisibleItems() -> Set<NSIndexPath>
  func indexPathForItem(item: NSCollectionViewItem) -> NSIndexPath?
  func indexPathForItemAtPoint(point: NSPoint) -> NSIndexPath?
  func supplementaryViewForElementKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> NSView?
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [NSView]
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> Set<NSIndexPath>
  func insertSections(sections: NSIndexSet)
  func deleteSections(sections: NSIndexSet)
  func reloadSections(sections: NSIndexSet)
  func moveSection(section: Int, toSection newSection: Int)
  func insertItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  func deleteItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  func reloadItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  func moveItemAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  func performBatchUpdates(updates: (() -> Void)?, completionHandler: ((Bool) -> Void)?)
  func scrollToItemsAtIndexPaths(indexPaths: Set<NSIndexPath>, scrollPosition: NSCollectionViewScrollPosition)
  func setDraggingSourceOperationMask(dragOperationMask: NSDragOperation, forLocal localDestination: Bool)
  func draggingImageForItemsAtIndexPaths(indexPaths: Set<NSIndexPath>, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  func draggingImageForItemsAtIndexes(indexes: NSIndexSet, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func draggingSession(session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  func draggingSession(session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  func draggingSession(session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  func draggingSession(session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  func ignoreModifierKeysForDraggingSession(session: NSDraggingSession) -> Bool
}
protocol NSCollectionViewDataSource : NSObjectProtocol {
  func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int
  func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAtIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem
  optional func numberOfSectionsInCollectionView(collectionView: NSCollectionView) -> Int
  optional func collectionView(collectionView: NSCollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> NSView
}
protocol NSCollectionViewDelegate : NSObjectProtocol {
  optional func collectionView(collectionView: NSCollectionView, canDragItemsAtIndexPaths indexPaths: Set<NSIndexPath>, withEvent event: NSEvent) -> Bool
  optional func collectionView(collectionView: NSCollectionView, canDragItemsAtIndexes indexes: NSIndexSet, withEvent event: NSEvent) -> Bool
  optional func collectionView(collectionView: NSCollectionView, writeItemsAtIndexPaths indexPaths: Set<NSIndexPath>, toPasteboard pasteboard: NSPasteboard) -> Bool
  optional func collectionView(collectionView: NSCollectionView, writeItemsAtIndexes indexes: NSIndexSet, toPasteboard pasteboard: NSPasteboard) -> Bool
  optional func collectionView(collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: NSURL, forDraggedItemsAtIndexPaths indexPaths: Set<NSIndexPath>) -> [String]
  optional func collectionView(collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: NSURL, forDraggedItemsAtIndexes indexes: NSIndexSet) -> [String]
  optional func collectionView(collectionView: NSCollectionView, draggingImageForItemsAtIndexPaths indexPaths: Set<NSIndexPath>, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  optional func collectionView(collectionView: NSCollectionView, draggingImageForItemsAtIndexes indexes: NSIndexSet, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  optional func collectionView(collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndexPath proposedDropIndexPath: AutoreleasingUnsafeMutablePointer<NSIndexPath?>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionViewDropOperation>) -> NSDragOperation
  optional func collectionView(collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndex proposedDropIndex: UnsafeMutablePointer<Int>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionViewDropOperation>) -> NSDragOperation
  optional func collectionView(collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, indexPath: NSIndexPath, dropOperation: NSCollectionViewDropOperation) -> Bool
  optional func collectionView(collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, index: Int, dropOperation: NSCollectionViewDropOperation) -> Bool
  optional func collectionView(collectionView: NSCollectionView, pasteboardWriterForItemAtIndexPath indexPath: NSIndexPath) -> NSPasteboardWriting?
  optional func collectionView(collectionView: NSCollectionView, pasteboardWriterForItemAtIndex index: Int) -> NSPasteboardWriting?
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forItemsAtIndexPaths indexPaths: Set<NSIndexPath>)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forItemsAtIndexes indexes: NSIndexSet)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, dragOperation operation: NSDragOperation)
  optional func collectionView(collectionView: NSCollectionView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func collectionView(collectionView: NSCollectionView, shouldChangeItemsAtIndexPaths indexPaths: Set<NSIndexPath>, toHighlightState highlightState: NSCollectionViewItemHighlightState) -> Set<NSIndexPath>
  optional func collectionView(collectionView: NSCollectionView, didChangeItemsAtIndexPaths indexPaths: Set<NSIndexPath>, toHighlightState highlightState: NSCollectionViewItemHighlightState)
  optional func collectionView(collectionView: NSCollectionView, shouldSelectItemsAtIndexPaths indexPaths: Set<NSIndexPath>) -> Set<NSIndexPath>
  optional func collectionView(collectionView: NSCollectionView, shouldDeselectItemsAtIndexPaths indexPaths: Set<NSIndexPath>) -> Set<NSIndexPath>
  optional func collectionView(collectionView: NSCollectionView, didSelectItemsAtIndexPaths indexPaths: Set<NSIndexPath>)
  optional func collectionView(collectionView: NSCollectionView, didDeselectItemsAtIndexPaths indexPaths: Set<NSIndexPath>)
  optional func collectionView(collectionView: NSCollectionView, willDisplayItem item: NSCollectionViewItem, forRepresentedObjectAtIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: NSCollectionView, willDisplaySupplementaryView view: NSView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: NSCollectionView, didEndDisplayingItem item: NSCollectionViewItem, forRepresentedObjectAtIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: NSCollectionView, didEndDisplayingSupplementaryView view: NSView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  optional func collectionView(collectionView: NSCollectionView, transitionLayoutForOldLayout fromLayout: NSCollectionViewLayout, newLayout toLayout: NSCollectionViewLayout) -> NSCollectionViewTransitionLayout
}
extension NSIndexPath {
   init(forItem item: Int, inSection section: Int)
  var item: Int { get }
  var section: Int { get }
}
extension NSSet {
  convenience init(collectionViewIndexPath indexPath: NSIndexPath)
  convenience init(collectionViewIndexPaths indexPaths: [NSIndexPath])
  func enumerateIndexPathsWithOptions(opts: NSEnumerationOptions, usingBlock block: (NSIndexPath, UnsafeMutablePointer<ObjCBool>) -> Void)
}
enum NSCollectionViewScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Vertical
  case Horizontal
}
let NSCollectionElementKindSectionHeader: String
let NSCollectionElementKindSectionFooter: String
class NSCollectionViewFlowLayoutInvalidationContext : NSCollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
  init()
}
protocol NSCollectionViewDelegateFlowLayout : NSCollectionViewDelegate {
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> NSSize
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, insetForSectionAtIndex section: Int) -> NSEdgeInsets
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> NSSize
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForFooterInSection section: Int) -> NSSize
}
class NSCollectionViewFlowLayout : NSCollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: NSSize
  var estimatedItemSize: NSSize
  var scrollDirection: NSCollectionViewScrollDirection
  var headerReferenceSize: NSSize
  var footerReferenceSize: NSSize
  var sectionInset: NSEdgeInsets
  init()
  init?(coder aDecoder: NSCoder)
}
class NSCollectionViewGridLayout : NSCollectionViewLayout {
  var margins: NSEdgeInsets
  var minimumInteritemSpacing: CGFloat
  var minimumLineSpacing: CGFloat
  var maximumNumberOfRows: Int
  var maximumNumberOfColumns: Int
  var minimumItemSize: NSSize
  var maximumItemSize: NSSize
  var backgroundColors: [NSColor]!
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSCollectionElementCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Item
  case SupplementaryView
  case DecorationView
  case InterItemGap
}
let NSCollectionElementKindInterItemGapIndicator: String
class NSCollectionViewLayoutAttributes : NSObject, NSCopying {
  var frame: NSRect
  var size: NSSize
  var alpha: CGFloat
  var zIndex: Int
  var hidden: Bool
  var indexPath: NSIndexPath?
  var representedElementCategory: NSCollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forItemWithIndexPath indexPath: NSIndexPath)
  convenience init(forInterItemGapBeforeIndexPath indexPath: NSIndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: NSIndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: NSIndexPath)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum NSCollectionUpdateAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Insert
  case Delete
  case Reload
  case Move
  case None
}
class NSCollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: NSIndexPath? { get }
  var indexPathAfterUpdate: NSIndexPath? { get }
  var updateAction: NSCollectionUpdateAction { get }
  init()
}
class NSCollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  func invalidateItemsAtIndexPaths(indexPaths: Set<NSIndexPath>)
  func invalidateSupplementaryElementsOfKind(elementKind: String, atIndexPaths indexPaths: Set<NSIndexPath>)
  func invalidateDecorationElementsOfKind(elementKind: String, atIndexPaths indexPaths: Set<NSIndexPath>)
  var invalidatedItemIndexPaths: Set<NSIndexPath>? { get }
  var invalidatedSupplementaryIndexPaths: [String : Set<NSIndexPath>]? { get }
  var invalidatedDecorationIndexPaths: [String : Set<NSIndexPath>]? { get }
  var contentOffsetAdjustment: NSPoint
  var contentSizeAdjustment: NSSize
  init()
}
class NSCollectionViewLayout : NSObject, NSCoding {
  weak var collectionView: @sil_weak NSCollectionView? { get }
  func invalidateLayout()
  func invalidateLayoutWithContext(context: NSCollectionViewLayoutInvalidationContext)
  func registerClass(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func registerNib(nib: NSNib?, forDecorationViewOfKind elementKind: String)
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSCollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsInRect(rect: NSRect) -> [NSCollectionViewLayoutAttributes]
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTargetAtPoint(pointInCollectionView: NSPoint) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGapBeforeIndexPath(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: NSRect) -> Bool
  func invalidationContextForBoundsChange(newBounds: NSRect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayoutForPreferredLayoutAttributes(preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContextForPreferredLayoutAttributes(preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: NSPoint, withScrollingVelocity velocity: NSPoint) -> NSPoint
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: NSPoint) -> NSPoint
  var collectionViewContentSize: NSSize { get }
}
extension NSCollectionViewLayout {
  func prepareForCollectionViewUpdates(updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: NSRect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransitionToLayout(newLayout: NSCollectionViewLayout)
  func prepareForTransitionFromLayout(oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> Set<NSIndexPath>
}
class NSCollectionViewTransitionLayout : NSCollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: NSCollectionViewLayout { get }
  var nextLayout: NSCollectionViewLayout { get }
  init(currentLayout: NSCollectionViewLayout, nextLayout newLayout: NSCollectionViewLayout)
  func updateValue(value: CGFloat, forAnimatedKey key: String)
  func valueForAnimatedKey(key: String) -> CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
var NSAppKitVersionNumberWithPatternColorLeakFix: Double { get }
class NSColor : NSObject, NSCopying, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
  init()
  init?(coder: NSCoder)
   init(calibratedWhite white: CGFloat, alpha: CGFloat)
   init(calibratedHue hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
   init(calibratedRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
   init(deviceWhite white: CGFloat, alpha: CGFloat)
   init(deviceHue hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
   init(deviceRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
   init(deviceCyan cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
   init?(catalogName listName: String, colorName: String)
   init(colorSpace space: NSColorSpace, components: UnsafePointer<CGFloat>, count numberOfComponents: Int)
   init(genericGamma22White white: CGFloat, alpha: CGFloat)
   init(SRGBRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
   init(white: CGFloat, alpha: CGFloat)
   init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
   init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  class func blackColor() -> NSColor
  class func darkGrayColor() -> NSColor
  class func lightGrayColor() -> NSColor
  class func whiteColor() -> NSColor
  class func grayColor() -> NSColor
  class func redColor() -> NSColor
  class func greenColor() -> NSColor
  class func blueColor() -> NSColor
  class func cyanColor() -> NSColor
  class func yellowColor() -> NSColor
  class func magentaColor() -> NSColor
  class func orangeColor() -> NSColor
  class func purpleColor() -> NSColor
  class func brownColor() -> NSColor
  class func clearColor() -> NSColor
  class func controlShadowColor() -> NSColor
  class func controlDarkShadowColor() -> NSColor
  class func controlColor() -> NSColor
  class func controlHighlightColor() -> NSColor
  class func controlLightHighlightColor() -> NSColor
  class func controlTextColor() -> NSColor
  class func controlBackgroundColor() -> NSColor
  class func selectedControlColor() -> NSColor
  class func secondarySelectedControlColor() -> NSColor
  class func selectedControlTextColor() -> NSColor
  class func disabledControlTextColor() -> NSColor
  class func textColor() -> NSColor
  class func textBackgroundColor() -> NSColor
  class func selectedTextColor() -> NSColor
  class func selectedTextBackgroundColor() -> NSColor
  class func gridColor() -> NSColor
  class func keyboardFocusIndicatorColor() -> NSColor
  class func windowBackgroundColor() -> NSColor
  class func underPageBackgroundColor() -> NSColor
  class func labelColor() -> NSColor
  class func secondaryLabelColor() -> NSColor
  class func tertiaryLabelColor() -> NSColor
  class func quaternaryLabelColor() -> NSColor
  class func scrollBarColor() -> NSColor
  class func knobColor() -> NSColor
  class func selectedKnobColor() -> NSColor
  class func windowFrameColor() -> NSColor
  class func windowFrameTextColor() -> NSColor
  class func selectedMenuItemColor() -> NSColor
  class func selectedMenuItemTextColor() -> NSColor
  class func highlightColor() -> NSColor
  class func shadowColor() -> NSColor
  class func headerColor() -> NSColor
  class func headerTextColor() -> NSColor
  class func alternateSelectedControlColor() -> NSColor
  class func alternateSelectedControlTextColor() -> NSColor
  class func controlAlternatingRowBackgroundColors() -> [NSColor]
  func highlightWithLevel(val: CGFloat) -> NSColor?
  func shadowWithLevel(val: CGFloat) -> NSColor?
   init(forControlTint controlTint: NSControlTint)
  class func currentControlTint() -> NSControlTint
  func set()
  func setFill()
  func setStroke()
  var colorSpaceName: String { get }
  func colorUsingColorSpaceName(colorSpace: String) -> NSColor?
  func colorUsingColorSpaceName(colorSpace: String?, device deviceDescription: [String : AnyObject]?) -> NSColor?
  func colorUsingColorSpace(space: NSColorSpace) -> NSColor?
  func blendedColorWithFraction(fraction: CGFloat, ofColor color: NSColor) -> NSColor?
  func colorWithAlphaComponent(alpha: CGFloat) -> NSColor
  var catalogNameComponent: String { get }
  var colorNameComponent: String { get }
  var localizedCatalogNameComponent: String { get }
  var localizedColorNameComponent: String { get }
  var redComponent: CGFloat { get }
  var greenComponent: CGFloat { get }
  var blueComponent: CGFloat { get }
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var hueComponent: CGFloat { get }
  var saturationComponent: CGFloat { get }
  var brightnessComponent: CGFloat { get }
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var whiteComponent: CGFloat { get }
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var cyanComponent: CGFloat { get }
  var magentaComponent: CGFloat { get }
  var yellowComponent: CGFloat { get }
  var blackComponent: CGFloat { get }
  func getCyan(cyan: UnsafeMutablePointer<CGFloat>, magenta: UnsafeMutablePointer<CGFloat>, yellow: UnsafeMutablePointer<CGFloat>, black: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var colorSpace: NSColorSpace { get }
  var numberOfComponents: Int { get }
  func getComponents(components: UnsafeMutablePointer<CGFloat>)
  var alphaComponent: CGFloat { get }
   init?(fromPasteboard pasteBoard: NSPasteboard)
  func writeToPasteboard(pasteBoard: NSPasteboard)
   init(patternImage image: NSImage)
  var patternImage: NSImage { get }
  func drawSwatchInRect(rect: NSRect)
   init?(CGColor cgColor: CGColor)
  var CGColor: CGColor { get }
  class func setIgnoresAlpha(flag: Bool)
  class func ignoresAlpha() -> Bool
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
extension NSColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
extension NSColor {
   init(CIColor color: CIColor)
}
extension CIColor {
  convenience init?(color: NSColor)
}
extension NSCoder {
}
let NSSystemColorsDidChangeNotification: String
class NSColorList : NSObject, NSSecureCoding {
  class func availableColorLists() -> [NSColorList]
   init?(named name: String)
  init(name: String)
  init?(name: String, fromFile path: String?)
  var name: String? { get }
  func setColor(color: NSColor, forKey key: String)
  func insertColor(color: NSColor, key: String, atIndex loc: Int)
  func removeColorWithKey(key: String)
  func colorWithKey(key: String) -> NSColor?
  var allKeys: [String] { get }
  var editable: Bool { get }
  func writeToFile(path: String?) -> Bool
  func removeFile()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct _colorListFlags {
  var colorsLoaded: UInt32
  var editable: UInt32
  var hasDeviceSpecificLists: UInt32
  var dirty: UInt32
  var hasFrozen: UInt32
  var notificationsDisabled: UInt32
  var hasAttemptedLoadingBundleForDirectory: UInt32
  var isProfileBased: UInt32
  init()
  init(colorsLoaded: UInt32, editable: UInt32, hasDeviceSpecificLists: UInt32, dirty: UInt32, hasFrozen: UInt32, notificationsDisabled: UInt32, hasAttemptedLoadingBundleForDirectory: UInt32, isProfileBased: UInt32)
}
let NSColorListDidChangeNotification: String
enum NSColorPanelMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NSNoModeColorPanel
  case NSGrayModeColorPanel
  case NSRGBModeColorPanel
  case NSCMYKModeColorPanel
  case NSHSBModeColorPanel
  case NSCustomPaletteModeColorPanel
  case NSColorListModeColorPanel
  case NSWheelModeColorPanel
  case NSCrayonModeColorPanel
}
struct NSColorPanelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var GrayModeMask: NSColorPanelOptions { get }
  static var RGBModeMask: NSColorPanelOptions { get }
  static var CMYKModeMask: NSColorPanelOptions { get }
  static var HSBModeMask: NSColorPanelOptions { get }
  static var CustomPaletteModeMask: NSColorPanelOptions { get }
  static var ColorListModeMask: NSColorPanelOptions { get }
  static var WheelModeMask: NSColorPanelOptions { get }
  static var CrayonModeMask: NSColorPanelOptions { get }
  static var AllModesMask: NSColorPanelOptions { get }
}
class NSColorPanel : NSPanel {
  class func sharedColorPanel() -> NSColorPanel
  class func sharedColorPanelExists() -> Bool
  class func dragColor(color: NSColor, withEvent theEvent: NSEvent, fromView sourceView: NSView) -> Bool
  class func setPickerMask(mask: NSColorPanelOptions)
  class func setPickerMode(mode: NSColorPanelMode)
  var accessoryView: NSView?
  var continuous: Bool
  var showsAlpha: Bool
  var mode: NSColorPanelMode
  @NSCopying var color: NSColor
  var alpha: CGFloat { get }
  func setAction(aSelector: Selector)
  func setTarget(anObject: AnyObject?)
  func attachColorList(colorList: NSColorList)
  func detachColorList(colorList: NSColorList)
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSApplication {
  func orderFrontColorPanel(sender: AnyObject?)
}
extension NSObject {
  class func changeColor(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
}
let NSColorPanelColorDidChangeNotification: String
class NSColorPicker : NSObject, NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  var colorPanel: NSColorPanel { get }
  var provideNewButtonImage: NSImage { get }
  func insertNewButtonImage(newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(sender: AnyObject?)
  func attachColorList(colorList: NSColorList)
  func detachColorList(colorList: NSColorList)
  func setMode(mode: NSColorPanelMode)
  var buttonToolTip: String { get }
  var minContentSize: NSSize { get }
  init()
  func alphaControlAddedOrRemoved(sender: AnyObject?)
}
protocol NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  func provideNewButtonImage() -> NSImage
  func insertNewButtonImage(newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(sender: AnyObject?)
  func alphaControlAddedOrRemoved(sender: AnyObject?)
  func attachColorList(colorList: NSColorList)
  func detachColorList(colorList: NSColorList)
  func setMode(mode: NSColorPanelMode)
  func buttonToolTip() -> String
  func minContentSize() -> NSSize
}
protocol NSColorPickingCustom : NSColorPickingDefault {
  func supportsMode(mode: NSColorPanelMode) -> Bool
  func currentMode() -> NSColorPanelMode
  func provideNewView(initialRequest: Bool) -> NSView
  func setColor(newColor: NSColor)
}
enum NSColorSpaceModel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NSUnknownColorSpaceModel
  case NSGrayColorSpaceModel
  case NSRGBColorSpaceModel
  case NSCMYKColorSpaceModel
  case NSLABColorSpaceModel
  case NSDeviceNColorSpaceModel
  case NSIndexedColorSpaceModel
  case NSPatternColorSpaceModel
}
class NSColorSpace : NSObject, NSSecureCoding {
  init?(ICCProfileData iccData: NSData)
  var ICCProfileData: NSData? { get }
  init?(colorSyncProfile prof: UnsafeMutablePointer<Void>)
  var colorSyncProfile: UnsafeMutablePointer<Void> { get }
  init?(CGColorSpace cgColorSpace: CGColorSpace)
  var CGColorSpace: CGColorSpace? { get }
  var numberOfColorComponents: Int { get }
  var colorSpaceModel: NSColorSpaceModel { get }
  var localizedName: String? { get }
  class func genericRGBColorSpace() -> NSColorSpace
  class func genericGrayColorSpace() -> NSColorSpace
  class func genericCMYKColorSpace() -> NSColorSpace
  class func deviceRGBColorSpace() -> NSColorSpace
  class func deviceGrayColorSpace() -> NSColorSpace
  class func deviceCMYKColorSpace() -> NSColorSpace
  class func sRGBColorSpace() -> NSColorSpace
  class func genericGamma22GrayColorSpace() -> NSColorSpace
  class func adobeRGB1998ColorSpace() -> NSColorSpace
  class func availableColorSpacesWithModel(model: NSColorSpaceModel) -> [NSColorSpace]
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class NSColorWell : NSControl {
  func deactivate()
  func activate(exclusive: Bool)
  var active: Bool { get }
  func drawWellInside(insideRect: NSRect)
  var bordered: Bool
  func takeColorFrom(sender: AnyObject?)
  @NSCopying var color: NSColor
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __cwFlags {
  var isActive: UInt32
  var isBordered: UInt32
  var cantDraw: UInt32
  var isNotContinuous: UInt32
  var refusesFR: UInt32
  var reservedColorWell: UInt32
  init()
  init(isActive: UInt32, isBordered: UInt32, cantDraw: UInt32, isNotContinuous: UInt32, refusesFR: UInt32, reservedColorWell: UInt32)
}
let NSComboBoxWillPopUpNotification: String
let NSComboBoxWillDismissNotification: String
let NSComboBoxSelectionDidChangeNotification: String
let NSComboBoxSelectionIsChangingNotification: String
class NSComboBox : NSTextField {
  var hasVerticalScroller: Bool
  var intercellSpacing: NSSize
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var buttonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndexToTop(index: Int)
  func scrollItemAtIndexToVisible(index: Int)
  func selectItemAtIndex(index: Int)
  func deselectItemAtIndex(index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func delegate() -> NSComboBoxDelegate?
  func setDelegate(anObject: NSComboBoxDelegate?)
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxDataSource?
  func addItemWithObjectValue(object: AnyObject)
  func addItemsWithObjectValues(objects: [AnyObject])
  func insertItemWithObjectValue(object: AnyObject, atIndex index: Int)
  func removeItemWithObjectValue(object: AnyObject)
  func removeItemAtIndex(index: Int)
  func removeAllItems()
  func selectItemWithObjectValue(object: AnyObject?)
  func itemObjectValueAtIndex(index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItemWithObjectValue(object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSComboBoxDataSource : NSObjectProtocol {
  optional func numberOfItemsInComboBox(aComboBox: NSComboBox) -> Int
  optional func comboBox(aComboBox: NSComboBox, objectValueForItemAtIndex index: Int) -> AnyObject
  optional func comboBox(aComboBox: NSComboBox, indexOfItemWithStringValue string: String) -> Int
  optional func comboBox(aComboBox: NSComboBox, completedString string: String) -> String?
}
protocol NSComboBoxDelegate : NSTextFieldDelegate {
  optional func comboBoxWillPopUp(notification: NSNotification)
  optional func comboBoxWillDismiss(notification: NSNotification)
  optional func comboBoxSelectionDidChange(notification: NSNotification)
  optional func comboBoxSelectionIsChanging(notification: NSNotification)
}
class NSComboBoxCell : NSTextFieldCell {
  var hasVerticalScroller: Bool
  var intercellSpacing: NSSize
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var buttonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndexToTop(index: Int)
  func scrollItemAtIndexToVisible(index: Int)
  func selectItemAtIndex(index: Int)
  func deselectItemAtIndex(index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func completedString(string: String) -> String?
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxCellDataSource?
  func addItemWithObjectValue(object: AnyObject)
  func addItemsWithObjectValues(objects: [AnyObject])
  func insertItemWithObjectValue(object: AnyObject, atIndex index: Int)
  func removeItemWithObjectValue(object: AnyObject)
  func removeItemAtIndex(index: Int)
  func removeAllItems()
  func selectItemWithObjectValue(object: AnyObject?)
  func itemObjectValueAtIndex(index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItemWithObjectValue(object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __cbcFlags {
  var usesDataSource: UInt32
  var completes: UInt32
  var buttonBordered: UInt32
  var popUpIsUp: UInt32
  var filteringEvents: UInt32
  var drawing: UInt32
  var synchronizingSelection: UInt32
  var reserved: UInt32
  var visibleItems: UInt32
  init()
  init(usesDataSource: UInt32, completes: UInt32, buttonBordered: UInt32, popUpIsUp: UInt32, filteringEvents: UInt32, drawing: UInt32, synchronizingSelection: UInt32, reserved: UInt32, visibleItems: UInt32)
}
protocol NSComboBoxCellDataSource : NSObjectProtocol {
  optional func numberOfItemsInComboBoxCell(comboBoxCell: NSComboBoxCell) -> Int
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, objectValueForItemAtIndex index: Int) -> AnyObject
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, indexOfItemWithStringValue string: String) -> Int
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, completedString uncompletedString: String) -> String?
}
class NSControl : NSView {
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  var ignoresMultiClick: Bool
  var continuous: Bool
  var enabled: Bool
  var refusesFirstResponder: Bool
  var highlighted: Bool
  var controlSize: NSControlSize
  var formatter: NSFormatter?
  var stringValue: String
  @NSCopying var attributedStringValue: NSAttributedString
  @NSCopying var objectValue: AnyObject?
  var intValue: Int32
  var integerValue: Int
  var floatValue: Float
  var doubleValue: Double
  func sizeThatFits(size: NSSize) -> NSSize
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  func sizeToFit()
  func sendActionOn(mask: Int) -> Int
  func sendAction(theAction: Selector, to theTarget: AnyObject?) -> Bool
  func takeIntValueFrom(sender: AnyObject?)
  func takeFloatValueFrom(sender: AnyObject?)
  func takeDoubleValueFrom(sender: AnyObject?)
  func takeStringValueFrom(sender: AnyObject?)
  func takeObjectValueFrom(sender: AnyObject?)
  func takeIntegerValueFrom(sender: AnyObject?)
  func mouseDown(theEvent: NSEvent)
  convenience init()
}
struct __conFlags {
  var enabled: UInt32
  var ignoreMultiClick: UInt32
  var calcSize: UInt32
  var drawingAncestor: UInt32
  var ibReserved: UInt32
  var updateCellFocus: UInt32
  var allowsLogicalLayoutDirection: UInt32
  var asmlwidth: UInt32
  var hsmlwidth: UInt32
  var dontValidate: UInt32
  var reserved: UInt32
  init()
  init(enabled: UInt32, ignoreMultiClick: UInt32, calcSize: UInt32, drawingAncestor: UInt32, ibReserved: UInt32, updateCellFocus: UInt32, allowsLogicalLayoutDirection: UInt32, asmlwidth: UInt32, hsmlwidth: UInt32, dontValidate: UInt32, reserved: UInt32)
}
extension NSControl {
  func performClick(sender: AnyObject?)
}
extension NSControl {
  var alignment: NSTextAlignment
  @NSCopying var font: NSFont?
  var lineBreakMode: NSLineBreakMode
  var usesSingleLineMode: Bool
  var baseWritingDirection: NSWritingDirection
  var allowsExpansionToolTips: Bool
  func expansionFrameWithFrame(contentFrame: NSRect) -> NSRect
  func drawWithExpansionFrame(contentFrame: NSRect, inView view: NSView)
}
extension NSControl {
  func currentEditor() -> NSText?
  func abortEditing() -> Bool
  func validateEditing()
  func editWithFrame(aRect: NSRect, editor textObj: NSText, delegate anObject: AnyObject?, event theEvent: NSEvent)
  func selectWithFrame(aRect: NSRect, editor textObj: NSText, delegate anObject: AnyObject?, start selStart: Int, length selLength: Int)
  func endEditing(textObj: NSText)
}
extension NSObject {
  class func controlTextDidBeginEditing(obj: NSNotification)
  func controlTextDidBeginEditing(obj: NSNotification)
  class func controlTextDidEndEditing(obj: NSNotification)
  func controlTextDidEndEditing(obj: NSNotification)
  class func controlTextDidChange(obj: NSNotification)
  func controlTextDidChange(obj: NSNotification)
}
protocol NSControlTextEditingDelegate : NSObjectProtocol {
  optional func control(control: NSControl, textShouldBeginEditing fieldEditor: NSText) -> Bool
  optional func control(control: NSControl, textShouldEndEditing fieldEditor: NSText) -> Bool
  optional func control(control: NSControl, didFailToFormatString string: String, errorDescription error: String?) -> Bool
  optional func control(control: NSControl, didFailToValidatePartialString string: String, errorDescription error: String?)
  optional func control(control: NSControl, isValidObject obj: AnyObject) -> Bool
  optional func control(control: NSControl, textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  optional func control(control: NSControl, textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
}
let NSControlTextDidBeginEditingNotification: String
let NSControlTextDidEndEditingNotification: String
let NSControlTextDidChangeNotification: String
extension NSControl {
  class func setCellClass(factoryId: AnyClass?)
  class func cellClass() -> AnyClass?
  var cell: NSCell?
  func selectedCell() -> NSCell?
  func selectedTag() -> Int
  func setNeedsDisplay()
  func calcSize()
  func updateCell(aCell: NSCell)
  func updateCellInside(aCell: NSCell)
  func drawCellInside(aCell: NSCell)
  func drawCell(aCell: NSCell)
  func selectCell(aCell: NSCell)
}
class NSController : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  func objectDidBeginEditing(editor: AnyObject)
  func objectDidEndEditing(editor: AnyObject)
  func discardEditing()
  func commitEditing() -> Bool
  func commitEditingWithDelegate(delegate: AnyObject?, didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var editing: Bool { get }
  func encodeWithCoder(aCoder: NSCoder)
}
struct __bindingsControllerFlags {
  var _alwaysPresentsApplicationModalAlerts: UInt32
  var _refreshesAllModelKeys: UInt32
  var _multipleObservedModelObjects: UInt32
  var _isEditing: UInt32
  var _reservedController: UInt32
  init()
  init(_alwaysPresentsApplicationModalAlerts: UInt32, _refreshesAllModelKeys: UInt32, _multipleObservedModelObjects: UInt32, _isEditing: UInt32, _reservedController: UInt32)
}
var NSAppKitVersionNumberWithCursorSizeSupport: Double { get }
class NSCursor : NSObject, NSCoding {
  class func currentCursor() -> NSCursor
  class func currentSystemCursor() -> NSCursor?
  class func arrowCursor() -> NSCursor
  class func IBeamCursor() -> NSCursor
  class func pointingHandCursor() -> NSCursor
  class func closedHandCursor() -> NSCursor
  class func openHandCursor() -> NSCursor
  class func resizeLeftCursor() -> NSCursor
  class func resizeRightCursor() -> NSCursor
  class func resizeLeftRightCursor() -> NSCursor
  class func resizeUpCursor() -> NSCursor
  class func resizeDownCursor() -> NSCursor
  class func resizeUpDownCursor() -> NSCursor
  class func crosshairCursor() -> NSCursor
  class func disappearingItemCursor() -> NSCursor
  class func operationNotAllowedCursor() -> NSCursor
  class func dragLinkCursor() -> NSCursor
  class func dragCopyCursor() -> NSCursor
  class func contextualMenuCursor() -> NSCursor
  class func IBeamCursorForVerticalLayout() -> NSCursor
  init(image newImage: NSImage, hotSpot aPoint: NSPoint)
  convenience init(image newImage: NSImage, foregroundColorHint fg: NSColor?, backgroundColorHint bg: NSColor?, hotSpot: NSPoint)
  class func hide()
  class func unhide()
  class func setHiddenUntilMouseMoves(flag: Bool)
  class func pop()
  var image: NSImage { get }
  var hotSpot: NSPoint { get }
  func push()
  func pop()
  func set()
  func setOnMouseExited(flag: Bool)
  func setOnMouseEntered(flag: Bool)
  var setOnMouseExited: Bool { get }
  var setOnMouseEntered: Bool { get }
  func mouseEntered(theEvent: NSEvent)
  func mouseExited(theEvent: NSEvent)
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSCursor : _Reflectable {
  func _getMirror() -> _MirrorType
}
struct _cursorFlags {
  var onMouseExited: UInt32
  var onMouseEntered: UInt32
  var cursorType: UInt32
  init()
  init(onMouseExited: UInt32, onMouseEntered: UInt32, cursorType: UInt32)
}
class NSCustomImageRep : NSImageRep {
  init(size: NSSize, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: (NSRect) -> Bool)
  var drawingHandler: ((NSRect) -> Bool)? { get }
  init(drawSelector aMethod: Selector, delegate anObject: AnyObject)
  var drawSelector: Selector { get }
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject? { get }
  init()
  init?(coder: NSCoder)
}
class NSDataAsset : NSObject, NSCopying {
  /// Equivalent to -initWithName:name bundle:[NSBundle mainBundle];
  convenience init?(name: String)
  /// Create a data asset with the given name from the given bundle. Returns nil if the asset was not found.
  init?(name: String, bundle: NSBundle)
  /// The name used to reference the data asset
  var name: String { get }
  /// The data for this asset, as stored in the asset catalog
  @NSCopying var data: NSData { get }
  /// The Uniform Type Identifier for this data object.
  var typeIdentifier: String { get }
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSDatePicker : NSControl {
  var datePickerStyle: NSDatePickerStyle
  var bezeled: Bool
  var bordered: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePickerMode
  var datePickerElements: NSDatePickerElementFlags
  @NSCopying var calendar: NSCalendar?
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone?
  @NSCopying var dateValue: NSDate
  var timeInterval: NSTimeInterval
  @NSCopying var minDate: NSDate?
  @NSCopying var maxDate: NSDate?
  unowned(unsafe) var delegate: @sil_unmanaged NSDatePickerCellDelegate?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
enum NSDatePickerStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TextFieldAndStepperDatePickerStyle
  case ClockAndCalendarDatePickerStyle
  case TextFieldDatePickerStyle
}
enum NSDatePickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SingleDateMode
  case RangeDateMode
}
struct NSDatePickerElementFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var HourMinuteDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var HourMinuteSecondDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var TimeZoneDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var YearMonthDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var YearMonthDayDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var EraDatePickerElementFlag: NSDatePickerElementFlags { get }
}
class NSDatePickerCell : NSActionCell {
  var datePickerStyle: NSDatePickerStyle
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePickerMode
  var datePickerElements: NSDatePickerElementFlags
  @NSCopying var calendar: NSCalendar?
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone?
  @NSCopying var dateValue: NSDate
  var timeInterval: NSTimeInterval
  @NSCopying var minDate: NSDate?
  @NSCopying var maxDate: NSDate?
  unowned(unsafe) var delegate: @sil_unmanaged NSDatePickerCellDelegate?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __dateCellFlags {
  var elements: UInt32
  var controlStyle: UInt32
  var controlMode: UInt32
  var trackingHand: UInt32
  var reserved2: UInt32
  var drawsBackground: UInt32
  var digitsEntered: UInt32
  var forcesLeadingZeroes: UInt32
  var wrapsDateComponentArithmetic: UInt32
  init()
  init(elements: UInt32, controlStyle: UInt32, controlMode: UInt32, trackingHand: UInt32, reserved2: UInt32, drawsBackground: UInt32, digitsEntered: UInt32, forcesLeadingZeroes: UInt32, wrapsDateComponentArithmetic: UInt32)
}
protocol NSDatePickerCellDelegate : NSObjectProtocol {
  optional func datePickerCell(aDatePickerCell: NSDatePickerCell, validateProposedDateValue proposedDateValue: AutoreleasingUnsafeMutablePointer<NSDate?>, timeInterval proposedTimeInterval: UnsafeMutablePointer<NSTimeInterval>)
}
class NSDictionaryControllerKeyValuePair : NSObject {
  var key: String?
  var value: AnyObject?
  var localizedKey: String?
  var explicitlyIncluded: Bool { get }
}
class NSDictionaryController : NSArrayController {
  func newObject() -> NSDictionaryControllerKeyValuePair
  var initialKey: String
  var initialValue: AnyObject
  var includedKeys: [String]
  var excludedKeys: [String]
  var localizedKeyDictionary: [String : String]
  var localizedKeyTable: String?
  init(content: AnyObject?)
  init?(coder: NSCoder)
  convenience init()
}
struct __dictionaryControllerFlags {
  var _deepCopiesValues: UInt32
  var _suppressBuildingDictionary: UInt32
  var _reservedDictionaryController: UInt32
  init()
  init(_deepCopiesValues: UInt32, _suppressBuildingDictionary: UInt32, _reservedDictionaryController: UInt32)
}
var NSAppKitVersionNumberWithDockTilePlugInSupport: Double { get }
class NSDockTile : NSObject {
  var size: NSSize { get }
  var contentView: NSView?
  func display()
  var showsApplicationBadge: Bool
  var badgeLabel: String?
  unowned(unsafe) var owner: @sil_unmanaged AnyObject { get }
  init()
}
protocol NSDockTilePlugIn : NSObjectProtocol {
  func setDockTile(dockTile: NSDockTile?)
  optional func dockMenu() -> NSMenu?
}
enum NSDocumentChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ChangeDone
  case ChangeUndone
  case ChangeRedone
  case ChangeCleared
  case ChangeReadOtherContents
  case ChangeAutosaved
  case ChangeDiscardable
}
enum NSSaveOperationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SaveOperation
  case SaveAsOperation
  case SaveToOperation
  case AutosaveInPlaceOperation
  case AutosaveElsewhereOperation
  case AutosaveAsOperation
}
class NSDocument : NSObject, NSFilePresenter, NSUserInterfaceValidations {
  init()
  convenience init(type typeName: String) throws
  class func canConcurrentlyReadDocumentsOfType(typeName: String) -> Bool
  convenience init(contentsOfURL url: NSURL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, ofType typeName: String) throws
  var fileType: String?
  @NSCopying var fileURL: NSURL?
  @NSCopying var fileModificationDate: NSDate?
  var draft: Bool
  func performActivityWithSynchronousWaiting(waitSynchronously: Bool, usingBlock block: (() -> Void) -> Void)
  func continueActivityUsingBlock(block: () -> Void)
  func continueAsynchronousWorkOnMainThreadUsingBlock(block: () -> Void)
  func performSynchronousFileAccessUsingBlock(block: () -> Void)
  func performAsynchronousFileAccessUsingBlock(block: (() -> Void) -> Void)
  @IBAction func revertDocumentToSaved(sender: AnyObject?)
  func revertToContentsOfURL(url: NSURL, ofType typeName: String) throws
  func readFromURL(url: NSURL, ofType typeName: String) throws
  func readFromFileWrapper(fileWrapper: NSFileWrapper, ofType typeName: String) throws
  func readFromData(data: NSData, ofType typeName: String) throws
  var entireFileLoaded: Bool { get }
  func writeToURL(url: NSURL, ofType typeName: String) throws
  func fileWrapperOfType(typeName: String) throws -> NSFileWrapper
  func dataOfType(typeName: String) throws -> NSData
  func unblockUserInteraction()
  var autosavingIsImplicitlyCancellable: Bool { get }
  func writeSafelyToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) throws
  func writeToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func fileAttributesToWriteToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws -> [String : AnyObject]
  var keepBackupFile: Bool { get }
  @NSCopying var backupFileURL: NSURL? { get }
  @IBAction func saveDocument(sender: AnyObject?)
  @IBAction func saveDocumentAs(sender: AnyObject?)
  @IBAction func saveDocumentTo(sender: AnyObject?)
  func saveDocumentWithDelegate(delegate: AnyObject?, didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalSavePanelForSaveOperation(saveOperation: NSSaveOperationType, delegate: AnyObject?, didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var shouldRunSavePanelWithAccessoryView: Bool { get }
  func prepareSavePanel(savePanel: NSSavePanel) -> Bool
  var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { get }
  var fileTypeFromLastRunSavePanel: String? { get }
  func saveToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, delegate: AnyObject?, didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func saveToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, completionHandler: (NSError?) -> Void)
  func canAsynchronouslyWriteToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) -> Bool
  func checkAutosavingSafety() throws
  func scheduleAutosaving()
  var hasUnautosavedChanges: Bool { get }
  func autosaveDocumentWithDelegate(delegate: AnyObject?, didAutosaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func autosaveWithImplicitCancellability(autosavingIsImplicitlyCancellable: Bool, completionHandler: (NSError?) -> Void)
  class func autosavesInPlace() -> Bool
  class func preservesVersions() -> Bool
  @IBAction func browseDocumentVersions(sender: AnyObject?)
  class func autosavesDrafts() -> Bool
  var autosavingFileType: String? { get }
  @NSCopying var autosavedContentsFileURL: NSURL?
  func canCloseDocumentWithDelegate(delegate: AnyObject, shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func close()
  @IBAction func duplicateDocument(sender: AnyObject?)
  func duplicateDocumentWithDelegate(delegate: AnyObject?, didDuplicateSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func duplicate() throws -> NSDocument
  @IBAction func renameDocument(sender: AnyObject?)
  @IBAction func moveDocumentToUbiquityContainer(sender: AnyObject?)
  @IBAction func moveDocument(sender: AnyObject?)
  func moveDocumentWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func moveToURL(url: NSURL, completionHandler: ((NSError?) -> Void)?)
  @IBAction func lockDocument(sender: AnyObject?)
  @IBAction func unlockDocument(sender: AnyObject?)
  func lockDocumentWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func lockWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  func unlockDocumentWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func unlockWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  var locked: Bool { get }
  @IBAction func runPageLayout(sender: AnyObject?)
  func runModalPageLayoutWithPrintInfo(printInfo: NSPrintInfo, delegate: AnyObject?, didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func preparePageLayout(pageLayout: NSPageLayout) -> Bool
  func shouldChangePrintInfo(newPrintInfo: NSPrintInfo) -> Bool
  @NSCopying var printInfo: NSPrintInfo
  @IBAction func printDocument(sender: AnyObject?)
  func printDocumentWithSettings(printSettings: [String : AnyObject], showPrintPanel: Bool, delegate: AnyObject?, didPrintSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func printOperationWithSettings(printSettings: [String : AnyObject]) throws -> NSPrintOperation
  func runModalPrintOperation(printOperation: NSPrintOperation, delegate: AnyObject?, didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @IBAction func saveDocumentToPDF(sender: AnyObject?)
  var PDFPrintOperation: NSPrintOperation { get }
  var documentEdited: Bool { get }
  var inViewingMode: Bool { get }
  func updateChangeCount(change: NSDocumentChangeType)
  func changeCountTokenForSaveOperation(saveOperation: NSSaveOperationType) -> AnyObject
  func updateChangeCountWithToken(changeCountToken: AnyObject, forSaveOperation saveOperation: NSSaveOperationType)
  var undoManager: NSUndoManager?
  var hasUndoManager: Bool
  func presentError(error: NSError, modalForWindow window: NSWindow, delegate: AnyObject?, didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: NSError) -> Bool
  func willPresentError(error: NSError) -> NSError
  func willNotPresentError(error: NSError)
  func makeWindowControllers()
  var windowNibName: String? { get }
  func windowControllerWillLoadNib(windowController: NSWindowController)
  func windowControllerDidLoadNib(windowController: NSWindowController)
  func setWindow(window: NSWindow?)
  func addWindowController(windowController: NSWindowController)
  func removeWindowController(windowController: NSWindowController)
  func showWindows()
  var windowControllers: [NSWindowController] { get }
  func shouldCloseWindowController(windowController: NSWindowController, delegate: AnyObject?, shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func setDisplayName(displayNameOrNil: String?)
  var displayName: String { get }
  func defaultDraftName() -> String
  var windowForSheet: NSWindow? { get }
  class func readableTypes() -> [String]
  class func writableTypes() -> [String]
  class func isNativeType(type: String) -> Bool
  func writableTypesForSaveOperation(saveOperation: NSSaveOperationType) -> [String]
  func fileNameExtensionForType(typeName: String, saveOperation: NSSaveOperationType) -> String?
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  class func usesUbiquitousStorage() -> Bool
  @NSCopying var presentedItemURL: NSURL? { get }
  var presentedItemOperationQueue: NSOperationQueue { get }
  @NSCopying var primaryPresentedItemURL: NSURL? { get }
  func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func presentedItemDidMoveToURL(newURL: NSURL)
  func presentedItemDidChange()
  func presentedItemDidGainVersion(version: NSFileVersion)
  func presentedItemDidLoseVersion(version: NSFileVersion)
  func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  func accommodatePresentedSubitemDeletionAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  func presentedSubitemDidAppearAtURL(url: NSURL)
  func presentedSubitemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  func presentedSubitemDidChangeAtURL(url: NSURL)
  func presentedSubitemAtURL(url: NSURL, didGainVersion version: NSFileVersion)
  func presentedSubitemAtURL(url: NSURL, didLoseVersion version: NSFileVersion)
  func presentedSubitemAtURL(url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
struct __docFlags {
  var inClose: UInt32
  var hasUndoManager: UInt32
  var unused: UInt32
  var reconciledToFileName: UInt32
  var checkingDisplayName: UInt32
  var hasInvalidRestorableState: UInt32
  var hasEverHadInvalidRestorableState: UInt32
  var RESERVED: UInt32
  init()
  init(inClose: UInt32, hasUndoManager: UInt32, unused: UInt32, reconciledToFileName: UInt32, checkingDisplayName: UInt32, hasInvalidRestorableState: UInt32, hasEverHadInvalidRestorableState: UInt32, RESERVED: UInt32)
}
extension NSDocument {
}
class NSDocumentController : NSObject, NSCoding, NSUserInterfaceValidations {
  class func sharedDocumentController() -> NSDocumentController
  init()
  init?(coder: NSCoder)
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func documentForURL(url: NSURL) -> NSDocument?
  func documentForWindow(window: NSWindow) -> NSDocument?
  func addDocument(document: NSDocument)
  func removeDocument(document: NSDocument)
  @IBAction func newDocument(sender: AnyObject?)
  func openUntitledDocumentAndDisplay(displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocumentOfType(typeName: String) throws -> NSDocument
  @IBAction func openDocument(sender: AnyObject?)
  func URLsFromRunningOpenPanel() -> [NSURL]?
  func runModalOpenPanel(openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  func beginOpenPanelWithCompletionHandler(completionHandler: ([NSURL]?) -> Void)
  func beginOpenPanel(openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler: (Int) -> Void)
  func openDocumentWithContentsOfURL(url: NSURL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocumentWithContentsOfURL(url: NSURL, ofType typeName: String) throws -> NSDocument
  func reopenDocumentForURL(urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocumentForURL(urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: NSTimeInterval
  @IBAction func saveAllDocuments(sender: AnyObject?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocumentsWithAlertTitle(title: String?, cancellable: Bool, delegate: AnyObject?, didReviewAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func closeAllDocumentsWithDelegate(delegate: AnyObject?, didCloseAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func duplicateDocumentWithContentsOfURL(url: NSURL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
  func presentError(error: NSError, modalForWindow window: NSWindow, delegate: AnyObject?, didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: NSError) -> Bool
  func willPresentError(error: NSError) -> NSError
  var maximumRecentDocumentCount: Int { get }
  @IBAction func clearRecentDocuments(sender: AnyObject?)
  func noteNewRecentDocument(document: NSDocument)
  func noteNewRecentDocumentURL(url: NSURL)
  var recentDocumentURLs: [NSURL] { get }
  var defaultType: String? { get }
  func typeForContentsOfURL(url: NSURL) throws -> String
  var documentClassNames: [String] { get }
  func documentClassForType(typeName: String) -> AnyClass?
  func displayNameForType(typeName: String) -> String?
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSDocumentController {
}
extension NSDocument {
  var lastComponentOfFileName: String
  func handleSaveScriptCommand(command: NSScriptCommand) -> AnyObject?
  func handleCloseScriptCommand(command: NSCloseCommand) -> AnyObject?
  func handlePrintScriptCommand(command: NSScriptCommand) -> AnyObject?
  var objectSpecifier: NSScriptObjectSpecifier { get }
}
struct NSDragOperation : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSDragOperation { get }
  static var Copy: NSDragOperation { get }
  static var Link: NSDragOperation { get }
  static var Generic: NSDragOperation { get }
  static var Private: NSDragOperation { get }
  static var Move: NSDragOperation { get }
  static var Delete: NSDragOperation { get }
  static var Every: NSDragOperation { get }
  static var All_Obsolete: NSDragOperation { get }
  static var All: NSDragOperation { get }
}
enum NSDraggingFormation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case Pile
  case List
  case Stack
}
enum NSDraggingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OutsideApplication
  case WithinApplication
}
struct NSDraggingItemEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSDraggingItemEnumerationOptions { get }
  static var ClearNonenumeratedImages: NSDraggingItemEnumerationOptions { get }
}
enum NSSpringLoadingHighlight : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Standard
  case Emphasized
}
protocol NSDraggingInfo : NSObjectProtocol {
  func draggingDestinationWindow() -> NSWindow?
  func draggingSourceOperationMask() -> NSDragOperation
  func draggingLocation() -> NSPoint
  func draggedImageLocation() -> NSPoint
  func draggedImage() -> NSImage?
  func draggingPasteboard() -> NSPasteboard
  func draggingSource() -> AnyObject?
  func draggingSequenceNumber() -> Int
  func slideDraggedImageTo(screenPoint: NSPoint)
  func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
  var draggingFormation: NSDraggingFormation { get set }
  var animatesToDestination: Bool { get set }
  var numberOfValidItemsForDrop: Int { get set }
  func enumerateDraggingItemsWithOptions(enumOpts: NSDraggingItemEnumerationOptions, forView view: NSView, classes classArray: [AnyClass], searchOptions: [String : AnyObject], usingBlock block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var springLoadingHighlight: NSSpringLoadingHighlight { get }
  func resetSpringLoading()
}
protocol NSDraggingDestination : NSObjectProtocol {
  optional func draggingEntered(sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingUpdated(sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingExited(sender: NSDraggingInfo?)
  optional func prepareForDragOperation(sender: NSDraggingInfo) -> Bool
  optional func performDragOperation(sender: NSDraggingInfo) -> Bool
  optional func concludeDragOperation(sender: NSDraggingInfo?)
  optional func draggingEnded(sender: NSDraggingInfo?)
  optional func wantsPeriodicDraggingUpdates() -> Bool
  optional func updateDraggingItemsForDrag(sender: NSDraggingInfo?)
}
protocol NSDraggingSource : NSObjectProtocol {
  func draggingSession(session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  optional func draggingSession(session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  optional func draggingSession(session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  optional func draggingSession(session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  optional func ignoreModifierKeysForDraggingSession(session: NSDraggingSession) -> Bool
}
struct NSSpringLoadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Disabled: NSSpringLoadingOptions { get }
  static var Enabled: NSSpringLoadingOptions { get }
  static var ContinuousActivation: NSSpringLoadingOptions { get }
  static var NoHover: NSSpringLoadingOptions { get }
}
protocol NSSpringLoadingDestination : NSObjectProtocol {
  func springLoadingActivated(activated: Bool, draggingInfo: NSDraggingInfo)
  func springLoadingHighlightChanged(draggingInfo: NSDraggingInfo)
  optional func springLoadingEntered(draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  optional func springLoadingUpdated(draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  optional func springLoadingExited(draggingInfo: NSDraggingInfo)
  optional func draggingEnded(draggingInfo: NSDraggingInfo)
}
extension NSObject {
  class func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
  func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
}
let NSDraggingImageComponentIconKey: String
let NSDraggingImageComponentLabelKey: String
class NSDraggingImageComponent : NSObject {
  init(key: String)
  var key: String
  var contents: AnyObject?
  var frame: NSRect
  convenience init()
}
class NSDraggingItem : NSObject {
  init(pasteboardWriter: NSPasteboardWriting)
  var item: AnyObject { get }
  var draggingFrame: NSRect
  var imageComponentsProvider: (() -> [NSDraggingImageComponent])?
  func setDraggingFrame(frame: NSRect, contents: AnyObject)
  var imageComponents: [NSDraggingImageComponent]? { get }
  convenience init()
}
class NSDraggingSession : NSObject {
  var draggingFormation: NSDraggingFormation
  var animatesToStartingPositionsOnCancelOrFail: Bool
  var draggingLeaderIndex: Int
  var draggingPasteboard: NSPasteboard { get }
  var draggingSequenceNumber: Int { get }
  var draggingLocation: NSPoint { get }
  func enumerateDraggingItemsWithOptions(enumOpts: NSDraggingItemEnumerationOptions, forView view: NSView?, classes classArray: [AnyClass], searchOptions: [String : AnyObject], usingBlock block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
}
enum NSDrawerState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ClosedState
  case OpeningState
  case OpenState
  case ClosingState
}
class NSDrawer : NSResponder, NSAccessibilityElementProtocol, NSAccessibility {
  init(contentSize: NSSize, preferredEdge edge: NSRectEdge)
  unowned(unsafe) var parentWindow: @sil_unmanaged NSWindow?
  var contentView: NSView?
  var preferredEdge: NSRectEdge
  unowned(unsafe) var delegate: @sil_unmanaged NSDrawerDelegate?
  func open()
  func openOnEdge(edge: NSRectEdge)
  func close()
  func open(sender: AnyObject?)
  func close(sender: AnyObject?)
  func toggle(sender: AnyObject?)
  var state: Int { get }
  var edge: NSRectEdge { get }
  var contentSize: NSSize
  var minContentSize: NSSize
  var maxContentSize: NSSize
  var leadingOffset: CGFloat
  var trailingOffset: CGFloat
  init()
  init?(coder: NSCoder)
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityRangeForLine(line: Int) -> NSRange
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  func accessibilityRangeForIndex(index: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityPerformCancel() -> Bool
  func accessibilityPerformConfirm() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityPerformDelete() -> Bool
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformPick() -> Bool
  func accessibilityPerformPress() -> Bool
  func accessibilityPerformRaise() -> Bool
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func accessibilityPerformShowMenu() -> Bool
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  func isAccessibilityElement() -> Bool
  func setAccessibilityElement(accessibilityElement: Bool)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  func accessibilityActivationPoint() -> NSPoint
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  func accessibilityTopLevelUIElement() -> AnyObject?
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  func accessibilityURL() -> NSURL?
  func setAccessibilityURL(accessibilityURL: NSURL?)
  func accessibilityValue() -> AnyObject?
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  func accessibilityValueDescription() -> String?
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  func accessibilityVisibleChildren() -> [AnyObject]?
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  func accessibilitySubrole() -> String?
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  func accessibilityTitle() -> String?
  func setAccessibilityTitle(accessibilityTitle: String?)
  func accessibilityTitleUIElement() -> AnyObject?
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  func accessibilityNextContents() -> [AnyObject]?
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  func accessibilityOverflowButton() -> AnyObject?
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  func accessibilityPlaceholderValue() -> String?
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  func accessibilityPreviousContents() -> [AnyObject]?
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  func accessibilityRole() -> String?
  func setAccessibilityRole(accessibilityRole: String?)
  func accessibilityRoleDescription() -> String?
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  func accessibilitySearchButton() -> AnyObject?
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  func accessibilitySearchMenu() -> AnyObject?
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  func isAccessibilitySelected() -> Bool
  func setAccessibilitySelected(accessibilitySelected: Bool)
  func accessibilitySelectedChildren() -> [AnyObject]?
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  func accessibilityShownMenu() -> AnyObject?
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  func accessibilityMinValue() -> AnyObject?
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  func accessibilityMaxValue() -> AnyObject?
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  func accessibilityWindow() -> AnyObject?
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func accessibilityHelp() -> String?
  func setAccessibilityHelp(accessibilityHelp: String?)
  func accessibilityFilename() -> String?
  func setAccessibilityFilename(accessibilityFilename: String?)
  func isAccessibilityExpanded() -> Bool
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  func isAccessibilityEdited() -> Bool
  func setAccessibilityEdited(accessibilityEdited: Bool)
  func isAccessibilityEnabled() -> Bool
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  func accessibilityChildren() -> [AnyObject]?
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  func accessibilityClearButton() -> AnyObject?
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  func accessibilityCancelButton() -> AnyObject?
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  func isAccessibilityProtectedContent() -> Bool
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  func accessibilityContents() -> [AnyObject]?
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  func accessibilityLabel() -> String?
  func setAccessibilityLabel(accessibilityLabel: String?)
  func isAccessibilityAlternateUIVisible() -> Bool
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  func accessibilityMainWindow() -> AnyObject?
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  func isAccessibilityHidden() -> Bool
  func setAccessibilityHidden(accessibilityHidden: Bool)
  func isAccessibilityFrontmost() -> Bool
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  func accessibilityFocusedWindow() -> AnyObject?
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  func accessibilityWindows() -> [AnyObject]?
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  func accessibilityExtrasMenuBar() -> AnyObject?
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  func accessibilityMenuBar() -> AnyObject?
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  func accessibilityColumnTitles() -> [AnyObject]?
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  func isAccessibilityOrderedByRow() -> Bool
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  func accessibilityHorizontalUnitDescription() -> String?
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  func accessibilityVerticalUnitDescription() -> String?
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  func accessibilityHandles() -> [AnyObject]?
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  func accessibilityWarningValue() -> AnyObject?
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  func accessibilityCriticalValue() -> AnyObject?
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  func isAccessibilityDisclosed() -> Bool
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  func accessibilityDisclosedByRow() -> AnyObject?
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  func accessibilityDisclosedRows() -> AnyObject?
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  func accessibilityDisclosureLevel() -> Int
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  func accessibilityMarkerValues() -> AnyObject?
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  func accessibilityUnits() -> NSAccessibilityUnits
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  func accessibilityUnitDescription() -> String?
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  func accessibilityMarkerTypeDescription() -> String?
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  func accessibilityVerticalScrollBar() -> AnyObject?
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  func accessibilityAllowedValues() -> [NSNumber]?
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  func accessibilityLabelUIElements() -> [AnyObject]?
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  func accessibilityLabelValue() -> Float
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  func accessibilitySplitters() -> [AnyObject]?
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  func accessibilityDecrementButton() -> AnyObject?
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  func accessibilityIncrementButton() -> AnyObject?
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  func accessibilityTabs() -> [AnyObject]?
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  func accessibilityHeader() -> AnyObject?
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  func accessibilityColumnCount() -> Int
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  func accessibilityRowCount() -> Int
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  func accessibilityIndex() -> Int
  func setAccessibilityIndex(accessibilityIndex: Int)
  func accessibilityColumns() -> [AnyObject]?
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  func accessibilityRows() -> [AnyObject]?
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  func accessibilityVisibleRows() -> [AnyObject]?
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  func accessibilitySelectedRows() -> [AnyObject]?
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  func accessibilityVisibleColumns() -> [AnyObject]?
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  func accessibilitySelectedColumns() -> [AnyObject]?
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  func accessibilitySelectedCells() -> [AnyObject]?
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  func accessibilityVisibleCells() -> [AnyObject]?
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  func accessibilityRowIndexRange() -> NSRange
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  func accessibilityColumnIndexRange() -> NSRange
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  func accessibilityInsertionPointLineNumber() -> Int
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  func accessibilitySharedCharacterRange() -> NSRange
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  func accessibilityVisibleCharacterRange() -> NSRange
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  func accessibilityNumberOfCharacters() -> Int
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  func accessibilitySelectedText() -> String?
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  func accessibilitySelectedTextRange() -> NSRange
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  func accessibilityToolbarButton() -> AnyObject?
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  func isAccessibilityModal() -> Bool
  func setAccessibilityModal(accessibilityModal: Bool)
  func accessibilityProxy() -> AnyObject?
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  func isAccessibilityMain() -> Bool
  func setAccessibilityMain(accessibilityMain: Bool)
  func accessibilityFullScreenButton() -> AnyObject?
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  func accessibilityGrowArea() -> AnyObject?
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  func accessibilityDocument() -> String?
  func setAccessibilityDocument(accessibilityDocument: String?)
  func accessibilityDefaultButton() -> AnyObject?
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  func accessibilityCloseButton() -> AnyObject?
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  func accessibilityZoomButton() -> AnyObject?
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  func accessibilityMinimizeButton() -> AnyObject?
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  func isAccessibilityMinimized() -> Bool
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
extension NSWindow {
  var drawers: [NSDrawer]? { get }
}
protocol NSDrawerDelegate : NSObjectProtocol {
  optional func drawerShouldOpen(sender: NSDrawer) -> Bool
  optional func drawerShouldClose(sender: NSDrawer) -> Bool
  optional func drawerWillResizeContents(sender: NSDrawer, toSize contentSize: NSSize) -> NSSize
  optional func drawerWillOpen(notification: NSNotification)
  optional func drawerDidOpen(notification: NSNotification)
  optional func drawerWillClose(notification: NSNotification)
  optional func drawerDidClose(notification: NSNotification)
}
let NSDrawerWillOpenNotification: String
let NSDrawerDidOpenNotification: String
let NSDrawerWillCloseNotification: String
let NSDrawerDidCloseNotification: String
class NSEPSImageRep : NSImageRep {
  init?(data epsData: NSData)
  func prepareGState()
  @NSCopying var EPSRepresentation: NSData { get }
  var boundingBox: NSRect { get }
  init()
  init?(coder: NSCoder)
}
let NSTextLineTooLongException: String
let NSTextNoSelectionException: String
let NSWordTablesWriteException: String
let NSWordTablesReadException: String
let NSTextReadException: String
let NSTextWriteException: String
let NSPasteboardCommunicationException: String
let NSPrintingCommunicationException: String
let NSAbortModalException: String
let NSAbortPrintingException: String
let NSIllegalSelectorException: String
let NSAppKitVirtualMemoryException: String
let NSBadRTFDirectiveException: String
let NSBadRTFFontTableException: String
let NSBadRTFStyleSheetException: String
let NSTypedStreamVersionException: String
let NSTIFFException: String
let NSPrintPackageException: String
let NSBadRTFColorTableException: String
let NSDraggingException: String
let NSColorListIOException: String
let NSColorListNotEditableException: String
let NSBadBitmapParametersException: String
let NSWindowServerCommunicationException: String
let NSFontUnavailableException: String
let NSPPDIncludeNotFoundException: String
let NSPPDParseException: String
let NSPPDIncludeStackOverflowException: String
let NSPPDIncludeStackUnderflowException: String
let NSRTFPropertyStackOverflowException: String
let NSAppKitIgnoredException: String
let NSBadComparisonException: String
let NSImageCacheException: String
let NSNibLoadingException: String
let NSBrowserIllegalDelegateException: String
let NSAccessibilityException: String
enum NSEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LeftMouseDown
  case LeftMouseUp
  case RightMouseDown
  case RightMouseUp
  case MouseMoved
  case LeftMouseDragged
  case RightMouseDragged
  case MouseEntered
  case MouseExited
  case KeyDown
  case KeyUp
  case FlagsChanged
  case AppKitDefined
  case SystemDefined
  case ApplicationDefined
  case Periodic
  case CursorUpdate
  case ScrollWheel
  case TabletPoint
  case TabletProximity
  case OtherMouseDown
  case OtherMouseUp
  case OtherMouseDragged
  case EventTypeGesture
  case EventTypeMagnify
  case EventTypeSwipe
  case EventTypeRotate
  case EventTypeBeginGesture
  case EventTypeEndGesture
  case EventTypeSmartMagnify
  case EventTypeQuickLook
  case EventTypePressure
}
struct NSEventMask : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var LeftMouseDownMask: NSEventMask { get }
  static var LeftMouseUpMask: NSEventMask { get }
  static var RightMouseDownMask: NSEventMask { get }
  static var RightMouseUpMask: NSEventMask { get }
  static var MouseMovedMask: NSEventMask { get }
  static var LeftMouseDraggedMask: NSEventMask { get }
  static var RightMouseDraggedMask: NSEventMask { get }
  static var MouseEnteredMask: NSEventMask { get }
  static var MouseExitedMask: NSEventMask { get }
  static var KeyDownMask: NSEventMask { get }
  static var KeyUpMask: NSEventMask { get }
  static var FlagsChangedMask: NSEventMask { get }
  static var AppKitDefinedMask: NSEventMask { get }
  static var SystemDefinedMask: NSEventMask { get }
  static var ApplicationDefinedMask: NSEventMask { get }
  static var PeriodicMask: NSEventMask { get }
  static var CursorUpdateMask: NSEventMask { get }
  static var ScrollWheelMask: NSEventMask { get }
  static var TabletPointMask: NSEventMask { get }
  static var TabletProximityMask: NSEventMask { get }
  static var OtherMouseDownMask: NSEventMask { get }
  static var OtherMouseUpMask: NSEventMask { get }
  static var OtherMouseDraggedMask: NSEventMask { get }
  static var EventMaskGesture: NSEventMask { get }
  static var EventMaskMagnify: NSEventMask { get }
  static var EventMaskSwipe: NSEventMask { get }
  static var EventMaskRotate: NSEventMask { get }
  static var EventMaskBeginGesture: NSEventMask { get }
  static var EventMaskEndGesture: NSEventMask { get }
  static var EventMaskSmartMagnify: NSEventMask { get }
  static var EventMaskPressure: NSEventMask { get }
  static var AnyEventMask: NSEventMask { get }
}
func NSEventMaskFromType(type: NSEventType) -> NSEventMask
struct NSEventModifierFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AlphaShiftKeyMask: NSEventModifierFlags { get }
  static var ShiftKeyMask: NSEventModifierFlags { get }
  static var ControlKeyMask: NSEventModifierFlags { get }
  static var AlternateKeyMask: NSEventModifierFlags { get }
  static var CommandKeyMask: NSEventModifierFlags { get }
  static var NumericPadKeyMask: NSEventModifierFlags { get }
  static var HelpKeyMask: NSEventModifierFlags { get }
  static var FunctionKeyMask: NSEventModifierFlags { get }
  static var DeviceIndependentModifierFlagsMask: NSEventModifierFlags { get }
}
enum NSPointingDeviceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnknownPointingDevice
  case PenPointingDevice
  case CursorPointingDevice
  case EraserPointingDevice
}
struct NSEventButtonMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PenTipMask: NSEventButtonMask { get }
  static var PenLowerSideMask: NSEventButtonMask { get }
  static var PenUpperSideMask: NSEventButtonMask { get }
}
struct NSEventPhase : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSEventPhase { get }
  static var Began: NSEventPhase { get }
  static var Stationary: NSEventPhase { get }
  static var Changed: NSEventPhase { get }
  static var Ended: NSEventPhase { get }
  static var Cancelled: NSEventPhase { get }
  static var MayBegin: NSEventPhase { get }
}
enum NSEventGestureAxis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Horizontal
  case Vertical
}
struct NSEventSwipeTrackingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LockDirection: NSEventSwipeTrackingOptions { get }
  static var ClampGestureAmount: NSEventSwipeTrackingOptions { get }
}
enum NSEventSubtype : Int16 {
  init?(rawValue: Int16)
  var rawValue: Int16 { get }
  case NSWindowExposedEventType
  case NSApplicationActivatedEventType
  case NSApplicationDeactivatedEventType
  case NSWindowMovedEventType
  case NSScreenChangedEventType
  case NSAWTEventType
  static var NSPowerOffEventType: NSEventSubtype { get }
  static var NSMouseEventSubtype: NSEventSubtype { get }
  static var NSTabletPointEventSubtype: NSEventSubtype { get }
  static var NSTabletProximityEventSubtype: NSEventSubtype { get }
  case NSTouchEventSubtype
}
enum NSPressureBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case PrimaryDefault
  case PrimaryClick
  case PrimaryGeneric
  case PrimaryAccelerator
  case PrimaryDeepClick
  case PrimaryDeepDrag
}
class NSEvent : NSObject, NSCopying, NSCoding {
  var type: NSEventType { get }
  var modifierFlags: NSEventModifierFlags { get }
  var timestamp: NSTimeInterval { get }
  unowned(unsafe) var window: @sil_unmanaged NSWindow? { get }
  var windowNumber: Int { get }
  var context: NSGraphicsContext? { get }
  var clickCount: Int { get }
  var buttonNumber: Int { get }
  var eventNumber: Int { get }
  var pressure: Float { get }
  var locationInWindow: NSPoint { get }
  var deltaX: CGFloat { get }
  var deltaY: CGFloat { get }
  var deltaZ: CGFloat { get }
  var hasPreciseScrollingDeltas: Bool { get }
  var scrollingDeltaX: CGFloat { get }
  var scrollingDeltaY: CGFloat { get }
  var momentumPhase: NSEventPhase { get }
  var directionInvertedFromDevice: Bool { get }
  var characters: String? { get }
  var charactersIgnoringModifiers: String? { get }
  var ARepeat: Bool { get }
  var keyCode: UInt16 { get }
  var trackingNumber: Int { get }
  var userData: UnsafeMutablePointer<Void> { get }
  var trackingArea: NSTrackingArea? { get }
  var subtype: NSEventSubtype { get }
  var data1: Int { get }
  var data2: Int { get }
  var eventRef: UnsafePointer<Void> { get }
   init?(eventRef: UnsafePointer<Void>)
  var CGEvent: CGEvent? { get }
   init?(CGEvent cgEvent: CGEvent)
  class func setMouseCoalescingEnabled(flag: Bool)
  class func isMouseCoalescingEnabled() -> Bool
  var magnification: CGFloat { get }
  var deviceID: Int { get }
  var rotation: Float { get }
  var absoluteX: Int { get }
  var absoluteY: Int { get }
  var absoluteZ: Int { get }
  var buttonMask: NSEventButtonMask { get }
  var tilt: NSPoint { get }
  var tangentialPressure: Float { get }
  var vendorDefined: AnyObject { get }
  var vendorID: Int { get }
  var tabletID: Int { get }
  var pointingDeviceID: Int { get }
  var systemTabletID: Int { get }
  var vendorPointingDeviceType: Int { get }
  var pointingDeviceSerialNumber: Int { get }
  var uniqueID: UInt64 { get }
  var capabilityMask: Int { get }
  var pointingDeviceType: NSPointingDeviceType { get }
  var enteringProximity: Bool { get }
  func touchesMatchingPhase(phase: NSTouchPhase, inView view: NSView?) -> Set<NSTouch>
  var phase: NSEventPhase { get }
  var stage: Int { get }
  var stageTransition: CGFloat { get }
  var associatedEventsMask: NSEventMask { get }
  var pressureBehavior: NSPressureBehavior { get }
  class func isSwipeTrackingFromScrollEventsEnabled() -> Bool
  func trackSwipeEventWithOptions(options: NSEventSwipeTrackingOptions, dampenAmountThresholdMin minDampenThreshold: CGFloat, max maxDampenThreshold: CGFloat, usingHandler trackingHandler: (CGFloat, NSEventPhase, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  class func startPeriodicEventsAfterDelay(delay: NSTimeInterval, withPeriod period: NSTimeInterval)
  class func stopPeriodicEvents()
  class func mouseEventWithType(type: NSEventType, location: NSPoint, modifierFlags flags: NSEventModifierFlags, timestamp time: NSTimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, eventNumber eNum: Int, clickCount cNum: Int, pressure: Float) -> NSEvent?
  class func keyEventWithType(type: NSEventType, location: NSPoint, modifierFlags flags: NSEventModifierFlags, timestamp time: NSTimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, characters keys: String, charactersIgnoringModifiers ukeys: String, isARepeat flag: Bool, keyCode code: UInt16) -> NSEvent?
  class func enterExitEventWithType(type: NSEventType, location: NSPoint, modifierFlags flags: NSEventModifierFlags, timestamp time: NSTimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, eventNumber eNum: Int, trackingNumber tNum: Int, userData data: UnsafeMutablePointer<Void>) -> NSEvent?
  class func otherEventWithType(type: NSEventType, location: NSPoint, modifierFlags flags: NSEventModifierFlags, timestamp time: NSTimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, subtype: Int16, data1 d1: Int, data2 d2: Int) -> NSEvent?
  class func mouseLocation() -> NSPoint
  class func modifierFlags() -> NSEventModifierFlags
  class func pressedMouseButtons() -> Int
  class func doubleClickInterval() -> NSTimeInterval
  class func keyRepeatDelay() -> NSTimeInterval
  class func keyRepeatInterval() -> NSTimeInterval
  class func addGlobalMonitorForEventsMatchingMask(mask: NSEventMask, handler block: (NSEvent) -> Void) -> AnyObject?
  class func addLocalMonitorForEventsMatchingMask(mask: NSEventMask, handler block: (NSEvent) -> NSEvent?) -> AnyObject?
  class func removeMonitor(eventMonitor: AnyObject)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
var NSUpArrowFunctionKey: Int { get }
var NSDownArrowFunctionKey: Int { get }
var NSLeftArrowFunctionKey: Int { get }
var NSRightArrowFunctionKey: Int { get }
var NSF1FunctionKey: Int { get }
var NSF2FunctionKey: Int { get }
var NSF3FunctionKey: Int { get }
var NSF4FunctionKey: Int { get }
var NSF5FunctionKey: Int { get }
var NSF6FunctionKey: Int { get }
var NSF7FunctionKey: Int { get }
var NSF8FunctionKey: Int { get }
var NSF9FunctionKey: Int { get }
var NSF10FunctionKey: Int { get }
var NSF11FunctionKey: Int { get }
var NSF12FunctionKey: Int { get }
var NSF13FunctionKey: Int { get }
var NSF14FunctionKey: Int { get }
var NSF15FunctionKey: Int { get }
var NSF16FunctionKey: Int { get }
var NSF17FunctionKey: Int { get }
var NSF18FunctionKey: Int { get }
var NSF19FunctionKey: Int { get }
var NSF20FunctionKey: Int { get }
var NSF21FunctionKey: Int { get }
var NSF22FunctionKey: Int { get }
var NSF23FunctionKey: Int { get }
var NSF24FunctionKey: Int { get }
var NSF25FunctionKey: Int { get }
var NSF26FunctionKey: Int { get }
var NSF27FunctionKey: Int { get }
var NSF28FunctionKey: Int { get }
var NSF29FunctionKey: Int { get }
var NSF30FunctionKey: Int { get }
var NSF31FunctionKey: Int { get }
var NSF32FunctionKey: Int { get }
var NSF33FunctionKey: Int { get }
var NSF34FunctionKey: Int { get }
var NSF35FunctionKey: Int { get }
var NSInsertFunctionKey: Int { get }
var NSDeleteFunctionKey: Int { get }
var NSHomeFunctionKey: Int { get }
var NSBeginFunctionKey: Int { get }
var NSEndFunctionKey: Int { get }
var NSPageUpFunctionKey: Int { get }
var NSPageDownFunctionKey: Int { get }
var NSPrintScreenFunctionKey: Int { get }
var NSScrollLockFunctionKey: Int { get }
var NSPauseFunctionKey: Int { get }
var NSSysReqFunctionKey: Int { get }
var NSBreakFunctionKey: Int { get }
var NSResetFunctionKey: Int { get }
var NSStopFunctionKey: Int { get }
var NSMenuFunctionKey: Int { get }
var NSUserFunctionKey: Int { get }
var NSSystemFunctionKey: Int { get }
var NSPrintFunctionKey: Int { get }
var NSClearLineFunctionKey: Int { get }
var NSClearDisplayFunctionKey: Int { get }
var NSInsertLineFunctionKey: Int { get }
var NSDeleteLineFunctionKey: Int { get }
var NSInsertCharFunctionKey: Int { get }
var NSDeleteCharFunctionKey: Int { get }
var NSPrevFunctionKey: Int { get }
var NSNextFunctionKey: Int { get }
var NSSelectFunctionKey: Int { get }
var NSExecuteFunctionKey: Int { get }
var NSUndoFunctionKey: Int { get }
var NSRedoFunctionKey: Int { get }
var NSFindFunctionKey: Int { get }
var NSHelpFunctionKey: Int { get }
var NSModeSwitchFunctionKey: Int { get }
extension NSFileWrapper {
  var icon: NSImage?
}
typealias NSGlyph = UInt32
var NSControlGlyph: Int { get }
var NSNullGlyph: Int { get }
var NSFontIdentityMatrix: UnsafePointer<CGFloat>
enum NSMultibyteGlyphPacking : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NativeShortGlyphPacking
}
enum NSFontRenderingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultRenderingMode
  case AntialiasedRenderingMode
  case IntegerAdvancementsRenderingMode
  case AntialiasedIntegerAdvancementsRenderingMode
}
class NSFont : NSObject, NSCopying, NSSecureCoding {
   init?(name fontName: String, size fontSize: CGFloat)
   init?(name fontName: String, matrix fontMatrix: UnsafePointer<CGFloat>)
   init?(descriptor fontDescriptor: NSFontDescriptor, size fontSize: CGFloat)
   init?(descriptor fontDescriptor: NSFontDescriptor, textTransform: NSAffineTransform?)
  class func userFontOfSize(fontSize: CGFloat) -> NSFont?
  class func userFixedPitchFontOfSize(fontSize: CGFloat) -> NSFont?
  class func setUserFont(aFont: NSFont?)
  class func setUserFixedPitchFont(aFont: NSFont?)
  class func systemFontOfSize(fontSize: CGFloat) -> NSFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> NSFont
  class func labelFontOfSize(fontSize: CGFloat) -> NSFont
  class func titleBarFontOfSize(fontSize: CGFloat) -> NSFont
  class func menuFontOfSize(fontSize: CGFloat) -> NSFont
  class func menuBarFontOfSize(fontSize: CGFloat) -> NSFont
  class func messageFontOfSize(fontSize: CGFloat) -> NSFont
  class func paletteFontOfSize(fontSize: CGFloat) -> NSFont
  class func toolTipsFontOfSize(fontSize: CGFloat) -> NSFont
  class func controlContentFontOfSize(fontSize: CGFloat) -> NSFont
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> NSFont
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> NSFont
  class func systemFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func labelFontSize() -> CGFloat
  class func systemFontSizeForControlSize(controlSize: NSControlSize) -> CGFloat
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var matrix: UnsafePointer<CGFloat> { get }
  var familyName: String? { get }
  var displayName: String? { get }
  var fontDescriptor: NSFontDescriptor { get }
  @NSCopying var textTransform: NSAffineTransform { get }
  var numberOfGlyphs: Int { get }
  var mostCompatibleStringEncoding: UInt { get }
  func glyphWithName(aName: String) -> NSGlyph
  var coveredCharacterSet: NSCharacterSet { get }
  var boundingRectForFont: NSRect { get }
  var maximumAdvancement: NSSize { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var leading: CGFloat { get }
  var underlinePosition: CGFloat { get }
  var underlineThickness: CGFloat { get }
  var italicAngle: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  var fixedPitch: Bool { get }
  func boundingRectForGlyph(aGlyph: NSGlyph) -> NSRect
  func advancementForGlyph(ag: NSGlyph) -> NSSize
  func getBoundingRects(bounds: NSRectArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: NSSizeArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: NSSizeArray, forPackedGlyphs packedGlyphs: UnsafePointer<Void>, length: Int)
  func set()
  func setInContext(graphicsContext: NSGraphicsContext)
  @NSCopying var printerFont: NSFont { get }
  @NSCopying var screenFont: NSFont { get }
  func screenFontWithRenderingMode(renderingMode: NSFontRenderingMode) -> NSFont
  var renderingMode: NSFontRenderingMode { get }
  @NSCopying var verticalFont: NSFont { get }
  var vertical: Bool { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __fFlags {
  var _isScreenFont: UInt32
  var _systemFontType: UInt32
  var _reserved1: UInt32
  var _matrixIsIdentity: UInt32
  var _renderingMode: UInt32
  var _inInstanceCache: UInt32
  var _reserved2: UInt32
  init()
  init(_isScreenFont: UInt32, _systemFontType: UInt32, _reserved1: UInt32, _matrixIsIdentity: UInt32, _renderingMode: UInt32, _inInstanceCache: UInt32, _reserved2: UInt32)
}
func NSConvertGlyphsToPackedGlyphs(glBuf: UnsafeMutablePointer<NSGlyph>, _ count: Int, _ packing: NSMultibyteGlyphPacking, _ packedGlyphs: UnsafeMutablePointer<Int8>) -> Int
let NSAntialiasThresholdChangedNotification: String
let NSFontSetChangedNotification: String
struct NSFontCollectionVisibility : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Process: NSFontCollectionVisibility { get }
  static var User: NSFontCollectionVisibility { get }
  static var Computer: NSFontCollectionVisibility { get }
}
class NSFontCollection : NSObject, NSCopying, NSMutableCopying, NSCoding {
   init(descriptors queryDescriptors: [NSFontDescriptor])
  class func fontCollectionWithAllAvailableDescriptors() -> NSFontCollection
   init?(locale: NSLocale)
  class func showFontCollection(collection: NSFontCollection, withName name: String, visibility: NSFontCollectionVisibility) throws
  class func hideFontCollectionWithName(name: String, visibility: NSFontCollectionVisibility) throws
  class func renameFontCollectionWithName(name: String, visibility: NSFontCollectionVisibility, toName name: String) throws
  class func allFontCollectionNames() -> [String]
   init?(name: String)
   init?(name: String, visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]? { get }
  var exclusionDescriptors: [NSFontDescriptor]? { get }
  var matchingDescriptors: [NSFontDescriptor]? { get }
  func matchingDescriptorsWithOptions(options: [String : NSNumber]?) -> [NSFontDescriptor]?
  func matchingDescriptorsForFamily(family: String) -> [NSFontDescriptor]?
  func matchingDescriptorsForFamily(family: String, options: [String : NSNumber]?) -> [NSFontDescriptor]?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class NSMutableFontCollection : NSFontCollection {
   init(descriptors queryDescriptors: [NSFontDescriptor])
  class func fontCollectionWithAllAvailableDescriptors() -> NSMutableFontCollection
   init(locale: NSLocale)
   init?(name: String)
   init?(name: String, visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]?
  var exclusionDescriptors: [NSFontDescriptor]?
  func addQueryForDescriptors(descriptors: [NSFontDescriptor])
  func removeQueryForDescriptors(descriptors: [NSFontDescriptor])
  init()
  init?(coder aDecoder: NSCoder)
}
let NSFontCollectionIncludeDisabledFontsOption: String
let NSFontCollectionRemoveDuplicatesOption: String
let NSFontCollectionDisallowAutoActivationOption: String
let NSFontCollectionDidChangeNotification: String
let NSFontCollectionActionKey: String
let NSFontCollectionNameKey: String
let NSFontCollectionOldNameKey: String
let NSFontCollectionVisibilityKey: String
let NSFontCollectionWasShown: String
let NSFontCollectionWasHidden: String
let NSFontCollectionWasRenamed: String
let NSFontCollectionAllFonts: String
let NSFontCollectionUser: String
let NSFontCollectionFavorites: String
let NSFontCollectionRecentlyUsed: String
typealias NSFontSymbolicTraits = UInt32
var NSFontUnknownClass: Int { get }
var NSFontOldStyleSerifsClass: Int { get }
var NSFontTransitionalSerifsClass: Int { get }
var NSFontModernSerifsClass: Int { get }
var NSFontClarendonSerifsClass: Int { get }
var NSFontSlabSerifsClass: Int { get }
var NSFontFreeformSerifsClass: Int { get }
var NSFontSansSerifClass: Int { get }
var NSFontOrnamentalsClass: Int { get }
var NSFontScriptsClass: Int { get }
var NSFontSymbolicClass: Int { get }
typealias NSFontFamilyClass = UInt32
var NSFontFamilyClassMask: UInt32 { get }
var NSFontItalicTrait: Int { get }
var NSFontBoldTrait: Int { get }
var NSFontExpandedTrait: Int { get }
var NSFontCondensedTrait: Int { get }
var NSFontMonoSpaceTrait: Int { get }
var NSFontVerticalTrait: Int { get }
var NSFontUIOptimizedTrait: Int { get }
class NSFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  var postscriptName: String? { get }
  var pointSize: CGFloat { get }
  @NSCopying var matrix: NSAffineTransform? { get }
  var symbolicTraits: NSFontSymbolicTraits { get }
  func objectForKey(anAttribute: String) -> AnyObject?
  var fontAttributes: [String : AnyObject] { get }
   init(name fontName: String, size: CGFloat)
   init(name fontName: String, matrix: NSAffineTransform)
  init(fontAttributes attributes: [String : AnyObject]?)
  func matchingFontDescriptorsWithMandatoryKeys(mandatoryKeys: Set<String>?) -> [NSFontDescriptor]
  func matchingFontDescriptorWithMandatoryKeys(mandatoryKeys: Set<String>?) -> NSFontDescriptor?
  func fontDescriptorByAddingAttributes(attributes: [String : AnyObject]) -> NSFontDescriptor
  func fontDescriptorWithSymbolicTraits(symbolicTraits: NSFontSymbolicTraits) -> NSFontDescriptor
  func fontDescriptorWithSize(newPointSize: CGFloat) -> NSFontDescriptor
  func fontDescriptorWithMatrix(matrix: NSAffineTransform) -> NSFontDescriptor
  func fontDescriptorWithFace(newFace: String) -> NSFontDescriptor
  func fontDescriptorWithFamily(newFamily: String) -> NSFontDescriptor
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let NSFontFamilyAttribute: String
let NSFontNameAttribute: String
let NSFontFaceAttribute: String
let NSFontSizeAttribute: String
let NSFontVisibleNameAttribute: String
let NSFontMatrixAttribute: String
let NSFontVariationAttribute: String
let NSFontCharacterSetAttribute: String
let NSFontCascadeListAttribute: String
let NSFontTraitsAttribute: String
let NSFontFixedAdvanceAttribute: String
let NSFontFeatureSettingsAttribute: String
let NSFontSymbolicTrait: String
let NSFontWeightTrait: String
let NSFontWidthTrait: String
let NSFontSlantTrait: String
let NSFontVariationAxisIdentifierKey: String
let NSFontVariationAxisMinimumValueKey: String
let NSFontVariationAxisMaximumValueKey: String
let NSFontVariationAxisDefaultValueKey: String
let NSFontVariationAxisNameKey: String
let NSFontFeatureTypeIdentifierKey: String
let NSFontFeatureSelectorIdentifierKey: String
let NSFontWeightUltraLight: CGFloat
let NSFontWeightThin: CGFloat
let NSFontWeightLight: CGFloat
let NSFontWeightRegular: CGFloat
let NSFontWeightMedium: CGFloat
let NSFontWeightSemibold: CGFloat
let NSFontWeightBold: CGFloat
let NSFontWeightHeavy: CGFloat
let NSFontWeightBlack: CGFloat
struct NSFontTraitMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ItalicFontMask: NSFontTraitMask { get }
  static var BoldFontMask: NSFontTraitMask { get }
  static var UnboldFontMask: NSFontTraitMask { get }
  static var NonStandardCharacterSetFontMask: NSFontTraitMask { get }
  static var NarrowFontMask: NSFontTraitMask { get }
  static var ExpandedFontMask: NSFontTraitMask { get }
  static var CondensedFontMask: NSFontTraitMask { get }
  static var SmallCapsFontMask: NSFontTraitMask { get }
  static var PosterFontMask: NSFontTraitMask { get }
  static var CompressedFontMask: NSFontTraitMask { get }
  static var FixedPitchFontMask: NSFontTraitMask { get }
  static var UnitalicFontMask: NSFontTraitMask { get }
}
struct NSFontCollectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ApplicationOnlyMask: NSFontCollectionOptions { get }
}
enum NSFontAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoFontChangeAction
  case ViaPanelFontAction
  case AddTraitFontAction
  case SizeUpFontAction
  case SizeDownFontAction
  case HeavierFontAction
  case LighterFontAction
  case RemoveTraitFontAction
}
class NSFontManager : NSObject {
  class func setFontPanelFactory(factoryId: AnyClass?)
  class func setFontManagerFactory(factoryId: AnyClass?)
  class func sharedFontManager() -> NSFontManager
  var multiple: Bool { get }
  var selectedFont: NSFont? { get }
  func setSelectedFont(fontObj: NSFont, isMultiple flag: Bool)
  func setFontMenu(newMenu: NSMenu)
  func fontMenu(create: Bool) -> NSMenu?
  func fontPanel(create: Bool) -> NSFontPanel?
  func fontWithFamily(family: String, traits: NSFontTraitMask, weight: Int, size: CGFloat) -> NSFont?
  func traitsOfFont(fontObj: NSFont) -> NSFontTraitMask
  func weightOfFont(fontObj: NSFont) -> Int
  var availableFonts: [String] { get }
  var availableFontFamilies: [String] { get }
  func availableMembersOfFontFamily(fam: String) -> [[AnyObject]]?
  func convertFont(fontObj: NSFont) -> NSFont
  func convertFont(fontObj: NSFont, toSize size: CGFloat) -> NSFont
  func convertFont(fontObj: NSFont, toFace typeface: String) -> NSFont?
  func convertFont(fontObj: NSFont, toFamily family: String) -> NSFont
  func convertFont(fontObj: NSFont, toHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertFont(fontObj: NSFont, toNotHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertWeight(upFlag: Bool, ofFont fontObj: NSFont) -> NSFont
  var enabled: Bool
  var action: Selector
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  func sendAction() -> Bool
  func localizedNameForFamily(family: String, face faceKey: String?) -> String
  func setSelectedAttributes(attributes: [String : AnyObject], isMultiple flag: Bool)
  func convertAttributes(attributes: [String : AnyObject]) -> [String : AnyObject]
  func availableFontNamesMatchingFontDescriptor(descriptor: NSFontDescriptor) -> [AnyObject]?
  var collectionNames: [AnyObject] { get }
  func fontDescriptorsInCollection(collectionNames: String) -> [AnyObject]?
  func addCollection(collectionName: String, options collectionOptions: NSFontCollectionOptions) -> Bool
  func removeCollection(collectionName: String) -> Bool
  func addFontDescriptors(descriptors: [AnyObject], toCollection collectionName: String)
  func removeFontDescriptor(descriptor: NSFontDescriptor, fromCollection collection: String)
  var currentFontAction: NSFontAction { get }
  func convertFontTraits(traits: NSFontTraitMask) -> NSFontTraitMask
  weak var target: @sil_weak AnyObject?
  init()
}
struct _fmFlags {
  var multipleFont: UInt32
  var disabled: UInt32
  var senderTagMode: UInt32
  var _RESERVED: UInt32
  init()
  init(multipleFont: UInt32, disabled: UInt32, senderTagMode: UInt32, _RESERVED: UInt32)
}
extension NSFontManager {
  func fontNamed(fName: String, hasTraits someTraits: NSFontTraitMask) -> Bool
  func availableFontNamesWithTraits(someTraits: NSFontTraitMask) -> [String]?
  func addFontTrait(sender: AnyObject?)
  func removeFontTrait(sender: AnyObject?)
  func modifyFontViaPanel(sender: AnyObject?)
  func modifyFont(sender: AnyObject?)
  func orderFrontFontPanel(sender: AnyObject?)
  func orderFrontStylesPanel(sender: AnyObject?)
}
extension NSObject {
  class func fontManager(sender: AnyObject, willIncludeFont fontName: String) -> Bool
  func fontManager(sender: AnyObject, willIncludeFont fontName: String) -> Bool
}
extension NSObject {
  class func changeFont(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
}
extension NSObject {
  class func validModesForFontPanel(fontPanel: NSFontPanel) -> Int
  func validModesForFontPanel(fontPanel: NSFontPanel) -> Int
}
class NSFontPanel : NSPanel {
  class func sharedFontPanel() -> NSFontPanel
  class func sharedFontPanelExists() -> Bool
  var accessoryView: NSView?
  func setPanelFont(fontObj: NSFont, isMultiple flag: Bool)
  func panelConvertFont(fontObj: NSFont) -> NSFont
  var worksWhenModal: Bool
  var enabled: Bool
  func reloadDefaultFontFamilies()
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
struct __fpFlags {
  var setFontChange: UInt32
  var setFontAttributeChange: UInt32
  var _delRespFamily: UInt32
  var _delRespFace: UInt32
  var _delRespSize: UInt32
  var _delRespColl: UInt32
  var _collectionDisabled: UInt32
  var _sizeDisabled: UInt32
  var _faceDisabled: UInt32
  var showEffects: UInt32
  var _uiMode: UInt32
  var _miniMode: UInt32
  var _reserved: UInt32
  init()
  init(setFontChange: UInt32, setFontAttributeChange: UInt32, _delRespFamily: UInt32, _delRespFace: UInt32, _delRespSize: UInt32, _delRespColl: UInt32, _collectionDisabled: UInt32, _sizeDisabled: UInt32, _faceDisabled: UInt32, showEffects: UInt32, _uiMode: UInt32, _miniMode: UInt32, _reserved: UInt32)
}
var NSFontPanelFaceModeMask: UInt32 { get }
var NSFontPanelSizeModeMask: UInt32 { get }
var NSFontPanelCollectionModeMask: UInt32 { get }
var NSFontPanelUnderlineEffectModeMask: UInt32 { get }
var NSFontPanelStrikethroughEffectModeMask: UInt32 { get }
var NSFontPanelTextColorEffectModeMask: UInt32 { get }
var NSFontPanelDocumentColorEffectModeMask: UInt32 { get }
var NSFontPanelShadowEffectModeMask: UInt32 { get }
var NSFontPanelAllEffectsModeMask: UInt32 { get }
var NSFontPanelStandardModesMask: UInt32 { get }
var NSFontPanelAllModesMask: UInt32 { get }
var NSFPPreviewButton: Int { get }
var NSFPRevertButton: Int { get }
var NSFPSetButton: Int { get }
var NSFPPreviewField: Int { get }
var NSFPSizeField: Int { get }
var NSFPSizeTitle: Int { get }
var NSFPCurrentField: Int { get }
class NSForm : NSMatrix {
  func indexOfSelectedItem() -> Int
  func setEntryWidth(width: CGFloat)
  func setInterlineSpacing(spacing: CGFloat)
  func setBordered(flag: Bool)
  func setBezeled(flag: Bool)
  func setTitleAlignment(mode: NSTextAlignment)
  func setTextAlignment(mode: NSTextAlignment)
  func setTitleFont(fontObj: NSFont)
  func setTextFont(fontObj: NSFont)
  func cellAtIndex(index: Int) -> AnyObject!
  func drawCellAtIndex(index: Int)
  func addEntry(title: String) -> NSFormCell
  func insertEntry(title: String, atIndex index: Int) -> NSFormCell!
  func removeEntryAtIndex(index: Int)
  func indexOfCellWithTag(aTag: Int) -> Int
  func selectTextAtIndex(index: Int)
  func setFrameSize(newSize: NSSize)
  func setTitleBaseWritingDirection(writingDirection: NSWritingDirection)
  func setTextBaseWritingDirection(writingDirection: NSWritingDirection)
  func setPreferredTextFieldWidth(preferredWidth: CGFloat)
  func preferredTextFieldWidth() -> CGFloat
  convenience init(frame frameRect: NSRect)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, prototype aCell: NSCell, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, cellClass factoryId: AnyClass?, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init?(coder: NSCoder)
  convenience init()
}
class NSFormCell : NSActionCell {
  init(textCell aString: String?)
  func titleWidth(aSize: NSSize) -> CGFloat
  var titleWidth: CGFloat
  var title: String
  var titleFont: NSFont
  var titleAlignment: NSTextAlignment
  var opaque: Bool { get }
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  var titleBaseWritingDirection: NSWritingDirection
  var preferredTextFieldWidth: CGFloat
  convenience init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSFormCell {
}
extension NSFormCell {
  @NSCopying var attributedTitle: NSAttributedString
}
var NSShowControlGlyphs: Int { get }
var NSShowInvisibleGlyphs: Int { get }
var NSWantsBidiLevels: Int { get }
protocol NSGlyphStorage {
  func insertGlyphs(glyphs: UnsafePointer<NSGlyph>, length: Int, forStartingGlyphAtIndex glyphIndex: Int, characterIndex charIndex: Int)
  func setIntAttribute(attributeTag: Int, value val: Int, forGlyphAtIndex glyphIndex: Int)
  func attributedString() -> NSAttributedString
  func layoutOptions() -> Int
}
class NSGlyphGenerator : NSObject {
  func generateGlyphsForGlyphStorage(glyphStorage: NSGlyphStorage, desiredNumberOfCharacters nChars: Int, glyphIndex: UnsafeMutablePointer<Int>, characterIndex charIndex: UnsafeMutablePointer<Int>)
  class func sharedGlyphGenerator() -> NSGlyphGenerator
  init()
}
enum NSCharacterCollection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IdentityMappingCharacterCollection
  case AdobeCNS1CharacterCollection
  case AdobeGB1CharacterCollection
  case AdobeJapan1CharacterCollection
  case AdobeJapan2CharacterCollection
  case AdobeKorea1CharacterCollection
}
class NSGlyphInfo : NSObject, NSCopying, NSSecureCoding {
   init?(glyphName: String, forFont font: NSFont, baseString theString: String)
   init?(glyph: NSGlyph, forFont font: NSFont, baseString theString: String)
   init?(characterIdentifier cid: Int, collection characterCollection: NSCharacterCollection, baseString theString: String)
  var glyphName: String? { get }
  var characterIdentifier: Int { get }
  var characterCollection: NSCharacterCollection { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias NSGradientDrawingOptions = Int
var NSGradientDrawsBeforeStartingLocation: Int { get }
var NSGradientDrawsAfterEndingLocation: Int { get }
class NSGradient : NSObject, NSCopying, NSCoding {
  convenience init?(startingColor: NSColor, endingColor: NSColor)
  convenience init?(colors colorArray: [NSColor])
  init?(colors colorArray: [NSColor], atLocations locations: UnsafePointer<CGFloat>, colorSpace: NSColorSpace)
  func drawFromPoint(startingPoint: NSPoint, toPoint endingPoint: NSPoint, options: NSGradientDrawingOptions)
  func drawInRect(rect: NSRect, angle: CGFloat)
  func drawInBezierPath(path: NSBezierPath, angle: CGFloat)
  func drawFromCenter(startCenter: NSPoint, radius startRadius: CGFloat, toCenter endCenter: NSPoint, radius endRadius: CGFloat, options: NSGradientDrawingOptions)
  func drawInRect(rect: NSRect, relativeCenterPosition: NSPoint)
  func drawInBezierPath(path: NSBezierPath, relativeCenterPosition: NSPoint)
  var colorSpace: NSColorSpace { get }
  var numberOfColorStops: Int { get }
  func getColor(color: AutoreleasingUnsafeMutablePointer<NSColor?>, location: UnsafeMutablePointer<CGFloat>, atIndex index: Int)
  func interpolatedColorAtLocation(location: CGFloat) -> NSColor
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}
enum NSCompositingOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CompositeClear
  case CompositeCopy
  case CompositeSourceOver
  case CompositeSourceIn
  case CompositeSourceOut
  case CompositeSourceAtop
  case CompositeDestinationOver
  case CompositeDestinationIn
  case CompositeDestinationOut
  case CompositeDestinationAtop
  case CompositeXOR
  case CompositePlusDarker
  case CompositePlusLighter
  case CompositeMultiply
  case CompositeScreen
  case CompositeOverlay
  case CompositeDarken
  case CompositeLighten
  case CompositeColorDodge
  case CompositeColorBurn
  case CompositeSoftLight
  case CompositeHardLight
  case CompositeDifference
  case CompositeExclusion
  case CompositeHue
  case CompositeSaturation
  case CompositeColor
  case CompositeLuminosity
}
enum NSBackingStoreType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Retained
  case Nonretained
  case Buffered
}
enum NSWindowOrderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Above
  case Below
  case Out
}
enum NSFocusRingPlacement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Only
  case Below
  case Above
}
enum NSFocusRingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case None
  case Exterior
}
enum NSColorRenderingIntent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case AbsoluteColorimetric
  case RelativeColorimetric
  case Perceptual
  case Saturation
}
let NSCalibratedWhiteColorSpace: String
let NSCalibratedRGBColorSpace: String
let NSDeviceWhiteColorSpace: String
let NSDeviceRGBColorSpace: String
let NSDeviceCMYKColorSpace: String
let NSNamedColorSpace: String
let NSPatternColorSpace: String
let NSCustomColorSpace: String
var NSWindowDepthTwentyfourBitRGB: Int { get }
var NSWindowDepthSixtyfourBitRGB: Int { get }
var NSWindowDepthOnehundredtwentyeightBitRGB: Int { get }
typealias NSWindowDepth = Int32
func NSBestDepth(colorSpace: String, _ bps: Int, _ bpp: Int, _ planar: Bool, _ exactMatch: UnsafeMutablePointer<ObjCBool>) -> NSWindowDepth
func NSPlanarFromDepth(depth: NSWindowDepth) -> Bool
func NSColorSpaceFromDepth(depth: NSWindowDepth) -> String?
func NSBitsPerSampleFromDepth(depth: NSWindowDepth) -> Int
func NSBitsPerPixelFromDepth(depth: NSWindowDepth) -> Int
func NSNumberOfColorComponents(colorSpaceName: String) -> Int
func NSAvailableWindowDepths() -> UnsafePointer<NSWindowDepth>
let NSWhite: CGFloat
let NSLightGray: CGFloat
let NSDarkGray: CGFloat
let NSBlack: CGFloat
let NSDeviceResolution: String
let NSDeviceColorSpaceName: String
let NSDeviceBitsPerSample: String
let NSDeviceIsScreen: String
let NSDeviceIsPrinter: String
let NSDeviceSize: String
func NSRectFill(aRect: NSRect)
func NSRectFillList(rects: UnsafePointer<NSRect>, _ count: Int)
func NSRectFillListWithGrays(rects: UnsafePointer<NSRect>, _ grays: UnsafePointer<CGFloat>, _ num: Int)
func NSRectFillListWithColors(rects: UnsafePointer<NSRect>, _ colors: UnsafePointer<NSColor?>, _ num: Int)
func NSRectFillUsingOperation(aRect: NSRect, _ op: NSCompositingOperation)
func NSRectFillListUsingOperation(rects: UnsafePointer<NSRect>, _ count: Int, _ op: NSCompositingOperation)
func NSRectFillListWithColorsUsingOperation(rects: UnsafePointer<NSRect>, _ colors: UnsafePointer<NSColor?>, _ num: Int, _ op: NSCompositingOperation)
func NSFrameRect(aRect: NSRect)
func NSFrameRectWithWidth(aRect: NSRect, _ frameWidth: CGFloat)
func NSFrameRectWithWidthUsingOperation(aRect: NSRect, _ frameWidth: CGFloat, _ op: NSCompositingOperation)
func NSRectClip(aRect: NSRect)
func NSRectClipList(rects: UnsafePointer<NSRect>, _ count: Int)
func NSDrawTiledRects(boundsRect: NSRect, _ clipRect: NSRect, _ sides: UnsafePointer<NSRectEdge>, _ grays: UnsafePointer<CGFloat>, _ count: Int) -> NSRect
func NSDrawGrayBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawGroove(aRect: NSRect, _ clipRect: NSRect)
func NSDrawWhiteBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawButton(aRect: NSRect, _ clipRect: NSRect)
func NSEraseRect(aRect: NSRect)
func NSReadPixel(passedPoint: NSPoint) -> NSColor?
func NSDrawBitmap(rect: NSRect, _ width: Int, _ height: Int, _ bps: Int, _ spp: Int, _ bpp: Int, _ bpr: Int, _ isPlanar: Bool, _ hasAlpha: Bool, _ colorSpaceName: String, _ data: UnsafePointer<UnsafePointer<UInt8>>)
func NSBeep()
func NSGetWindowServerMemory(context: Int, _ virtualMemory: UnsafeMutablePointer<Int>, _ windowBackingMemory: UnsafeMutablePointer<Int>, _ windowDumpString: AutoreleasingUnsafeMutablePointer<NSString?>) -> Int
func NSDrawColorTiledRects(boundsRect: NSRect, _ clipRect: NSRect, _ sides: UnsafePointer<NSRectEdge>, _ colors: AutoreleasingUnsafeMutablePointer<NSColor?>, _ count: Int) -> NSRect
func NSDrawDarkBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawLightBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDottedFrameRect(aRect: NSRect)
func NSDrawWindowBackground(aRect: NSRect)
func NSSetFocusRingStyle(placement: NSFocusRingPlacement)
func NSDisableScreenUpdates()
func NSEnableScreenUpdates()
enum NSAnimationEffect : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DisappearingItemDefault
  case Poof
}
func NSShowAnimationEffect(animationEffect: NSAnimationEffect, _ centerLocation: NSPoint, _ size: NSSize, _ animationDelegate: AnyObject?, _ didEndSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
func NSCopyBits(srcGState: Int, _ srcRect: NSRect, _ destPoint: NSPoint)
let NSGraphicsContextDestinationAttributeName: String
let NSGraphicsContextRepresentationFormatAttributeName: String
let NSGraphicsContextPSFormat: String
let NSGraphicsContextPDFFormat: String
enum NSImageInterpolation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case None
  case Low
  case Medium
  case High
}
class NSGraphicsContext : NSObject {
   init?(attributes: [String : AnyObject])
   init(window: NSWindow)
   init?(bitmapImageRep bitmapRep: NSBitmapImageRep)
   init(CGContext graphicsPort: CGContext, flipped initialFlippedState: Bool)
  class func currentContext() -> NSGraphicsContext?
  class func setCurrentContext(context: NSGraphicsContext?)
  class func currentContextDrawingToScreen() -> Bool
  class func saveGraphicsState()
  class func restoreGraphicsState()
  var attributes: [String : AnyObject]? { get }
  var drawingToScreen: Bool { get }
  func saveGraphicsState()
  func restoreGraphicsState()
  func flushGraphics()
  var CGContext: CGContext { get }
  var flipped: Bool { get }
  init()
}
extension NSGraphicsContext {
  var shouldAntialias: Bool
  var imageInterpolation: NSImageInterpolation
  var patternPhase: NSPoint
  var compositingOperation: NSCompositingOperation
  var colorRenderingIntent: NSColorRenderingIntent
}
extension NSGraphicsContext {
  var CIContext: CIContext? { get }
}
extension NSGraphicsContext {
  class func setGraphicsState(gState: Int)
   init(graphicsPort: UnsafeMutablePointer<Void>, flipped initialFlippedState: Bool)
  var graphicsPort: UnsafeMutablePointer<Void> { get }
}
enum NSHapticFeedbackPattern : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Generic
  case Alignment
  case LevelChange
}
enum NSHapticFeedbackPerformanceTime : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Now
  case DrawCompleted
}
protocol NSHapticFeedbackPerformer : NSObjectProtocol {
  func performFeedbackPattern(pattern: NSHapticFeedbackPattern, performanceTime: NSHapticFeedbackPerformanceTime)
}
class NSHapticFeedbackManager : NSObject {
  class func defaultPerformer() -> NSHapticFeedbackPerformer
  init()
}
class NSHelpManager : NSObject {
  class func sharedHelpManager() -> NSHelpManager
  class func setContextHelpModeActive(active: Bool)
  class func isContextHelpModeActive() -> Bool
  func setContextHelp(attrString: NSAttributedString, forObject object: AnyObject)
  func removeContextHelpForObject(object: AnyObject)
  func contextHelpForObject(object: AnyObject) -> NSAttributedString?
  func showContextHelpForObject(object: AnyObject, locationHint pt: NSPoint) -> Bool
  func openHelpAnchor(anchor: String, inBook book: String?)
  func findString(query: String, inBook book: String?)
  func registerBooksInBundle(bundle: NSBundle) -> Bool
  init()
}
let NSContextHelpModeDidActivateNotification: String
let NSContextHelpModeDidDeactivateNotification: String
extension NSBundle {
  func contextHelpForKey(key: String) -> NSAttributedString?
}
extension NSApplication {
  func activateContextHelpMode(sender: AnyObject?)
  func showHelp(sender: AnyObject?)
}
enum NSImageLoadStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Completed
  case Cancelled
  case InvalidData
  case UnexpectedEOF
  case ReadError
}
enum NSImageCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Always
  case BySize
  case Never
}
enum NSImageResizingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stretch
  case Tile
}
class NSImage : NSObject, NSCopying, NSCoding, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
   init?(named name: String)
  init(size aSize: NSSize)
  init?(data: NSData)
  init?(contentsOfFile fileName: String)
  init?(contentsOfURL url: NSURL)
  init?(byReferencingFile fileName: String)
  init(byReferencingURL url: NSURL)
  init(iconRef: IconRef)
  init?(pasteboard: NSPasteboard)
  init?(dataIgnoringOrientation data: NSData)
   init(size: NSSize, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: (NSRect) -> Bool)
  var size: NSSize
  func setName(string: String?) -> Bool
  func name() -> String?
  @NSCopying var backgroundColor: NSColor
  var usesEPSOnResolutionMismatch: Bool
  var prefersColorMatch: Bool
  var matchesOnMultipleResolution: Bool
  var matchesOnlyOnBestFittingAxis: Bool
  func drawAtPoint(point: NSPoint, fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawInRect(rect: NSRect, fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawInRect(dstSpacePortionRect: NSRect, fromRect srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [String : AnyObject]?)
  func drawRepresentation(imageRep: NSImageRep, inRect rect: NSRect) -> Bool
  func drawInRect(rect: NSRect)
  func recache()
  var TIFFRepresentation: NSData? { get }
  func TIFFRepresentationUsingCompression(comp: NSTIFFCompression, factor aFloat: Float) -> NSData?
  var representations: [NSImageRep] { get }
  func addRepresentations(imageReps: [NSImageRep])
  func addRepresentation(imageRep: NSImageRep)
  func removeRepresentation(imageRep: NSImageRep)
  var valid: Bool { get }
  func lockFocus()
  func lockFocusFlipped(flipped: Bool)
  func unlockFocus()
  unowned(unsafe) var delegate: @sil_unmanaged NSImageDelegate?
  class func imageUnfilteredFileTypes() -> [String]
  class func imageUnfilteredPasteboardTypes() -> [String]
  class func imageFileTypes() -> [String]
  class func imagePasteboardTypes() -> [String]
  class func imageTypes() -> [String]
  class func imageUnfilteredTypes() -> [String]
  class func canInitWithPasteboard(pasteboard: NSPasteboard) -> Bool
  func cancelIncrementalLoad()
  var cacheMode: NSImageCacheMode
  var alignmentRect: NSRect
  var template: Bool
  var accessibilityDescription: String?
  init(CGImage cgImage: CGImage, size: NSSize)
  func CGImageForProposedRect(proposedDestRect: UnsafeMutablePointer<NSRect>, context referenceContext: NSGraphicsContext?, hints: [String : AnyObject]?) -> CGImage?
  func bestRepresentationForRect(rect: NSRect, context referenceContext: NSGraphicsContext?, hints: [String : AnyObject]?) -> NSImageRep?
  func hitTestRect(testRectDestSpace: NSRect, withImageDestinationRect imageRectDestSpace: NSRect, context: NSGraphicsContext?, hints: [String : AnyObject]?, flipped: Bool) -> Bool
  func recommendedLayerContentsScale(preferredContentsScale: CGFloat) -> CGFloat
  func layerContentsForContentsScale(layerContentsScale: CGFloat) -> AnyObject
  var capInsets: NSEdgeInsets
  var resizingMode: NSImageResizingMode
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func supportsSecureCoding() -> Bool
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
extension NSImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
struct __imageFlags {
  var scalable: UInt32
  var dataRetained: UInt32
  var uniqueWindow: UInt32
  var sizeWasExplicitlySet: UInt32
  var builtIn: UInt32
  var needsToExpand: UInt32
  var useEPSOnResolutionMismatch: UInt32
  var matchesOnlyOnBestFittingAxis: UInt32
  var colorMatchPreferred: UInt32
  var multipleResolutionMatching: UInt32
  var focusedWhilePrinting: UInt32
  var archiveByName: UInt32
  var unboundedCacheDepth: UInt32
  var flipped: UInt32
  var aliased: UInt32
  var dirtied: UInt32
  var cacheMode: UInt32
  var sampleMode: UInt32
  var resMatchPreferred: UInt32
  var isTemplate: UInt32
  var failedToExpand: UInt32
  var reserved1: UInt32
  init()
  init(scalable: UInt32, dataRetained: UInt32, uniqueWindow: UInt32, sizeWasExplicitlySet: UInt32, builtIn: UInt32, needsToExpand: UInt32, useEPSOnResolutionMismatch: UInt32, matchesOnlyOnBestFittingAxis: UInt32, colorMatchPreferred: UInt32, multipleResolutionMatching: UInt32, focusedWhilePrinting: UInt32, archiveByName: UInt32, unboundedCacheDepth: UInt32, flipped: UInt32, aliased: UInt32, dirtied: UInt32, cacheMode: UInt32, sampleMode: UInt32, resMatchPreferred: UInt32, isTemplate: UInt32, failedToExpand: UInt32, reserved1: UInt32)
}
let NSImageHintCTM: String
let NSImageHintInterpolation: String
protocol NSImageDelegate : NSObjectProtocol {
  optional func imageDidNotDraw(sender: NSImage, inRect aRect: NSRect) -> NSImage?
  optional func image(image: NSImage, willLoadRepresentation rep: NSImageRep)
  optional func image(image: NSImage, didLoadRepresentationHeader rep: NSImageRep)
  optional func image(image: NSImage, didLoadPartOfRepresentation rep: NSImageRep, withValidRows rows: Int)
  optional func image(image: NSImage, didLoadRepresentation rep: NSImageRep, withStatus status: NSImageLoadStatus)
}
extension NSBundle {
  func imageForResource(name: String) -> NSImage?
  func pathForImageResource(name: String) -> String?
  func URLForImageResource(name: String) -> NSURL?
}
extension NSImage {
}
let NSImageNameQuickLookTemplate: String
let NSImageNameBluetoothTemplate: String
let NSImageNameIChatTheaterTemplate: String
let NSImageNameSlideshowTemplate: String
let NSImageNameActionTemplate: String
let NSImageNameSmartBadgeTemplate: String
let NSImageNameIconViewTemplate: String
let NSImageNameListViewTemplate: String
let NSImageNameColumnViewTemplate: String
let NSImageNameFlowViewTemplate: String
let NSImageNamePathTemplate: String
let NSImageNameInvalidDataFreestandingTemplate: String
let NSImageNameLockLockedTemplate: String
let NSImageNameLockUnlockedTemplate: String
let NSImageNameGoRightTemplate: String
let NSImageNameGoLeftTemplate: String
let NSImageNameRightFacingTriangleTemplate: String
let NSImageNameLeftFacingTriangleTemplate: String
let NSImageNameAddTemplate: String
let NSImageNameRemoveTemplate: String
let NSImageNameRevealFreestandingTemplate: String
let NSImageNameFollowLinkFreestandingTemplate: String
let NSImageNameEnterFullScreenTemplate: String
let NSImageNameExitFullScreenTemplate: String
let NSImageNameStopProgressTemplate: String
let NSImageNameStopProgressFreestandingTemplate: String
let NSImageNameRefreshTemplate: String
let NSImageNameRefreshFreestandingTemplate: String
let NSImageNameBonjour: String
let NSImageNameComputer: String
let NSImageNameFolderBurnable: String
let NSImageNameFolderSmart: String
let NSImageNameFolder: String
let NSImageNameNetwork: String
let NSImageNameMobileMe: String
let NSImageNameMultipleDocuments: String
let NSImageNameUserAccounts: String
let NSImageNamePreferencesGeneral: String
let NSImageNameAdvanced: String
let NSImageNameInfo: String
let NSImageNameFontPanel: String
let NSImageNameColorPanel: String
let NSImageNameUser: String
let NSImageNameUserGroup: String
let NSImageNameEveryone: String
let NSImageNameUserGuest: String
let NSImageNameMenuOnStateTemplate: String
let NSImageNameMenuMixedStateTemplate: String
let NSImageNameApplicationIcon: String
let NSImageNameTrashEmpty: String
let NSImageNameTrashFull: String
let NSImageNameHomeTemplate: String
let NSImageNameBookmarksTemplate: String
let NSImageNameCaution: String
let NSImageNameStatusAvailable: String
let NSImageNameStatusPartiallyAvailable: String
let NSImageNameStatusUnavailable: String
let NSImageNameStatusNone: String
let NSImageNameShareTemplate: String
enum NSImageAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AlignCenter
  case AlignTop
  case AlignTopLeft
  case AlignTopRight
  case AlignLeft
  case AlignBottom
  case AlignBottomLeft
  case AlignBottomRight
  case AlignRight
}
enum NSImageFrameStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Photo
  case GrayBezel
  case Groove
  case Button
}
class NSImageCell : NSCell, NSCopying, NSCoding {
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageFrameStyle
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __ICFlags {
  var _unused: UInt32
  var _animates: UInt32
  var _align: UInt32
  var _scale: UInt32
  var _style: UInt32
  init()
  init(_unused: UInt32, _animates: UInt32, _align: UInt32, _scale: UInt32, _style: UInt32)
}
var NSImageRepMatchesDevice: Int { get }
class NSImageRep : NSObject, NSCopying, NSCoding {
  init()
  init?(coder: NSCoder)
  func draw() -> Bool
  func drawAtPoint(point: NSPoint) -> Bool
  func drawInRect(rect: NSRect) -> Bool
  func drawInRect(dstSpacePortionRect: NSRect, fromRect srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [String : AnyObject]?) -> Bool
  var size: NSSize
  var alpha: Bool
  var opaque: Bool
  var colorSpaceName: String
  var bitsPerSample: Int
  var pixelsWide: Int
  var pixelsHigh: Int
  class func registerImageRepClass(imageRepClass: AnyClass)
  class func unregisterImageRepClass(imageRepClass: AnyClass)
  class func registeredImageRepClasses() -> [AnyClass]
  class func imageRepClassForFileType(type: String) -> AnyClass?
  class func imageRepClassForPasteboardType(type: String) -> AnyClass?
  class func imageRepClassForType(type: String) -> AnyClass?
  class func imageRepClassForData(data: NSData) -> AnyClass?
  class func canInitWithData(data: NSData) -> Bool
  class func imageUnfilteredFileTypes() -> [String]
  class func imageUnfilteredPasteboardTypes() -> [String]
  class func imageFileTypes() -> [String]
  class func imagePasteboardTypes() -> [String]
  class func imageUnfilteredTypes() -> [String]
  class func imageTypes() -> [String]
  class func canInitWithPasteboard(pasteboard: NSPasteboard) -> Bool
  class func imageRepsWithContentsOfFile(filename: String) -> [NSImageRep]?
   init?(contentsOfFile filename: String)
  class func imageRepsWithContentsOfURL(url: NSURL) -> [NSImageRep]?
   init?(contentsOfURL url: NSURL)
  class func imageRepsWithPasteboard(pasteboard: NSPasteboard) -> [NSImageRep]?
   init?(pasteboard: NSPasteboard)
  func CGImageForProposedRect(proposedDestRect: UnsafeMutablePointer<NSRect>, context: NSGraphicsContext?, hints: [String : AnyObject]?) -> CGImage?
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
struct __repFlags {
  var hasAlpha: UInt32
  var isOpaque: UInt32
  var cacheParamsComputed: UInt32
  var cacheAlphaComputed: UInt32
  var loadState: UInt32
  var keepCacheWindow: UInt32
  var reserved: UInt32
  var bitsPerSample: UInt32
  var gsaved: UInt32
  init()
  init(hasAlpha: UInt32, isOpaque: UInt32, cacheParamsComputed: UInt32, cacheAlphaComputed: UInt32, loadState: UInt32, keepCacheWindow: UInt32, reserved: UInt32, bitsPerSample: UInt32, gsaved: UInt32)
}
let NSImageRepRegistryDidChangeNotification: String
class NSImageView : NSControl, NSAccessibilityImage {
  var image: NSImage?
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageFrameStyle
  var editable: Bool
  var animates: Bool
  var allowsCutCopyPaste: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityLabel() -> String?
}
struct __IVFlags {
  var _hasImageView: UInt32
  var _unused: UInt32
  var _rejectsMultiFileDrops: UInt32
  var _compatibleScalingAndAlignment: UInt32
  var _reserved: UInt32
  var _overridesDrawing: UInt32
  var _allowsCutCopyPaste: UInt32
  var _editable: UInt32
  init()
  init(_hasImageView: UInt32, _unused: UInt32, _rejectsMultiFileDrops: UInt32, _compatibleScalingAndAlignment: UInt32, _reserved: UInt32, _overridesDrawing: UInt32, _allowsCutCopyPaste: UInt32, _editable: UInt32)
}
protocol NSTextInput {
}
protocol NSInputServiceProvider {
}
protocol NSInputServerMouseTracker {
}
var NSNoInterfaceStyle: Int { get }
var NSNextStepInterfaceStyle: Int { get }
var NSWindows95InterfaceStyle: Int { get }
var NSMacintoshInterfaceStyle: Int { get }
extension NSResponder {
}
extension NSItemProvider {
  var sourceFrame: NSRect { get }
  var containerFrame: NSRect { get }
  var preferredPresentationSize: NSSize { get }
}
let NSTypeIdentifierDateText: String
let NSTypeIdentifierAddressText: String
let NSTypeIdentifierPhoneNumberText: String
let NSTypeIdentifierTransitInformationText: String
var NSMultipleValuesMarker: AnyObject
var NSNoSelectionMarker: AnyObject
var NSNotApplicableMarker: AnyObject
func NSIsControllerMarker(object: AnyObject?) -> Bool
let NSObservedObjectKey: String
let NSObservedKeyPathKey: String
let NSOptionsKey: String
extension NSObject {
  class func exposeBinding(binding: String)
  var exposedBindings: [String] { get }
  class func valueClassForBinding(binding: String) -> AnyClass?
  func valueClassForBinding(binding: String) -> AnyClass?
  class func bind(binding: String, toObject observable: AnyObject, withKeyPath keyPath: String, options: [String : AnyObject]?)
  func bind(binding: String, toObject observable: AnyObject, withKeyPath keyPath: String, options: [String : AnyObject]?)
  class func unbind(binding: String)
  func unbind(binding: String)
  class func infoForBinding(binding: String) -> [String : AnyObject]?
  func infoForBinding(binding: String) -> [String : AnyObject]?
  class func optionDescriptionsForBinding(aBinding: String) -> [NSAttributeDescription]
  func optionDescriptionsForBinding(aBinding: String) -> [NSAttributeDescription]
  class func exposedBindings() -> [String]
}
extension NSObject {
  class func setDefaultPlaceholder(placeholder: AnyObject?, forMarker marker: AnyObject?, withBinding binding: String)
  class func defaultPlaceholderForMarker(marker: AnyObject?, withBinding binding: String) -> AnyObject?
}
extension NSObject {
  class func objectDidBeginEditing(editor: AnyObject)
  func objectDidBeginEditing(editor: AnyObject)
  class func objectDidEndEditing(editor: AnyObject)
  func objectDidEndEditing(editor: AnyObject)
}
extension NSObject {
  class func discardEditing()
  func discardEditing()
  class func commitEditing() -> Bool
  func commitEditing() -> Bool
  class func commitEditingWithDelegate(delegate: AnyObject?, didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func commitEditingWithDelegate(delegate: AnyObject?, didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  class func commitEditingAndReturnError() throws
  func commitEditingAndReturnError() throws
}
let NSAlignmentBinding: String
let NSAlternateImageBinding: String
let NSAlternateTitleBinding: String
let NSAnimateBinding: String
let NSAnimationDelayBinding: String
let NSArgumentBinding: String
let NSAttributedStringBinding: String
let NSContentArrayBinding: String
let NSContentArrayForMultipleSelectionBinding: String
let NSContentBinding: String
let NSContentDictionaryBinding: String
let NSContentHeightBinding: String
let NSContentObjectBinding: String
let NSContentObjectsBinding: String
let NSContentSetBinding: String
let NSContentValuesBinding: String
let NSContentWidthBinding: String
let NSCriticalValueBinding: String
let NSDataBinding: String
let NSDisplayPatternTitleBinding: String
let NSDisplayPatternValueBinding: String
let NSDocumentEditedBinding: String
let NSDoubleClickArgumentBinding: String
let NSDoubleClickTargetBinding: String
let NSEditableBinding: String
let NSEnabledBinding: String
let NSExcludedKeysBinding: String
let NSFilterPredicateBinding: String
let NSFontBinding: String
let NSFontBoldBinding: String
let NSFontFamilyNameBinding: String
let NSFontItalicBinding: String
let NSFontNameBinding: String
let NSFontSizeBinding: String
let NSHeaderTitleBinding: String
let NSHiddenBinding: String
let NSImageBinding: String
let NSIncludedKeysBinding: String
let NSInitialKeyBinding: String
let NSInitialValueBinding: String
let NSIsIndeterminateBinding: String
let NSLabelBinding: String
let NSLocalizedKeyDictionaryBinding: String
let NSManagedObjectContextBinding: String
let NSMaximumRecentsBinding: String
let NSMaxValueBinding: String
let NSMaxWidthBinding: String
let NSMinValueBinding: String
let NSMinWidthBinding: String
let NSMixedStateImageBinding: String
let NSOffStateImageBinding: String
let NSOnStateImageBinding: String
let NSPositioningRectBinding: String
let NSPredicateBinding: String
let NSRecentSearchesBinding: String
let NSRepresentedFilenameBinding: String
let NSRowHeightBinding: String
let NSSelectedIdentifierBinding: String
let NSSelectedIndexBinding: String
let NSSelectedLabelBinding: String
let NSSelectedObjectBinding: String
let NSSelectedObjectsBinding: String
let NSSelectedTagBinding: String
let NSSelectedValueBinding: String
let NSSelectedValuesBinding: String
let NSSelectionIndexesBinding: String
let NSSelectionIndexPathsBinding: String
let NSSortDescriptorsBinding: String
let NSTargetBinding: String
let NSTextColorBinding: String
let NSTitleBinding: String
let NSToolTipBinding: String
let NSTransparentBinding: String
let NSValueBinding: String
let NSValuePathBinding: String
let NSValueURLBinding: String
let NSVisibleBinding: String
let NSWarningValueBinding: String
let NSWidthBinding: String
let NSAllowsEditingMultipleValuesSelectionBindingOption: String
let NSAllowsNullArgumentBindingOption: String
let NSAlwaysPresentsApplicationModalAlertsBindingOption: String
let NSConditionallySetsEditableBindingOption: String
let NSConditionallySetsEnabledBindingOption: String
let NSConditionallySetsHiddenBindingOption: String
let NSContinuouslyUpdatesValueBindingOption: String
let NSCreatesSortDescriptorBindingOption: String
let NSDeletesObjectsOnRemoveBindingsOption: String
let NSDisplayNameBindingOption: String
let NSDisplayPatternBindingOption: String
let NSContentPlacementTagBindingOption: String
let NSHandlesContentAsCompoundValueBindingOption: String
let NSInsertsNullPlaceholderBindingOption: String
let NSInvokesSeparatelyWithArrayObjectsBindingOption: String
let NSMultipleValuesPlaceholderBindingOption: String
let NSNoSelectionPlaceholderBindingOption: String
let NSNotApplicablePlaceholderBindingOption: String
let NSNullPlaceholderBindingOption: String
let NSRaisesForNotApplicableKeysBindingOption: String
let NSPredicateFormatBindingOption: String
let NSSelectorNameBindingOption: String
let NSSelectsAllWhenSettingContentBindingOption: String
let NSValidatesImmediatelyBindingOption: String
let NSValueTransformerNameBindingOption: String
let NSValueTransformerBindingOption: String
class NSLayoutAnchor : NSObject {
  func constraintEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
class NSLayoutXAxisAnchor : NSLayoutAnchor {
  init()
}
class NSLayoutYAxisAnchor : NSLayoutAnchor {
  init()
}
class NSLayoutDimension : NSLayoutAnchor {
  func constraintEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
enum NSLayoutRelation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LessThanOrEqual
  case Equal
  case GreaterThanOrEqual
}
enum NSLayoutAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Right
  case Top
  case Bottom
  case Leading
  case Trailing
  case Width
  case Height
  case CenterX
  case CenterY
  case Baseline
  static var LastBaseline: NSLayoutAttribute { get }
  case FirstBaseline
  case NotAnAttribute
}
struct NSLayoutFormatOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AlignAllLeft: NSLayoutFormatOptions { get }
  static var AlignAllRight: NSLayoutFormatOptions { get }
  static var AlignAllTop: NSLayoutFormatOptions { get }
  static var AlignAllBottom: NSLayoutFormatOptions { get }
  static var AlignAllLeading: NSLayoutFormatOptions { get }
  static var AlignAllTrailing: NSLayoutFormatOptions { get }
  static var AlignAllCenterX: NSLayoutFormatOptions { get }
  static var AlignAllCenterY: NSLayoutFormatOptions { get }
  static var AlignAllBaseline: NSLayoutFormatOptions { get }
  static var AlignAllLastBaseline: NSLayoutFormatOptions { get }
  static var AlignAllFirstBaseline: NSLayoutFormatOptions { get }
  static var AlignmentMask: NSLayoutFormatOptions { get }
  static var DirectionLeadingToTrailing: NSLayoutFormatOptions { get }
  static var DirectionLeftToRight: NSLayoutFormatOptions { get }
  static var DirectionRightToLeft: NSLayoutFormatOptions { get }
  static var DirectionMask: NSLayoutFormatOptions { get }
}
enum NSLayoutConstraintOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
typealias NSLayoutPriority = Float
let NSLayoutPriorityRequired: NSLayoutPriority
let NSLayoutPriorityDefaultHigh: NSLayoutPriority
let NSLayoutPriorityDragThatCanResizeWindow: NSLayoutPriority
let NSLayoutPriorityWindowSizeStayPut: NSLayoutPriority
let NSLayoutPriorityDragThatCannotResizeWindow: NSLayoutPriority
let NSLayoutPriorityDefaultLow: NSLayoutPriority
let NSLayoutPriorityFittingSizeCompression: NSLayoutPriority
class NSLayoutConstraint : NSObject, NSAnimatablePropertyContainer {
  class func constraintsWithVisualFormat(format: String, options opts: NSLayoutFormatOptions, metrics: [String : NSNumber]?, views: [String : AnyObject]) -> [NSLayoutConstraint]
  convenience init(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute, multiplier: CGFloat, constant c: CGFloat)
  var priority: NSLayoutPriority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject { get }
  var firstAttribute: NSLayoutAttribute { get }
  var relation: NSLayoutRelation { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var secondAttribute: NSLayoutAttribute { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  var active: Bool
  class func activateConstraints(constraints: [NSLayoutConstraint])
  class func deactivateConstraints(constraints: [NSLayoutConstraint])
  init()
  func animator() -> Self
  var animations: [String : AnyObject]
  func animationForKey(key: String) -> AnyObject?
  class func defaultAnimationForKey(key: String) -> AnyObject?
}
extension NSLayoutConstraint {
  var identifier: String?
}
extension NSView {
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  var leftAnchor: NSLayoutXAxisAnchor { get }
  var rightAnchor: NSLayoutXAxisAnchor { get }
  var topAnchor: NSLayoutYAxisAnchor { get }
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  var widthAnchor: NSLayoutDimension { get }
  var heightAnchor: NSLayoutDimension { get }
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
  var constraints: [NSLayoutConstraint] { get }
  func addConstraint(constraint: NSLayoutConstraint)
  func addConstraints(constraints: [NSLayoutConstraint])
  func removeConstraint(constraint: NSLayoutConstraint)
  func removeConstraints(constraints: [NSLayoutConstraint])
}
extension NSWindow {
  func updateConstraintsIfNeeded()
  func layoutIfNeeded()
}
extension NSView {
  func updateConstraintsForSubtreeIfNeeded()
  func updateConstraints()
  var needsUpdateConstraints: Bool
  func layoutSubtreeIfNeeded()
  func layout()
  var needsLayout: Bool
}
extension NSView {
  var translatesAutoresizingMaskIntoConstraints: Bool
  class func requiresConstraintBasedLayout() -> Bool
}
extension NSView {
  func alignmentRectForFrame(frame: NSRect) -> NSRect
  func frameForAlignmentRect(alignmentRect: NSRect) -> NSRect
  var alignmentRectInsets: NSEdgeInsets { get }
  var firstBaselineOffsetFromTop: CGFloat { get }
  var lastBaselineOffsetFromBottom: CGFloat { get }
  var baselineOffsetFromBottom: CGFloat { get }
  var intrinsicContentSize: NSSize { get }
  func invalidateIntrinsicContentSize()
  func contentHuggingPriorityForOrientation(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  func setContentHuggingPriority(priority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  func contentCompressionResistancePriorityForOrientation(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  func setContentCompressionResistancePriority(priority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
}
let NSViewNoInstrinsicMetric: CGFloat
let NSViewNoIntrinsicMetric: CGFloat
extension NSControl {
  func invalidateIntrinsicContentSizeForCell(cell: NSCell)
}
extension NSWindow {
  func anchorAttributeForOrientation(orientation: NSLayoutConstraintOrientation) -> NSLayoutAttribute
  func setAnchorAttribute(attr: NSLayoutAttribute, forOrientation orientation: NSLayoutConstraintOrientation)
}
extension NSView {
  var fittingSize: NSSize { get }
}
extension NSView {
  func constraintsAffectingLayoutForOrientation(orientation: NSLayoutConstraintOrientation) -> [NSLayoutConstraint]
  var hasAmbiguousLayout: Bool { get }
  func exerciseAmbiguityInLayout()
}
extension NSWindow {
  func visualizeConstraints(constraints: [NSLayoutConstraint])
}
class NSLayoutGuide : NSObject, NSCoding, NSUserInterfaceItemIdentification {
  var frame: NSRect { get }
  weak var owningView: @sil_weak NSView?
  var identifier: String
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  var leftAnchor: NSLayoutXAxisAnchor { get }
  var rightAnchor: NSLayoutXAxisAnchor { get }
  var topAnchor: NSLayoutYAxisAnchor { get }
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  var widthAnchor: NSLayoutDimension { get }
  var heightAnchor: NSLayoutDimension { get }
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSView {
  func addLayoutGuide(guide: NSLayoutGuide)
  func removeLayoutGuide(guide: NSLayoutGuide)
  var layoutGuides: [NSLayoutGuide] { get }
}
enum NSTextLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
enum NSGlyphProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Null
  case ControlCharacter
  case Elastic
  case NonBaseCharacter
}
enum NSControlCharacterAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ZeroAdvancement
  case Whitespace
  case HorizontalTab
  case LineBreak
  case ParagraphBreak
  case ContainerBreak
}
protocol NSTextLayoutOrientationProvider {
  var layoutOrientation: NSTextLayoutOrientation { get }
}
enum NSTypesetterBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LatestBehavior
  case OriginalBehavior
  case Behavior_10_2_WithCompatibility
  case Behavior_10_2
  case Behavior_10_3
  case Behavior_10_4
}
class NSLayoutManager : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  func replaceTextStorage(newTextStorage: NSTextStorage)
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, atIndex index: Int)
  func removeTextContainerAtIndex(index: Int)
  func textContainerChangedGeometry(container: NSTextContainer)
  func textContainerChangedTextView(container: NSTextContainer)
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: Float
  var usesFontLeading: Bool
  var allowsNonContiguousLayout: Bool
  var hasNonContiguousLayout: Bool { get }
  var backgroundLayoutEnabled: Bool
  var defaultAttachmentScaling: NSImageScaling
  var typesetter: NSTypesetter
  var typesetterBehavior: NSTypesetterBehavior
  func invalidateGlyphsForCharacterRange(charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateLayoutForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(charRange: NSRange)
  func invalidateDisplayForGlyphRange(glyphRange: NSRange)
  func processEditingForTextStorage(textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphsForCharacterRange(charRange: NSRange)
  func ensureGlyphsForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForCharacterRange(charRange: NSRange)
  func ensureLayoutForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForTextContainer(container: NSTextContainer)
  func ensureLayoutForBoundingRect(bounds: NSRect, inTextContainer container: NSTextContainer)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  func CGGlyphAtIndex(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func CGGlyphAtIndex(glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(glyphIndex: Int) -> Bool
  func propertyForGlyphAtIndex(glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAtIndex(glyphIndex: Int) -> Int
  func glyphIndexForCharacterAtIndex(charIndex: Int) -> Int
  func getGlyphsInRange(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect)
  func setExtraLineFragmentRect(fragmentRect: NSRect, usedRect: NSRect, textContainer container: NSTextContainer)
  func setLocation(location: NSPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(charIndex: UnsafeMutablePointer<Int>, glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  func textContainerForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectForTextContainer(container: NSTextContainer) -> NSRect
  func lineFragmentRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func lineFragmentRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  func lineFragmentUsedRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func lineFragmentUsedRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  var extraLineFragmentRect: NSRect { get }
  var extraLineFragmentUsedRect: NSRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAtIndex(glyphIndex: Int) -> NSPoint
  func notShownAttributeForGlyphAtIndex(glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAtIndex(glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAtIndex(glyphIndex: Int) -> NSSize
  func truncatedGlyphRangeInLineFragmentForGlyphAtIndex(glyphIndex: Int) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForTextContainer(container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContainingIndex(glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(glyphRange: NSRange, inTextContainer container: NSTextContainer) -> NSRect
  func glyphRangeForBoundingRect(bounds: NSRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(bounds: NSRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphIndexForPoint(point: NSPoint, inTextContainer container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexForPoint(point: NSPoint, inTextContainer container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphForPoint(point: NSPoint, inTextContainer container: NSTextContainer) -> CGFloat
  func characterIndexForPoint(point: NSPoint, inTextContainer container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAtIndex(charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  func enumerateLineFragmentsForGlyphRange(glyphRange: NSRange, usingBlock block: (NSRect, NSRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateEnclosingRectsForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, inTextContainer textContainer: NSTextContainer, usingBlock block: (NSRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackgroundForGlyphRange(glyphsToShow: NSRange, atPoint origin: NSPoint)
  func drawGlyphsForGlyphRange(glyphsToShow: NSRange, atPoint origin: NSPoint)
  func showCGGlyphs(glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<NSPoint>, count glyphCount: Int, font: NSFont, matrix textMatrix: NSAffineTransform, attributes: [String : AnyObject], inContext graphicsContext: NSGraphicsContext)
  func fillBackgroundRectArray(rectArray: UnsafePointer<NSRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: NSColor)
  func drawUnderlineForGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func underlineGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func drawStrikethroughForGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func strikethroughGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func showAttachmentCell(cell: NSCell, inRect rect: NSRect, characterIndex attachmentIndex: Int)
  func setLayoutRect(rect: NSRect, forTextBlock block: NSTextBlock, glyphRange: NSRange)
  func setBoundsRect(rect: NSRect, forTextBlock block: NSTextBlock, glyphRange: NSRange)
  func layoutRectForTextBlock(block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func boundsRectForTextBlock(block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func layoutRectForTextBlock(block: NSTextBlock, atIndex glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func boundsRectForTextBlock(block: NSTextBlock, atIndex glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func temporaryAttributesAtCharacterIndex(charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]
  func setTemporaryAttributes(attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func addTemporaryAttributes(attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func removeTemporaryAttribute(attrName: String, forCharacterRange charRange: NSRange)
  func temporaryAttribute(attrName: String, atCharacterIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  func temporaryAttribute(attrName: String, atCharacterIndex location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> AnyObject?
  func temporaryAttributesAtCharacterIndex(location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> [String : AnyObject]
  func addTemporaryAttribute(attrName: String, value: AnyObject, forCharacterRange charRange: NSRange)
  func defaultLineHeightForFont(theFont: NSFont) -> CGFloat
  func defaultBaselineOffsetForFont(theFont: NSFont) -> CGFloat
  func encodeWithCoder(aCoder: NSCoder)
}
struct __lmFlags {
  var containersAreFull: UInt32
  var glyphsMightDrawOutsideLines: UInt32
  var backgroundLayoutEnabled: UInt32
  var resizingInProgress: UInt32
  var allowScreenFonts: UInt32
  var cachedRectArrayInUse: UInt32
  var displayInvalidationInProgress: UInt32
  var insertionPointNeedsUpdate: UInt32
  var layoutManagerInDirtyList: UInt32
  var originalFontOverride: UInt32
  var showInvisibleCharacters: UInt32
  var showControlCharacters: UInt32
  var delegateRespondsToDidInvalidate: UInt32
  var delegateRespondsToDidComplete: UInt32
  var glyphFormat: UInt32
  var textStorageRespondsToIsEditing: UInt32
  var notifyEditedInProgress: UInt32
  var containersChanged: UInt32
  var isGeneratingGlyphs: UInt32
  var hasNonGeneratedGlyphData: UInt32
  var inBackgroundLayout: UInt32
  var syncAlignmentToDirection: UInt32
  var defaultAttachmentScaling: UInt32
  var usesFontLeading: UInt32
  var seenRightToLeft: UInt32
  var ignoresViewTransformations: UInt32
  var needToFlushGlyph: UInt32
  var flipsIfNeeded: UInt32
  var allowNonContig: UInt32
  var useNonContig: UInt32
  init()
  init(containersAreFull: UInt32, glyphsMightDrawOutsideLines: UInt32, backgroundLayoutEnabled: UInt32, resizingInProgress: UInt32, allowScreenFonts: UInt32, cachedRectArrayInUse: UInt32, displayInvalidationInProgress: UInt32, insertionPointNeedsUpdate: UInt32, layoutManagerInDirtyList: UInt32, originalFontOverride: UInt32, showInvisibleCharacters: UInt32, showControlCharacters: UInt32, delegateRespondsToDidInvalidate: UInt32, delegateRespondsToDidComplete: UInt32, glyphFormat: UInt32, textStorageRespondsToIsEditing: UInt32, notifyEditedInProgress: UInt32, containersChanged: UInt32, isGeneratingGlyphs: UInt32, hasNonGeneratedGlyphData: UInt32, inBackgroundLayout: UInt32, syncAlignmentToDirection: UInt32, defaultAttachmentScaling: UInt32, usesFontLeading: UInt32, seenRightToLeft: UInt32, ignoresViewTransformations: UInt32, needToFlushGlyph: UInt32, flipsIfNeeded: UInt32, allowNonContig: UInt32, useNonContig: UInt32)
}
extension NSLayoutManager : NSGlyphStorage {
  var glyphGenerator: NSGlyphGenerator
  func attributedString() -> NSAttributedString
  func layoutOptions() -> Int
}
extension NSLayoutManager {
  func rulerMarkersForTextView(view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView) -> [NSRulerMarker]
  func rulerAccessoryViewForTextView(view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView, enabled isEnabled: Bool) -> NSView?
  func layoutManagerOwnsFirstResponderInWindow(window: NSWindow) -> Bool
  unowned(unsafe) var firstTextView: @sil_unmanaged NSTextView? { get }
  unowned(unsafe) var textViewForBeginningOfSelection: @sil_unmanaged NSTextView? { get }
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange) -> Int
  optional func layoutManager(layoutManager: NSLayoutManager, lineSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUseAction action: NSControlCharacterAction, forControlCharacterAtIndex charIndex: Int) -> NSControlCharacterAction
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAtIndex charIndex: Int) -> Bool
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAtIndex charIndex: Int) -> Bool
  optional func layoutManager(layoutManager: NSLayoutManager, boundingBoxForControlGlyphAtIndex glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
  optional func layoutManager(layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<NSRect>, lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, inTextContainer textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  optional func layoutManagerDidInvalidateLayout(sender: NSLayoutManager)
  optional func layoutManager(layoutManager: NSLayoutManager, didCompleteLayoutForTextContainer textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  optional func layoutManager(layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFromSize oldSize: NSSize)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUseTemporaryAttributes attrs: [String : AnyObject], forDrawingToScreen toScreen: Bool, atCharacterIndex charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]?
}
var NSGlyphAttributeSoft: Int { get }
var NSGlyphAttributeElastic: Int { get }
var NSGlyphAttributeBidiLevel: Int { get }
var NSGlyphAttributeInscribe: Int { get }
enum NSGlyphInscription : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case InscribeBase
  case InscribeBelow
  case InscribeAbove
  case InscribeOverstrike
  case InscribeOverBelow
}
extension NSLayoutManager {
  func glyphAtIndex(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> NSGlyph
  func glyphAtIndex(glyphIndex: Int) -> NSGlyph
  func rectArrayForCharacterRange(charRange: NSRange, withinSelectedCharacterRange selCharRange: NSRange, inTextContainer container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  func rectArrayForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selGlyphRange: NSRange, inTextContainer container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  var usesScreenFonts: Bool
  func substituteFontForFont(originalFont: NSFont) -> NSFont
  func insertGlyphs(glyphs: UnsafePointer<NSGlyph>, length: Int, forStartingGlyphAtIndex glyphIndex: Int, characterIndex charIndex: Int)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex charIndex: Int)
  func replaceGlyphAtIndex(glyphIndex: Int, withGlyph newGlyph: NSGlyph)
  func deleteGlyphsInRange(glyphRange: NSRange)
  func setCharacterIndex(charIndex: Int, forGlyphAtIndex glyphIndex: Int)
  func setIntAttribute(attributeTag: Int, value val: Int, forGlyphAtIndex glyphIndex: Int)
  func invalidateGlyphsOnLayoutInvalidationForGlyphRange(glyphRange: NSRange)
  func intAttribute(attributeTag: Int, forGlyphAtIndex glyphIndex: Int) -> Int
  func getGlyphsInRange(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
  func getGlyphsInRange(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func getGlyphs(glyphArray: UnsafeMutablePointer<NSGlyph>, range glyphRange: NSRange) -> Int
  func invalidateLayoutForCharacterRange(charRange: NSRange, isSoft flag: Bool, actualCharacterRange actualCharRange: NSRangePointer)
  func textStorage(str: NSTextStorage, edited editedMask: NSTextStorageEditedOptions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func setLocations(locations: NSPointArray, startingGlyphIndexes glyphIndexes: UnsafeMutablePointer<Int>, count: Int, forGlyphRange glyphRange: NSRange)
}
class NSLevelIndicator : NSControl {
  var levelIndicatorStyle: NSLevelIndicatorStyle
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSTickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func tickMarkValueAtIndex(index: Int) -> Double
  func rectOfTickMarkAtIndex(index: Int) -> NSRect
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
enum NSLevelIndicatorStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RelevancyLevelIndicatorStyle
  case ContinuousCapacityLevelIndicatorStyle
  case DiscreteCapacityLevelIndicatorStyle
  case RatingLevelIndicatorStyle
}
class NSLevelIndicatorCell : NSActionCell {
  init(levelIndicatorStyle: NSLevelIndicatorStyle)
  var levelIndicatorStyle: NSLevelIndicatorStyle
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSTickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func rectOfTickMarkAtIndex(index: Int) -> NSRect
  func tickMarkValueAtIndex(index: Int) -> Double
  func setImage(image: NSImage?)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
enum NSMatrixMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RadioModeMatrix
  case HighlightModeMatrix
  case ListModeMatrix
  case TrackModeMatrix
}
struct __MFlags {
  var reservedMatrix: UInt32
  var cellSizeNeedsAutorecalc: UInt32
  var autorecalculatesCellSize: UInt32
  var drawingContextMenuHighlightOnAllSelectedRows: UInt32
  var drawingContextMenuHighlight: UInt32
  var browserOptimizationsEnabled: UInt32
  var needsRedrawBeforeFirstLiveResizeCache: UInt32
  var tmpAllowNonVisibleCellsToBecomeFirstResponder: UInt32
  var subclassIsSafeForLiveResize: UInt32
  var hasCachedSubclassIsSafeForLiveResize: UInt32
  var liveResizeImageCacheingEnabled: UInt32
  var checkForSimpleTrackingMode: UInt32
  var useSimpleTrackingMode: UInt32
  var refusesFirstResponder: UInt32
  var dontScroll: UInt32
  var changingSelectionWithKeyboard: UInt32
  var onlySetKeyCell: UInt32
  var currentlySelectingCell: UInt32
  var allowsIncrementalSearching: UInt32
  var tabKeyTraversesCellsExplicitlySet: UInt32
  var tabKeyTraversesCells: UInt32
  var drawingAncestor: UInt32
  var autosizeCells: UInt32
  var drawsBackground: UInt32
  var drawsCellBackground: UInt32
  var selectionByRect: UInt32
  var autoscroll: UInt32
  var allowEmptySel: UInt32
  var listMode: UInt32
  var radioMode: UInt32
  var highlightMode: UInt32
  init()
  init(reservedMatrix: UInt32, cellSizeNeedsAutorecalc: UInt32, autorecalculatesCellSize: UInt32, drawingContextMenuHighlightOnAllSelectedRows: UInt32, drawingContextMenuHighlight: UInt32, browserOptimizationsEnabled: UInt32, needsRedrawBeforeFirstLiveResizeCache: UInt32, tmpAllowNonVisibleCellsToBecomeFirstResponder: UInt32, subclassIsSafeForLiveResize: UInt32, hasCachedSubclassIsSafeForLiveResize: UInt32, liveResizeImageCacheingEnabled: UInt32, checkForSimpleTrackingMode: UInt32, useSimpleTrackingMode: UInt32, refusesFirstResponder: UInt32, dontScroll: UInt32, changingSelectionWithKeyboard: UInt32, onlySetKeyCell: UInt32, currentlySelectingCell: UInt32, allowsIncrementalSearching: UInt32, tabKeyTraversesCellsExplicitlySet: UInt32, tabKeyTraversesCells: UInt32, drawingAncestor: UInt32, autosizeCells: UInt32, drawsBackground: UInt32, drawsCellBackground: UInt32, selectionByRect: UInt32, autoscroll: UInt32, allowEmptySel: UInt32, listMode: UInt32, radioMode: UInt32, highlightMode: UInt32)
}
typealias _MFlags = __MFlags
class NSMatrix : NSControl, NSUserInterfaceValidations {
  convenience init(frame frameRect: NSRect)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, prototype aCell: NSCell, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, cellClass factoryId: AnyClass?, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  var cellClass: AnyClass
  @NSCopying var prototype: NSCell?
  func makeCellAtRow(row: Int, column col: Int) -> NSCell
  var mode: NSMatrixMode
  var allowsEmptySelection: Bool
  func sendAction(aSelector: Selector, to anObject: AnyObject, forAllCells flag: Bool)
  var cells: [NSCell] { get }
  func sortUsingSelector(comparator: Selector)
  func sortUsingFunction(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  var selectedCells: [NSCell] { get }
  var selectedRow: Int { get }
  var selectedColumn: Int { get }
  var selectionByRect: Bool
  func setSelectionFrom(startPos: Int, to endPos: Int, anchor anchorPos: Int, highlight lit: Bool)
  func deselectSelectedCell()
  func deselectAllCells()
  func selectCellAtRow(row: Int, column col: Int)
  func selectAll(sender: AnyObject?)
  func selectCellWithTag(anInt: Int) -> Bool
  var cellSize: NSSize
  var intercellSpacing: NSSize
  func setScrollable(flag: Bool)
  @NSCopying var backgroundColor: NSColor
  @NSCopying var cellBackgroundColor: NSColor?
  var drawsCellBackground: Bool
  var drawsBackground: Bool
  func setState(value: Int, atRow row: Int, column col: Int)
  func getNumberOfRows(rowCount: UnsafeMutablePointer<Int>, columns colCount: UnsafeMutablePointer<Int>)
  var numberOfRows: Int { get }
  var numberOfColumns: Int { get }
  func cellAtRow(row: Int, column col: Int) -> NSCell?
  func cellFrameAtRow(row: Int, column col: Int) -> NSRect
  func getRow(row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, ofCell aCell: NSCell) -> Bool
  func getRow(row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, forPoint aPoint: NSPoint) -> Bool
  func renewRows(newRows: Int, columns newCols: Int)
  func putCell(newCell: NSCell, atRow row: Int, column col: Int)
  func addRow()
  func addRowWithCells(newCells: [NSCell])
  func insertRow(row: Int)
  func insertRow(row: Int, withCells newCells: [NSCell])
  func removeRow(row: Int)
  func addColumn()
  func addColumnWithCells(newCells: [NSCell])
  func insertColumn(column: Int)
  func insertColumn(column: Int, withCells newCells: [NSCell])
  func removeColumn(col: Int)
  func cellWithTag(anInt: Int) -> NSCell?
  var doubleAction: Selector
  var autosizesCells: Bool
  func sizeToCells()
  func setValidateSize(flag: Bool)
  func drawCellAtRow(row: Int, column col: Int)
  func highlightCell(flag: Bool, atRow row: Int, column col: Int)
  var autoscroll: Bool
  func scrollCellToVisibleAtRow(row: Int, column col: Int)
  var mouseDownFlags: Int { get }
  func mouseDown(theEvent: NSEvent)
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func sendAction() -> Bool
  func sendDoubleAction()
  unowned(unsafe) var delegate: @sil_unmanaged NSMatrixDelegate?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: NSNotification)
  func textDidEndEditing(notification: NSNotification)
  func textDidChange(notification: NSNotification)
  func selectText(sender: AnyObject?)
  func selectTextAtRow(row: Int, column col: Int) -> NSCell?
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  func resetCursorRects()
  func setToolTip(toolTipString: String?, forCell cell: NSCell)
  func toolTipForCell(cell: NSCell) -> String?
  var autorecalculatesCellSize: Bool
  func selectedCell() -> NSCell?
  init?(coder: NSCoder)
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
}
extension NSMatrix {
  var tabKeyTraversesCells: Bool
  unowned(unsafe) var keyCell: @sil_unmanaged NSCell?
}
protocol NSMatrixDelegate : NSControlTextEditingDelegate {
}
struct NSMediaLibrary : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Audio: NSMediaLibrary { get }
  static var Image: NSMediaLibrary { get }
  static var Movie: NSMediaLibrary { get }
}
class NSMediaLibraryBrowserController : NSObject {
  var visible: Bool
  var frame: NSRect
  var mediaLibraries: NSMediaLibrary
  class func sharedMediaLibraryBrowserController() -> NSMediaLibraryBrowserController
  @IBAction func togglePanel(sender: AnyObject?)
  init()
}
class NSMenu : NSObject, NSCopying, NSCoding {
  init(title aTitle: String)
  var title: String
  class func popUpContextMenu(menu: NSMenu, withEvent event: NSEvent, forView view: NSView)
  class func popUpContextMenu(menu: NSMenu, withEvent event: NSEvent, forView view: NSView, withFont font: NSFont?)
  func popUpMenuPositioningItem(item: NSMenuItem?, atLocation location: NSPoint, inView view: NSView?) -> Bool
  class func setMenuBarVisible(visible: Bool)
  class func menuBarVisible() -> Bool
  unowned(unsafe) var supermenu: @sil_unmanaged NSMenu?
  func insertItem(newItem: NSMenuItem, atIndex index: Int)
  func addItem(newItem: NSMenuItem)
  func insertItemWithTitle(aString: String, action aSelector: Selector, keyEquivalent charCode: String, atIndex index: Int) -> NSMenuItem?
  func addItemWithTitle(aString: String, action aSelector: Selector, keyEquivalent charCode: String) -> NSMenuItem?
  func removeItemAtIndex(index: Int)
  func removeItem(item: NSMenuItem)
  func setSubmenu(aMenu: NSMenu?, forItem anItem: NSMenuItem)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func itemAtIndex(index: Int) -> NSMenuItem?
  func indexOfItem(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(aTitle: String) -> Int
  func indexOfItemWithTag(aTag: Int) -> Int
  func indexOfItemWithRepresentedObject(object: AnyObject) -> Int
  func indexOfItemWithSubmenu(submenu: NSMenu?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemWithTitle(aTitle: String) -> NSMenuItem?
  func itemWithTag(tag: Int) -> NSMenuItem?
  var autoenablesItems: Bool
  func update()
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func itemChanged(item: NSMenuItem)
  func performActionForItemAtIndex(index: Int)
  unowned(unsafe) var delegate: @sil_unmanaged NSMenuDelegate?
  var menuBarHeight: CGFloat { get }
  func cancelTracking()
  func cancelTrackingWithoutAnimation()
  var highlightedItem: NSMenuItem? { get }
  var minimumWidth: CGFloat
  var size: NSSize { get }
  var font: NSFont!
  var allowsContextMenuPlugIns: Bool
  var showsStateColumn: Bool
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __mFlags {
  var noAutoenable: UInt32
  var inMain: UInt32
  var internalPerformAction: UInt32
  var condenseSeparators: UInt32
  var disabled: UInt32
  var ownedByPopUp: UInt32
  var delegateNeedsUpdate: UInt32
  var delegateUpdateItem: UInt32
  var delegateHasKeyEquiv: UInt32
  var delegateHasAltKeyEquiv: UInt32
  var excludeMarkColumn: UInt32
  var isContextualMenu: UInt32
  var cmPluginMode: UInt32
  var invertedCMPluginTypes: UInt32
  var allowsDifferentSelection: UInt32
  var noTopPadding: UInt32
  var noBottomPadding: UInt32
  var hasNCStyle: UInt32
  var delegateIsUnsafeUnretained: UInt32
  var RESERVED: UInt32
  init()
  init(noAutoenable: UInt32, inMain: UInt32, internalPerformAction: UInt32, condenseSeparators: UInt32, disabled: UInt32, ownedByPopUp: UInt32, delegateNeedsUpdate: UInt32, delegateUpdateItem: UInt32, delegateHasKeyEquiv: UInt32, delegateHasAltKeyEquiv: UInt32, excludeMarkColumn: UInt32, isContextualMenu: UInt32, cmPluginMode: UInt32, invertedCMPluginTypes: UInt32, allowsDifferentSelection: UInt32, noTopPadding: UInt32, noBottomPadding: UInt32, hasNCStyle: UInt32, delegateIsUnsafeUnretained: UInt32, RESERVED: UInt32)
}
extension NSMenu {
  func submenuAction(sender: AnyObject?)
}
extension NSObject {
  class func validateMenuItem(menuItem: NSMenuItem) -> Bool
  func validateMenuItem(menuItem: NSMenuItem) -> Bool
}
protocol NSMenuDelegate : NSObjectProtocol {
  optional func menuNeedsUpdate(menu: NSMenu)
  optional func numberOfItemsInMenu(menu: NSMenu) -> Int
  optional func menu(menu: NSMenu, updateItem item: NSMenuItem, atIndex index: Int, shouldCancel: Bool) -> Bool
  optional func menuHasKeyEquivalent(menu: NSMenu, forEvent event: NSEvent, target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action: UnsafeMutablePointer<Selector>) -> Bool
  optional func menuWillOpen(menu: NSMenu)
  optional func menuDidClose(menu: NSMenu)
  optional func menu(menu: NSMenu, willHighlightItem item: NSMenuItem?)
  optional func confinementRectForMenu(menu: NSMenu, onScreen screen: NSScreen?) -> NSRect
}
struct NSMenuProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PropertyItemTitle: NSMenuProperties { get }
  static var PropertyItemAttributedTitle: NSMenuProperties { get }
  static var PropertyItemKeyEquivalent: NSMenuProperties { get }
  static var PropertyItemImage: NSMenuProperties { get }
  static var PropertyItemEnabled: NSMenuProperties { get }
  static var PropertyItemAccessibilityDescription: NSMenuProperties { get }
}
extension NSMenu {
  var propertiesToUpdate: NSMenuProperties { get }
}
let NSMenuWillSendActionNotification: String
let NSMenuDidSendActionNotification: String
let NSMenuDidAddItemNotification: String
let NSMenuDidRemoveItemNotification: String
let NSMenuDidChangeItemNotification: String
let NSMenuDidBeginTrackingNotification: String
let NSMenuDidEndTrackingNotification: String
extension NSMenu {
  class func menuZone() -> NSZone
  var menuChangedMessagesEnabled: Bool
  func helpRequested(eventPtr: NSEvent)
  var tornOff: Bool { get }
}
class NSMenuItem : NSObject, NSCopying, NSCoding, NSValidatedUserInterfaceItem {
  class func setUsesUserKeyEquivalents(flag: Bool)
  class func usesUserKeyEquivalents() -> Bool
  class func separatorItem() -> NSMenuItem
  init(title aString: String, action aSelector: Selector, keyEquivalent charCode: String)
  unowned(unsafe) var menu: @sil_unmanaged NSMenu?
  var hasSubmenu: Bool { get }
  var submenu: NSMenu?
  unowned(unsafe) var parentItem: @sil_unmanaged NSMenuItem? { get }
  var title: String
  @NSCopying var attributedTitle: NSAttributedString?
  var separatorItem: Bool { get }
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  var userKeyEquivalent: String { get }
  func setTitleWithMnemonic(stringWithAmpersand: String)
  var image: NSImage?
  var state: Int
  var onStateImage: NSImage!
  var offStateImage: NSImage!
  var mixedStateImage: NSImage!
  var enabled: Bool
  var alternate: Bool
  var indentationLevel: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  var representedObject: AnyObject?
  var view: NSView?
  var highlighted: Bool { get }
  var hidden: Bool
  var hiddenOrHasHiddenAncestor: Bool { get }
  var toolTip: String?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __miFlags {
  var keGenerationCount: UInt32
  var disabled: UInt32
  var isSeparator: UInt32
  var hidden: UInt32
  var alternate: UInt32
  var moreAlternate: UInt32
  var singleAlternate: UInt32
  var indent: UInt32
  var keShareMode: UInt32
  var state: UInt32
  var destructive: UInt32
  var RESERVED1: UInt32
  var limitedView: UInt32
  var nextItemIsAlternate: UInt32
  var blockKE: UInt32
  var ignoredForAccessibility: UInt32
  var hiddenActiveKE: UInt32
  var noRepeatKEs: UInt32
  var targetWeak: UInt32
  init()
  init(keGenerationCount: UInt32, disabled: UInt32, isSeparator: UInt32, hidden: UInt32, alternate: UInt32, moreAlternate: UInt32, singleAlternate: UInt32, indent: UInt32, keShareMode: UInt32, state: UInt32, destructive: UInt32, RESERVED1: UInt32, limitedView: UInt32, nextItemIsAlternate: UInt32, blockKE: UInt32, ignoredForAccessibility: UInt32, hiddenActiveKE: UInt32, noRepeatKEs: UInt32, targetWeak: UInt32)
}
extension NSView {
  var enclosingMenuItem: NSMenuItem? { get }
}
extension NSMenuItem {
}
class NSMenuItemCell : NSButtonCell {
  var menuItem: NSMenuItem?
  var needsSizing: Bool
  func calcSize()
  var needsDisplay: Bool
  var stateImageWidth: CGFloat { get }
  var imageWidth: CGFloat { get }
  var titleWidth: CGFloat { get }
  var keyEquivalentWidth: CGFloat { get }
  func stateImageRectForBounds(cellFrame: NSRect) -> NSRect
  func titleRectForBounds(cellFrame: NSRect) -> NSRect
  func keyEquivalentRectForBounds(cellFrame: NSRect) -> NSRect
  func drawSeparatorItemWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func drawStateImageWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func drawImageWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func drawTitleWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func drawKeyEquivalentWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func drawBorderAndBackgroundWithFrame(cellFrame: NSRect, inView controlView: NSView)
  var tag: Int
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __micFlags {
  var needsSizing: UInt32
  var reserved: UInt32
  var needsDisplay: UInt32
  var keyEquivGlyphWidth: UInt32
  var uniqueAgainstMain: UInt32
  var RESERVED: UInt32
  init()
  init(needsSizing: UInt32, reserved: UInt32, needsDisplay: UInt32, keyEquivGlyphWidth: UInt32, uniqueAgainstMain: UInt32, RESERVED: UInt32)
}
class NSNib : NSObject, NSCoding {
  init?(nibNamed nibName: String, bundle: NSBundle?)
  init(nibData: NSData, bundle: NSBundle?)
  func instantiateWithOwner(owner: AnyObject?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct _NSNibFlags {
  var _isKeyed: UInt32
  var _inheritsDecodeTimeBundle: UInt32
  var _inheritsDecodeTimePath: UInt32
  var _reserved: UInt32
  init()
  init(_isKeyed: UInt32, _inheritsDecodeTimeBundle: UInt32, _inheritsDecodeTimePath: UInt32, _reserved: UInt32)
}
extension NSNib {
}
extension NSBundle {
  func loadNibNamed(nibName: String, owner: AnyObject?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  class func prepareForInterfaceBuilder()
  func prepareForInterfaceBuilder()
}
extension NSBundle {
}
class NSObjectController : NSController {
  init(content: AnyObject?)
  init?(coder: NSCoder)
  var content: AnyObject?
  var selection: AnyObject { get }
  var selectedObjects: [AnyObject] { get }
  var automaticallyPreparesContent: Bool
  func prepareContent()
  var objectClass: AnyClass!
  func newObject() -> AnyObject
  func addObject(object: AnyObject)
  func removeObject(object: AnyObject)
  var editable: Bool
  func add(sender: AnyObject?)
  var canAdd: Bool { get }
  func remove(sender: AnyObject?)
  var canRemove: Bool { get }
  func validateUserInterfaceItem(item: NSValidatedUserInterfaceItem) -> Bool
  convenience init()
}
struct __objectControllerFlags {
  var _editable: UInt32
  var _automaticallyPreparesContent: UInt32
  var _hasLoadedData: UInt32
  var _explicitlyCannotAdd: UInt32
  var _explicitlyCannotRemove: UInt32
  var _isUsingManagedProxy: UInt32
  var _hasFetched: UInt32
  var _batches: UInt32
  var _reservedObjectController: UInt32
  init()
  init(_editable: UInt32, _automaticallyPreparesContent: UInt32, _hasLoadedData: UInt32, _explicitlyCannotAdd: UInt32, _explicitlyCannotRemove: UInt32, _isUsingManagedProxy: UInt32, _hasFetched: UInt32, _batches: UInt32, _reservedObjectController: UInt32)
}
extension NSObjectController {
  var managedObjectContext: NSManagedObjectContext?
  var entityName: String?
  var fetchPredicate: NSPredicate?
  func fetchWithRequest(fetchRequest: NSFetchRequest?, merge: Bool) throws
  func fetch(sender: AnyObject?)
  var usesLazyFetching: Bool
  func defaultFetchRequest() -> NSFetchRequest
}
var NSOPENGL_CURRENT_VERSION: Int32 { get }
struct NSOpenGLGlobalOption : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NSOpenGLGOFormatCacheSize: NSOpenGLGlobalOption { get }
var NSOpenGLGOClearFormatCache: NSOpenGLGlobalOption { get }
var NSOpenGLGORetainRenderers: NSOpenGLGlobalOption { get }
var NSOpenGLGOUseBuildCache: NSOpenGLGlobalOption { get }
func NSOpenGLSetOption(pname: NSOpenGLGlobalOption, _ param: GLint)
func NSOpenGLGetOption(pname: NSOpenGLGlobalOption, _ param: UnsafeMutablePointer<GLint>)
func NSOpenGLGetVersion(major: UnsafeMutablePointer<GLint>, _ minor: UnsafeMutablePointer<GLint>)
var NSOpenGLPFAAllRenderers: Int { get }
var NSOpenGLPFATripleBuffer: Int { get }
var NSOpenGLPFADoubleBuffer: Int { get }
var NSOpenGLPFAStereo: Int { get }
var NSOpenGLPFAAuxBuffers: Int { get }
var NSOpenGLPFAColorSize: Int { get }
var NSOpenGLPFAAlphaSize: Int { get }
var NSOpenGLPFADepthSize: Int { get }
var NSOpenGLPFAStencilSize: Int { get }
var NSOpenGLPFAAccumSize: Int { get }
var NSOpenGLPFAMinimumPolicy: Int { get }
var NSOpenGLPFAMaximumPolicy: Int { get }
var NSOpenGLPFASampleBuffers: Int { get }
var NSOpenGLPFASamples: Int { get }
var NSOpenGLPFAAuxDepthStencil: Int { get }
var NSOpenGLPFAColorFloat: Int { get }
var NSOpenGLPFAMultisample: Int { get }
var NSOpenGLPFASupersample: Int { get }
var NSOpenGLPFASampleAlpha: Int { get }
var NSOpenGLPFARendererID: Int { get }
var NSOpenGLPFANoRecovery: Int { get }
var NSOpenGLPFAAccelerated: Int { get }
var NSOpenGLPFAClosestPolicy: Int { get }
var NSOpenGLPFABackingStore: Int { get }
var NSOpenGLPFAScreenMask: Int { get }
var NSOpenGLPFAAllowOfflineRenderers: Int { get }
var NSOpenGLPFAAcceleratedCompute: Int { get }
var NSOpenGLPFAVirtualScreenCount: Int { get }
var NSOpenGLPFAOpenGLProfile: Int { get }
typealias NSOpenGLPixelFormatAttribute = UInt32
var NSOpenGLProfileVersionLegacy: Int { get }
var NSOpenGLProfileVersion3_2Core: Int { get }
var NSOpenGLProfileVersion4_1Core: Int { get }
class NSOpenGLPixelFormat : NSObject, NSCoding {
  init?(attributes attribs: UnsafePointer<NSOpenGLPixelFormatAttribute>)
  init?(CGLPixelFormatObj format: COpaquePointer)
  func getValues(vals: UnsafeMutablePointer<GLint>, forAttribute attrib: NSOpenGLPixelFormatAttribute, forVirtualScreen screen: GLint)
  var numberOfVirtualScreens: GLint { get }
  var CGLPixelFormatObj: COpaquePointer { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NSOpenGLContextParameter : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GLCPSwapInterval
  case GLCPSurfaceOrder
  case GLCPSurfaceOpacity
  case GLCPSurfaceBackingSize
  case GLCPReclaimResources
  case GLCPCurrentRendererID
  case GLCPGPUVertexProcessing
  case GLCPGPUFragmentProcessing
  case GLCPHasDrawable
  case GLCPMPSwapsInFlight
  case GLCPSwapRectangle
  case GLCPSwapRectangleEnable
  case GLCPRasterizationEnable
  case GLCPStateValidation
  case GLCPSurfaceSurfaceVolatile
}
typealias NSOpenGLContextAuxiliary = _CGLContextObject
class NSOpenGLContext : NSObject, NSLocking {
  init?(format: NSOpenGLPixelFormat, shareContext share: NSOpenGLContext?)
  init?(CGLContextObj context: UnsafeMutablePointer<_CGLContextObject>)
  var pixelFormat: NSOpenGLPixelFormat { get }
  unowned(unsafe) var view: @sil_unmanaged NSView?
  func clearDrawable()
  func update()
  func flushBuffer()
  func makeCurrentContext()
  class func clearCurrentContext()
  class func currentContext() -> NSOpenGLContext?
  func setValues(vals: UnsafePointer<GLint>, forParameter param: NSOpenGLContextParameter)
  func getValues(vals: UnsafeMutablePointer<GLint>, forParameter param: NSOpenGLContextParameter)
  var currentVirtualScreen: GLint
  var CGLContextObj: UnsafeMutablePointer<_CGLContextObject> { get }
  init()
  func lock()
  func unlock()
}
extension NSOpenGLContext {
}
class NSOpenGLLayer : CAOpenGLLayer {
  unowned(unsafe) var view: @sil_unmanaged NSView?
  var openGLPixelFormat: NSOpenGLPixelFormat?
  var openGLContext: NSOpenGLContext?
  func openGLPixelFormatForDisplayMask(mask: UInt32) -> NSOpenGLPixelFormat
  func openGLContextForPixelFormat(pixelFormat: NSOpenGLPixelFormat) -> NSOpenGLContext
  func canDrawInOpenGLContext(context: NSOpenGLContext, pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func drawInOpenGLContext(context: NSOpenGLContext, pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class NSOpenGLView : NSView {
  class func defaultPixelFormat() -> NSOpenGLPixelFormat
  init?(frame frameRect: NSRect, pixelFormat format: NSOpenGLPixelFormat?)
  var openGLContext: NSOpenGLContext?
  func clearGLContext()
  func update()
  func reshape()
  var pixelFormat: NSOpenGLPixelFormat?
  func prepareOpenGL()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSView {
  var wantsBestResolutionOpenGLSurface: Bool
}
extension NSView {
  var wantsExtendedDynamicRangeOpenGLSurface: Bool
}
class NSOpenPanel : NSSavePanel {
  var URLs: [NSURL] { get }
  var resolvesAliases: Bool
  var canChooseDirectories: Bool
  var allowsMultipleSelection: Bool
  var canChooseFiles: Bool
  var canResolveUbiquitousConflicts: Bool
  var canDownloadUbiquitousContents: Bool
  var accessoryViewDisclosed: Bool
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSOpenPanel {
}
struct __OvFlags {
  var allItemsLoaded: UInt32
  var dataSourceObjectValueByItem: UInt32
  var allowAutomaticAnimations: UInt32
  var dontRedisplayOnFrameChange: UInt32
  var _isSpringLoadingFlashing: UInt32
  var unused2: UInt32
  var delegateShouldAutoExpandItem: UInt32
  var delegateAutoCollapseItem: UInt32
  var delegateAutoExpandItem: UInt32
  var delegateShouldShowOutlineCellForItem: UInt32
  var dataSourceDraggedImageMovedTo: UInt32
  var dataSourceDraggingEndedAt: UInt32
  var reloadingData: UInt32
  var validDataSourceMethods: UInt32
  var numberOfRowsDataExpandEntered: UInt32
  var delayRowEntryFreeDisabled: UInt32
  var delegateHeightOfRowByItem: UInt32
  var animateExpandAndCollapse: UInt32
  var unused: UInt32
  var selectionAdjustmentDisabled: UInt32
  var subclassRowForItem: UInt32
  var delegateWillDisplayOutlineCell: UInt32
  var enableExpandNotifications: UInt32
  var autoSaveExpandItems: UInt32
  var autoresizesOutlineColumn: UInt32
  var delegateShouldExpandItem: UInt32
  var delegateShouldCollapseItem: UInt32
  var delegateSelectionShouldChangeInOutlineView: UInt32
  var delegateShouldSelectTableColumn: UInt32
  var delegateShouldSelectItem: UInt32
  var delegateShouldEditTableColumn: UInt32
  var delegateWillDisplayCell: UInt32
  init()
  init(allItemsLoaded: UInt32, dataSourceObjectValueByItem: UInt32, allowAutomaticAnimations: UInt32, dontRedisplayOnFrameChange: UInt32, _isSpringLoadingFlashing: UInt32, unused2: UInt32, delegateShouldAutoExpandItem: UInt32, delegateAutoCollapseItem: UInt32, delegateAutoExpandItem: UInt32, delegateShouldShowOutlineCellForItem: UInt32, dataSourceDraggedImageMovedTo: UInt32, dataSourceDraggingEndedAt: UInt32, reloadingData: UInt32, validDataSourceMethods: UInt32, numberOfRowsDataExpandEntered: UInt32, delayRowEntryFreeDisabled: UInt32, delegateHeightOfRowByItem: UInt32, animateExpandAndCollapse: UInt32, unused: UInt32, selectionAdjustmentDisabled: UInt32, subclassRowForItem: UInt32, delegateWillDisplayOutlineCell: UInt32, enableExpandNotifications: UInt32, autoSaveExpandItems: UInt32, autoresizesOutlineColumn: UInt32, delegateShouldExpandItem: UInt32, delegateShouldCollapseItem: UInt32, delegateSelectionShouldChangeInOutlineView: UInt32, delegateShouldSelectTableColumn: UInt32, delegateShouldSelectItem: UInt32, delegateShouldEditTableColumn: UInt32, delegateWillDisplayCell: UInt32)
}
typealias _OVFlags = __OvFlags
var NSOutlineViewDropOnItemIndex: Int { get }
class NSOutlineView : NSTableView, NSAccessibilityOutline {
  func setDelegate(anObject: NSOutlineViewDelegate?)
  func delegate() -> NSOutlineViewDelegate?
  func setDataSource(aSource: NSOutlineViewDataSource?)
  func dataSource() -> NSOutlineViewDataSource?
  unowned(unsafe) var outlineTableColumn: @sil_unmanaged NSTableColumn?
  func isExpandable(item: AnyObject?) -> Bool
  func numberOfChildrenOfItem(item: AnyObject?) -> Int
  func child(index: Int, ofItem item: AnyObject?) -> AnyObject?
  func expandItem(item: AnyObject?, expandChildren: Bool)
  func expandItem(item: AnyObject?)
  func collapseItem(item: AnyObject?, collapseChildren: Bool)
  func collapseItem(item: AnyObject?)
  func reloadItem(item: AnyObject?, reloadChildren: Bool)
  func reloadItem(item: AnyObject?)
  func parentForItem(item: AnyObject?) -> AnyObject?
  func childIndexForItem(item: AnyObject) -> Int
  func itemAtRow(row: Int) -> AnyObject?
  func rowForItem(item: AnyObject?) -> Int
  func levelForItem(item: AnyObject?) -> Int
  func levelForRow(row: Int) -> Int
  func isItemExpanded(item: AnyObject?) -> Bool
  var indentationPerLevel: CGFloat
  var indentationMarkerFollowsCell: Bool
  var autoresizesOutlineColumn: Bool
  func frameOfOutlineCellAtRow(row: Int) -> NSRect
  func setDropItem(item: AnyObject?, dropChildIndex index: Int)
  func shouldCollapseAutoExpandedItemsForDeposited(deposited: Bool) -> Bool
  var autosaveExpandedItems: Bool
  func insertItemsAtIndexes(indexes: NSIndexSet, inParent parent: AnyObject?, withAnimation animationOptions: NSTableViewAnimationOptions)
  func removeItemsAtIndexes(indexes: NSIndexSet, inParent parent: AnyObject?, withAnimation animationOptions: NSTableViewAnimationOptions)
  func moveItemAtIndex(fromIndex: Int, inParent oldParent: AnyObject?, toIndex: Int, inParent newParent: AnyObject?)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSOutlineViewDataSource : NSObjectProtocol {
  optional func outlineView(outlineView: NSOutlineView, numberOfChildrenOfItem item: AnyObject?) -> Int
  optional func outlineView(outlineView: NSOutlineView, child index: Int, ofItem item: AnyObject?) -> AnyObject
  optional func outlineView(outlineView: NSOutlineView, isItemExpandable item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, objectValueForTableColumn tableColumn: NSTableColumn?, byItem item: AnyObject?) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, setObjectValue object: AnyObject?, forTableColumn tableColumn: NSTableColumn?, byItem item: AnyObject?)
  optional func outlineView(outlineView: NSOutlineView, itemForPersistentObject object: AnyObject) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, persistentObjectForItem item: AnyObject?) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  optional func outlineView(outlineView: NSOutlineView, pasteboardWriterForItem item: AnyObject) -> NSPasteboardWriting?
  optional func outlineView(outlineView: NSOutlineView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forItems draggedItems: [AnyObject])
  optional func outlineView(outlineView: NSOutlineView, draggingSession session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  optional func outlineView(outlineView: NSOutlineView, writeItems items: [AnyObject], toPasteboard pasteboard: NSPasteboard) -> Bool
  optional func outlineView(outlineView: NSOutlineView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func outlineView(outlineView: NSOutlineView, validateDrop info: NSDraggingInfo, proposedItem item: AnyObject?, proposedChildIndex index: Int) -> NSDragOperation
  optional func outlineView(outlineView: NSOutlineView, acceptDrop info: NSDraggingInfo, item: AnyObject?, childIndex index: Int) -> Bool
  optional func outlineView(outlineView: NSOutlineView, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedItems items: [AnyObject]) -> [String]
}
protocol NSOutlineViewDelegate : NSControlTextEditingDelegate {
  optional func outlineView(outlineView: NSOutlineView, viewForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> NSView?
  optional func outlineView(outlineView: NSOutlineView, rowViewForItem item: AnyObject) -> NSTableRowView?
  optional func outlineView(outlineView: NSOutlineView, didAddRowView rowView: NSTableRowView, forRow row: Int)
  optional func outlineView(outlineView: NSOutlineView, didRemoveRowView rowView: NSTableRowView, forRow row: Int)
  optional func outlineView(outlineView: NSOutlineView, willDisplayCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, item: AnyObject)
  optional func outlineView(outlineView: NSOutlineView, shouldEditTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  optional func selectionShouldChangeInOutlineView(outlineView: NSOutlineView) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldSelectItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet) -> NSIndexSet
  optional func outlineView(outlineView: NSOutlineView, shouldSelectTableColumn tableColumn: NSTableColumn?) -> Bool
  optional func outlineView(outlineView: NSOutlineView, mouseDownInHeaderOfTableColumn tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, didClickTableColumn tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, didDragTableColumn tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, toolTipForCell cell: NSCell, rect: NSRectPointer, tableColumn: NSTableColumn?, item: AnyObject, mouseLocation: NSPoint) -> String
  optional func outlineView(outlineView: NSOutlineView, heightOfRowByItem item: AnyObject) -> CGFloat
  optional func outlineView(outlineView: NSOutlineView, typeSelectStringForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> String?
  optional func outlineView(outlineView: NSOutlineView, nextTypeSelectMatchFromItem startItem: AnyObject, toItem endItem: AnyObject, forString searchString: String) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, shouldTypeSelectForEvent event: NSEvent, withCurrentSearchString searchString: String?) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldShowCellExpansionForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldTrackCell cell: NSCell, forTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, dataCellForTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> NSCell?
  optional func outlineView(outlineView: NSOutlineView, isGroupItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldExpandItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldCollapseItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, willDisplayOutlineCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, item: AnyObject)
  optional func outlineView(outlineView: NSOutlineView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  optional func outlineView(outlineView: NSOutlineView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldShowOutlineCellForItem item: AnyObject) -> Bool
  optional func outlineViewSelectionDidChange(notification: NSNotification)
  optional func outlineViewColumnDidMove(notification: NSNotification)
  optional func outlineViewColumnDidResize(notification: NSNotification)
  optional func outlineViewSelectionIsChanging(notification: NSNotification)
  optional func outlineViewItemWillExpand(notification: NSNotification)
  optional func outlineViewItemDidExpand(notification: NSNotification)
  optional func outlineViewItemWillCollapse(notification: NSNotification)
  optional func outlineViewItemDidCollapse(notification: NSNotification)
}
let NSOutlineViewDisclosureButtonKey: String
let NSOutlineViewShowHideButtonKey: String
let NSOutlineViewSelectionDidChangeNotification: String
let NSOutlineViewColumnDidMoveNotification: String
let NSOutlineViewColumnDidResizeNotification: String
let NSOutlineViewSelectionIsChangingNotification: String
let NSOutlineViewItemWillExpandNotification: String
let NSOutlineViewItemDidExpandNotification: String
let NSOutlineViewItemWillCollapseNotification: String
let NSOutlineViewItemDidCollapseNotification: String
class NSPDFImageRep : NSImageRep {
  init?(data pdfData: NSData)
  var PDFRepresentation: NSData { get }
  var bounds: NSRect { get }
  var currentPage: Int
  var pageCount: Int { get }
  init()
  init?(coder: NSCoder)
}
class NSPDFInfo : NSObject, NSCopying, NSCoding {
  @NSCopying var URL: NSURL?
  var fileExtensionHidden: Bool
  var tagNames: [String]
  var orientation: NSPaperOrientation
  var paperSize: NSSize
  var attributes: NSMutableDictionary { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct NSPDFPanelOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var ShowsPaperSize: NSPDFPanelOptions { get }
  static var ShowsOrientation: NSPDFPanelOptions { get }
  static var RequestsParentDirectory: NSPDFPanelOptions { get }
}
class NSPDFPanel : NSObject {
  var accessoryController: NSViewController?
  var options: NSPDFPanelOptions
  var defaultFileName: String
  func beginSheetWithPDFInfo(pdfInfo: NSPDFInfo, modalForWindow docWindow: NSWindow?, completionHandler: (Int) -> Void)
  init()
}
class NSPICTImageRep : NSImageRep {
  init?(data pictData: NSData)
  @NSCopying var PICTRepresentation: NSData { get }
  var boundingBox: NSRect { get }
  init()
  init?(coder: NSCoder)
}
enum NSPageControllerTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StackHistory
  case StackBook
  case HorizontalStrip
}
class NSPageController : NSViewController, NSAnimatablePropertyContainer, NSCoding {
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged NSPageControllerDelegate?
  var selectedViewController: NSViewController? { get }
  var transitionStyle: NSPageControllerTransitionStyle
  var arrangedObjects: [AnyObject]
  var selectedIndex: Int
  func navigateForwardToObject(object: AnyObject)
  func completeTransition()
  @IBAction func navigateBack(sender: AnyObject?)
  @IBAction func navigateForward(sender: AnyObject?)
  @IBAction func takeSelectedIndexFrom(sender: AnyObject?)
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  func animator() -> Self
  var animations: [String : AnyObject]
  func animationForKey(key: String) -> AnyObject?
  class func defaultAnimationForKey(key: String) -> AnyObject?
}
struct __pcDelegateFlags {
  var delegateRespondsToIdentifierForRepresentedObject: UInt32
  var delegateRespondsToViewControllerForIdentifier: UInt32
  var delegateRespondsToFrameForRepresentedObject: UInt32
  var delegateRespondsToPrepareView: UInt32
  var delegateRespondsToDidTransition: UInt32
  var delegateRespondsToWillLiveTransition: UInt32
  var delegateRespondsToDidLiveTransition: UInt32
  var delegateRespondsToReserved1: UInt32
  var reserved: UInt32
  init()
  init(delegateRespondsToIdentifierForRepresentedObject: UInt32, delegateRespondsToViewControllerForIdentifier: UInt32, delegateRespondsToFrameForRepresentedObject: UInt32, delegateRespondsToPrepareView: UInt32, delegateRespondsToDidTransition: UInt32, delegateRespondsToWillLiveTransition: UInt32, delegateRespondsToDidLiveTransition: UInt32, delegateRespondsToReserved1: UInt32, reserved: UInt32)
}
struct __pcFlags {
  var templateCacheIsInvalid: UInt32
  var private1: UInt32
  var private2: UInt32
  var inSwipeGesture: UInt32
  var reserved: UInt32
  init()
  init(templateCacheIsInvalid: UInt32, private1: UInt32, private2: UInt32, inSwipeGesture: UInt32, reserved: UInt32)
}
protocol NSPageControllerDelegate : NSObjectProtocol {
  optional func pageController(pageController: NSPageController, identifierForObject object: AnyObject) -> String
  optional func pageController(pageController: NSPageController, viewControllerForIdentifier identifier: String) -> NSViewController
  optional func pageController(pageController: NSPageController, frameForObject object: AnyObject) -> NSRect
  optional func pageController(pageController: NSPageController, prepareViewController viewController: NSViewController, withObject object: AnyObject)
  optional func pageController(pageController: NSPageController, didTransitionToObject object: AnyObject)
  optional func pageControllerWillStartLiveTransition(pageController: NSPageController)
  optional func pageControllerDidEndLiveTransition(pageController: NSPageController)
}
class NSPageLayout : NSObject {
  func addAccessoryController(accessoryController: NSViewController)
  func removeAccessoryController(accessoryController: NSViewController)
  var accessoryControllers: [NSViewController] { get }
  func beginSheetWithPrintInfo(printInfo: NSPrintInfo, modalForWindow docWindow: NSWindow, delegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalWithPrintInfo(printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  var printInfo: NSPrintInfo? { get }
  init()
}
extension NSPageLayout {
}
extension NSApplication {
  func runPageLayout(sender: AnyObject?)
}
var NSUtilityWindowMask: Int { get }
var NSDocModalWindowMask: Int { get }
var NSNonactivatingPanelMask: Int { get }
var NSHUDWindowMask: Int { get }
class NSPanel : NSWindow {
  var floatingPanel: Bool
  var becomesKeyOnlyIfNeeded: Bool
  var worksWhenModal: Bool
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
func NSReleaseAlertPanel(panel: AnyObject!)
var NSAlertDefaultReturn: Int { get }
var NSAlertAlternateReturn: Int { get }
var NSAlertOtherReturn: Int { get }
var NSAlertErrorReturn: Int { get }
var NSOKButton: Int { get }
var NSCancelButton: Int { get }
let NSTabColumnTerminatorsAttributeName: String
class NSTextTab : NSObject, NSCopying, NSCoding {
  class func columnTerminatorsForLocale(aLocale: NSLocale?) -> NSCharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NSLineBreakMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
class NSParagraphStyle : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirectionForLanguage(languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  var tabStops: [NSTextTab] { get }
  var defaultTabInterval: CGFloat { get }
  var allowsDefaultTighteningForTruncation: Bool { get }
  var tighteningFactorForTruncation: Float { get }
  var textBlocks: [NSTextBlock] { get }
  var textLists: [NSTextList] { get }
  var headerLevel: Int { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class NSMutableParagraphStyle : NSParagraphStyle {
  var lineSpacing: CGFloat
  var paragraphSpacing: CGFloat
  var alignment: NSTextAlignment
  var firstLineHeadIndent: CGFloat
  var headIndent: CGFloat
  var tailIndent: CGFloat
  var lineBreakMode: NSLineBreakMode
  var minimumLineHeight: CGFloat
  var maximumLineHeight: CGFloat
  var baseWritingDirection: NSWritingDirection
  var lineHeightMultiple: CGFloat
  var paragraphSpacingBefore: CGFloat
  var hyphenationFactor: Float
  var tabStops: [NSTextTab]!
  var defaultTabInterval: CGFloat
  var allowsDefaultTighteningForTruncation: Bool
  func addTabStop(anObject: NSTextTab)
  func removeTabStop(anObject: NSTextTab)
  func setParagraphStyle(obj: NSParagraphStyle)
  var tighteningFactorForTruncation: Float
  var textBlocks: [NSTextBlock]
  var textLists: [NSTextList]
  var headerLevel: Int
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSTextTabType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LeftTabStopType
  case RightTabStopType
  case CenterTabStopType
  case DecimalTabStopType
}
extension NSTextTab {
  convenience init(type: NSTextTabType, location loc: CGFloat)
  var tabStopType: NSTextTabType { get }
}
let NSPasteboardTypeString: String
let NSPasteboardTypePDF: String
let NSPasteboardTypeTIFF: String
let NSPasteboardTypePNG: String
let NSPasteboardTypeRTF: String
let NSPasteboardTypeRTFD: String
let NSPasteboardTypeHTML: String
let NSPasteboardTypeTabularText: String
let NSPasteboardTypeFont: String
let NSPasteboardTypeRuler: String
let NSPasteboardTypeColor: String
let NSPasteboardTypeSound: String
let NSPasteboardTypeMultipleTextSelection: String
let NSPasteboardTypeTextFinderOptions: String
let NSGeneralPboard: String
let NSFontPboard: String
let NSRulerPboard: String
let NSFindPboard: String
let NSDragPboard: String
class NSPasteboard : NSObject {
  class func generalPasteboard() -> NSPasteboard
   init(name: String)
  class func pasteboardWithUniqueName() -> NSPasteboard
  var name: String { get }
  var changeCount: Int { get }
  func releaseGlobally()
  func clearContents() -> Int
  func writeObjects(objects: [NSPasteboardWriting]) -> Bool
  func readObjectsForClasses(classArray: [AnyClass], options: [String : AnyObject]?) -> [AnyObject]?
  var pasteboardItems: [NSPasteboardItem]? { get }
  func indexOfPasteboardItem(pasteboardItem: NSPasteboardItem) -> Int
  func canReadItemWithDataConformingToTypes(types: [String]) -> Bool
  func canReadObjectForClasses(classArray: [AnyClass], options: [String : AnyObject]?) -> Bool
  func declareTypes(newTypes: [String], owner newOwner: AnyObject?) -> Int
  func addTypes(newTypes: [String], owner newOwner: AnyObject?) -> Int
  var types: [String]? { get }
  func availableTypeFromArray(types: [String]) -> String?
  func setData(data: NSData?, forType dataType: String) -> Bool
  func setPropertyList(plist: AnyObject, forType dataType: String) -> Bool
  func setString(string: String, forType dataType: String) -> Bool
  func dataForType(dataType: String) -> NSData?
  func propertyListForType(dataType: String) -> AnyObject?
  func stringForType(dataType: String) -> String?
  init()
}
extension NSPasteboard {
  class func typesFilterableTo(type: String) -> [String]
   init(byFilteringFile filename: String)
   init(byFilteringData data: NSData, ofType type: String)
   init(byFilteringTypesInPasteboard pboard: NSPasteboard)
}
extension NSObject {
  class func pasteboard(sender: NSPasteboard, provideDataForType type: String)
  func pasteboard(sender: NSPasteboard, provideDataForType type: String)
  class func pasteboardChangedOwner(sender: NSPasteboard)
  func pasteboardChangedOwner(sender: NSPasteboard)
}
let NSPasteboardURLReadingFileURLsOnlyKey: String
let NSPasteboardURLReadingContentsConformToTypesKey: String
struct NSPasteboardWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Promised: NSPasteboardWritingOptions { get }
}
protocol NSPasteboardWriting : NSObjectProtocol {
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  optional func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
struct NSPasteboardReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AsData: NSPasteboardReadingOptions { get }
  static var AsString: NSPasteboardReadingOptions { get }
  static var AsPropertyList: NSPasteboardReadingOptions { get }
  static var AsKeyedArchive: NSPasteboardReadingOptions { get }
}
protocol NSPasteboardReading : NSObjectProtocol {
  static func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  optional static func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension NSURL : NSPasteboardWriting, NSPasteboardReading {
   init?(fromPasteboard pasteBoard: NSPasteboard)
  func writeToPasteboard(pasteBoard: NSPasteboard)
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension NSString : NSPasteboardWriting, NSPasteboardReading {
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
let NSStringPboardType: String
let NSFilenamesPboardType: String
let NSTIFFPboardType: String
let NSRTFPboardType: String
let NSTabularTextPboardType: String
let NSFontPboardType: String
let NSRulerPboardType: String
let NSColorPboardType: String
let NSRTFDPboardType: String
let NSHTMLPboardType: String
let NSURLPboardType: String
let NSPDFPboardType: String
let NSMultipleTextSelectionPboardType: String
let NSPostScriptPboardType: String
let NSVCardPboardType: String
let NSInkTextPboardType: String
let NSFilesPromisePboardType: String
let NSPasteboardTypeFindPanelSearchOptions: String
extension NSPasteboard {
  func writeFileContents(filename: String) -> Bool
  func readFileContentsType(type: String?, toFile filename: String) -> String?
  func writeFileWrapper(wrapper: NSFileWrapper) -> Bool
  func readFileWrapper() -> NSFileWrapper?
}
let NSFileContentsPboardType: String
func NSCreateFilenamePboardType(fileType: String) -> String?
func NSCreateFileContentsPboardType(fileType: String) -> String?
func NSGetFileType(pboardType: String) -> String?
func NSGetFileTypes(pboardTypes: [String]) -> [String]?
class NSPasteboardItem : NSObject, NSPasteboardWriting, NSPasteboardReading {
  var types: [String] { get }
  func availableTypeFromArray(types: [String]) -> String?
  func setDataProvider(dataProvider: NSPasteboardItemDataProvider, forTypes types: [AnyObject]) -> Bool
  func setData(data: NSData?, forType type: String) -> Bool
  func setString(string: String?, forType type: String) -> Bool
  func setPropertyList(propertyList: AnyObject?, forType type: String) -> Bool
  func dataForType(type: String) -> NSData?
  func stringForType(type: String) -> String?
  func propertyListForType(type: String) -> AnyObject?
  init()
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
protocol NSPasteboardItemDataProvider : NSObjectProtocol {
  func pasteboard(pasteboard: NSPasteboard?, item: NSPasteboardItem, provideDataForType type: String)
  optional func pasteboardFinishedWithDataProvider(pasteboard: NSPasteboard)
}
enum NSPathStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case PopUp
}
class NSPathCell : NSActionCell, NSOpenSavePanelDelegate {
  var pathStyle: NSPathStyle
  @NSCopying var URL: NSURL?
  func setObjectValue(obj: NSCopying?)
  var allowedTypes: [String]?
  unowned(unsafe) var delegate: @sil_unmanaged NSPathCellDelegate?
  class func pathComponentCellClass() -> AnyClass
  var pathComponentCells: [NSPathComponentCell]
  func rectOfPathComponentCell(cell: NSPathComponentCell, withFrame frame: NSRect, inView view: NSView) -> NSRect
  func pathComponentCellAtPoint(point: NSPoint, withFrame frame: NSRect, inView view: NSView) -> NSPathComponentCell?
  var clickedPathComponentCell: NSPathComponentCell? { get }
  func mouseEntered(event: NSEvent, withFrame frame: NSRect, inView view: NSView)
  func mouseExited(event: NSEvent, withFrame frame: NSRect, inView view: NSView)
  var doubleAction: Selector
  @NSCopying var backgroundColor: NSColor?
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
  func panel(sender: AnyObject, shouldEnableURL url: NSURL) -> Bool
  func panel(sender: AnyObject, validateURL url: NSURL) throws
  func panel(sender: AnyObject, didChangeToDirectoryURL url: NSURL?)
  func panel(sender: AnyObject, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  func panel(sender: AnyObject, willExpand expanding: Bool)
  func panelSelectionDidChange(sender: AnyObject?)
}
protocol NSPathCellDelegate : NSObjectProtocol {
  optional func pathCell(pathCell: NSPathCell, willDisplayOpenPanel openPanel: NSOpenPanel)
  optional func pathCell(pathCell: NSPathCell, willPopUpMenu menu: NSMenu)
}
class NSPathComponentCell : NSTextFieldCell {
  @NSCopying var image: NSImage?
  @NSCopying var URL: NSURL?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSPathControl : NSControl {
  var editable: Bool
  var allowedTypes: [String]?
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @NSCopying var URL: NSURL?
  var doubleAction: Selector
  var pathStyle: NSPathStyle
  var clickedPathItem: NSPathControlItem? { get }
  var pathItems: [NSPathControlItem]
  @NSCopying var backgroundColor: NSColor?
  weak var delegate: @sil_weak NSPathControlDelegate?
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  var menu: NSMenu?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSPathControlDelegate : NSObjectProtocol {
  optional func pathControl(pathControl: NSPathControl, shouldDragItem pathItem: NSPathControlItem, withPasteboard pasteboard: NSPasteboard) -> Bool
  optional func pathControl(pathControl: NSPathControl, shouldDragPathComponentCell pathComponentCell: NSPathComponentCell, withPasteboard pasteboard: NSPasteboard) -> Bool
  optional func pathControl(pathControl: NSPathControl, validateDrop info: NSDraggingInfo) -> NSDragOperation
  optional func pathControl(pathControl: NSPathControl, acceptDrop info: NSDraggingInfo) -> Bool
  optional func pathControl(pathControl: NSPathControl, willDisplayOpenPanel openPanel: NSOpenPanel)
  optional func pathControl(pathControl: NSPathControl, willPopUpMenu menu: NSMenu)
}
extension NSPathControl {
  func clickedPathComponentCell() -> NSPathComponentCell?
  func pathComponentCells() -> [NSPathComponentCell]
  func setPathComponentCells(cells: [NSPathComponentCell])
}
class NSPersistentDocument : NSDocument {
  var managedObjectContext: NSManagedObjectContext?
  var managedObjectModel: NSManagedObjectModel? { get }
  func configurePersistentStoreCoordinatorForURL(url: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [String : AnyObject]?) throws
  func persistentStoreTypeForFileType(fileType: String) -> String
  func writeToURL(absoluteURL: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func readFromURL(absoluteURL: NSURL, ofType typeName: String) throws
  func revertToContentsOfURL(inAbsoluteURL: NSURL, ofType inTypeName: String) throws
  init()
  convenience init(type typeName: String) throws
  convenience init(contentsOfURL url: NSURL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, ofType typeName: String) throws
}
extension NSPersistentDocument {
}
class NSPopUpButton : NSButton {
  init(frame buttonFrame: NSRect, pullsDown flag: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  func addItemWithTitle(title: String)
  func addItemsWithTitles(itemTitles: [String])
  func insertItemWithTitle(title: String, atIndex index: Int)
  func removeItemWithTitle(title: String)
  func removeItemAtIndex(index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOfItem(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(title: String) -> Int
  func indexOfItemWithTag(tag: Int) -> Int
  func indexOfItemWithRepresentedObject(obj: AnyObject?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemAtIndex(index: Int) -> NSMenuItem?
  func itemWithTitle(title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func selectItem(item: NSMenuItem?)
  func selectItemAtIndex(index: Int)
  func selectItemWithTitle(title: String)
  func selectItemWithTag(tag: Int) -> Bool
  func setTitle(aString: String)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAtIndex(index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func selectedTag() -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __pbFlags {
  var needsPullsDownFromTemplate: UInt32
  var RESERVED: UInt32
  init()
  init(needsPullsDownFromTemplate: UInt32, RESERVED: UInt32)
}
let NSPopUpButtonWillPopUpNotification: String
enum NSPopUpArrowPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoArrow
  case ArrowAtCenter
  case ArrowAtBottom
}
class NSPopUpButtonCell : NSMenuItemCell {
  init(textCell stringValue: String, pullsDown pullDown: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  var usesItemFromMenu: Bool
  var altersStateOfSelectedItem: Bool
  func addItemWithTitle(title: String)
  func addItemsWithTitles(itemTitles: [String])
  func insertItemWithTitle(title: String, atIndex index: Int)
  func removeItemWithTitle(title: String)
  func removeItemAtIndex(index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOfItem(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(title: String) -> Int
  func indexOfItemWithTag(tag: Int) -> Int
  func indexOfItemWithRepresentedObject(obj: AnyObject?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemAtIndex(index: Int) -> NSMenuItem?
  func itemWithTitle(title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func selectItem(item: NSMenuItem?)
  func selectItemAtIndex(index: Int)
  func selectItemWithTitle(title: String)
  func selectItemWithTag(tag: Int) -> Bool
  func setTitle(aString: String?)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAtIndex(index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func attachPopUpWithFrame(cellFrame: NSRect, inView controlView: NSView)
  func dismissPopUp()
  func performClickWithFrame(frame: NSRect, inView controlView: NSView)
  var arrowPosition: NSPopUpArrowPosition
  convenience init(textCell aString: String)
  convenience init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __pbcFlags {
  var pullsDown: UInt32
  var preferredEdge: UInt32
  var menuIsAttached: UInt32
  var usesItemFromMenu: UInt32
  var altersStateOfSelectedItem: UInt32
  var decoding: UInt32
  var arrowPosition: UInt32
  var ignoreMenuLayout: UInt32
  var drawing: UInt32
  var menuShouldBeUniquedAgainstMain: UInt32
  var RESERVED: UInt32
  init()
  init(pullsDown: UInt32, preferredEdge: UInt32, menuIsAttached: UInt32, usesItemFromMenu: UInt32, altersStateOfSelectedItem: UInt32, decoding: UInt32, arrowPosition: UInt32, ignoreMenuLayout: UInt32, drawing: UInt32, menuShouldBeUniquedAgainstMain: UInt32, RESERVED: UInt32)
}
let NSPopUpButtonCellWillPopUpNotification: String
enum NSPopoverAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  ///  The popover will use the default, light content appearance.
  case Minimal
  /// The popover will draw with a HUD appearance.
  case HUD
}
enum NSPopoverBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ApplicationDefined
  case Transient
  case Semitransient
}
class NSPopover : NSResponder, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  init()
  init?(coder: NSCoder)
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged NSPopoverDelegate?
  var appearance: NSAppearance?
  var effectiveAppearance: NSAppearance { get }
  var behavior: NSPopoverBehavior
  var animates: Bool
  @IBOutlet var contentViewController: NSViewController?
  var contentSize: NSSize
  var shown: Bool { get }
  /// Returns \c YES if the window is detached to an implicitly created detached window, \c NO otherwise. This method does not apply when the popover is detached to a window returned with \c -detachableWindowForPopover:.
  var detached: Bool { get }
  var positioningRect: NSRect
  func showRelativeToRect(positioningRect: NSRect, ofView positioningView: NSView, preferredEdge: NSRectEdge)
  @IBAction func performClose(sender: AnyObject?)
  func close()
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityRangeForLine(line: Int) -> NSRange
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  func accessibilityRangeForIndex(index: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityPerformCancel() -> Bool
  func accessibilityPerformConfirm() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityPerformDelete() -> Bool
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformPick() -> Bool
  func accessibilityPerformPress() -> Bool
  func accessibilityPerformRaise() -> Bool
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func accessibilityPerformShowMenu() -> Bool
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  func isAccessibilityElement() -> Bool
  func setAccessibilityElement(accessibilityElement: Bool)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  func accessibilityActivationPoint() -> NSPoint
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  func accessibilityTopLevelUIElement() -> AnyObject?
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  func accessibilityURL() -> NSURL?
  func setAccessibilityURL(accessibilityURL: NSURL?)
  func accessibilityValue() -> AnyObject?
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  func accessibilityValueDescription() -> String?
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  func accessibilityVisibleChildren() -> [AnyObject]?
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  func accessibilitySubrole() -> String?
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  func accessibilityTitle() -> String?
  func setAccessibilityTitle(accessibilityTitle: String?)
  func accessibilityTitleUIElement() -> AnyObject?
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  func accessibilityNextContents() -> [AnyObject]?
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  func accessibilityOverflowButton() -> AnyObject?
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  func accessibilityPlaceholderValue() -> String?
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  func accessibilityPreviousContents() -> [AnyObject]?
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  func accessibilityRole() -> String?
  func setAccessibilityRole(accessibilityRole: String?)
  func accessibilityRoleDescription() -> String?
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  func accessibilitySearchButton() -> AnyObject?
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  func accessibilitySearchMenu() -> AnyObject?
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  func isAccessibilitySelected() -> Bool
  func setAccessibilitySelected(accessibilitySelected: Bool)
  func accessibilitySelectedChildren() -> [AnyObject]?
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  func accessibilityShownMenu() -> AnyObject?
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  func accessibilityMinValue() -> AnyObject?
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  func accessibilityMaxValue() -> AnyObject?
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  func accessibilityWindow() -> AnyObject?
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func accessibilityHelp() -> String?
  func setAccessibilityHelp(accessibilityHelp: String?)
  func accessibilityFilename() -> String?
  func setAccessibilityFilename(accessibilityFilename: String?)
  func isAccessibilityExpanded() -> Bool
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  func isAccessibilityEdited() -> Bool
  func setAccessibilityEdited(accessibilityEdited: Bool)
  func isAccessibilityEnabled() -> Bool
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  func accessibilityChildren() -> [AnyObject]?
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  func accessibilityClearButton() -> AnyObject?
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  func accessibilityCancelButton() -> AnyObject?
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  func isAccessibilityProtectedContent() -> Bool
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  func accessibilityContents() -> [AnyObject]?
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  func accessibilityLabel() -> String?
  func setAccessibilityLabel(accessibilityLabel: String?)
  func isAccessibilityAlternateUIVisible() -> Bool
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  func accessibilityMainWindow() -> AnyObject?
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  func isAccessibilityHidden() -> Bool
  func setAccessibilityHidden(accessibilityHidden: Bool)
  func isAccessibilityFrontmost() -> Bool
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  func accessibilityFocusedWindow() -> AnyObject?
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  func accessibilityWindows() -> [AnyObject]?
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  func accessibilityExtrasMenuBar() -> AnyObject?
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  func accessibilityMenuBar() -> AnyObject?
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  func accessibilityColumnTitles() -> [AnyObject]?
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  func isAccessibilityOrderedByRow() -> Bool
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  func accessibilityHorizontalUnitDescription() -> String?
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  func accessibilityVerticalUnitDescription() -> String?
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  func accessibilityHandles() -> [AnyObject]?
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  func accessibilityWarningValue() -> AnyObject?
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  func accessibilityCriticalValue() -> AnyObject?
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  func isAccessibilityDisclosed() -> Bool
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  func accessibilityDisclosedByRow() -> AnyObject?
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  func accessibilityDisclosedRows() -> AnyObject?
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  func accessibilityDisclosureLevel() -> Int
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  func accessibilityMarkerValues() -> AnyObject?
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  func accessibilityUnits() -> NSAccessibilityUnits
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  func accessibilityUnitDescription() -> String?
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  func accessibilityMarkerTypeDescription() -> String?
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  func accessibilityVerticalScrollBar() -> AnyObject?
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  func accessibilityAllowedValues() -> [NSNumber]?
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  func accessibilityLabelUIElements() -> [AnyObject]?
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  func accessibilityLabelValue() -> Float
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  func accessibilitySplitters() -> [AnyObject]?
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  func accessibilityDecrementButton() -> AnyObject?
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  func accessibilityIncrementButton() -> AnyObject?
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  func accessibilityTabs() -> [AnyObject]?
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  func accessibilityHeader() -> AnyObject?
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  func accessibilityColumnCount() -> Int
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  func accessibilityRowCount() -> Int
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  func accessibilityIndex() -> Int
  func setAccessibilityIndex(accessibilityIndex: Int)
  func accessibilityColumns() -> [AnyObject]?
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  func accessibilityRows() -> [AnyObject]?
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  func accessibilityVisibleRows() -> [AnyObject]?
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  func accessibilitySelectedRows() -> [AnyObject]?
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  func accessibilityVisibleColumns() -> [AnyObject]?
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  func accessibilitySelectedColumns() -> [AnyObject]?
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  func accessibilitySelectedCells() -> [AnyObject]?
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  func accessibilityVisibleCells() -> [AnyObject]?
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  func accessibilityRowIndexRange() -> NSRange
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  func accessibilityColumnIndexRange() -> NSRange
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  func accessibilityInsertionPointLineNumber() -> Int
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  func accessibilitySharedCharacterRange() -> NSRange
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  func accessibilityVisibleCharacterRange() -> NSRange
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  func accessibilityNumberOfCharacters() -> Int
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  func accessibilitySelectedText() -> String?
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  func accessibilitySelectedTextRange() -> NSRange
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  func accessibilityToolbarButton() -> AnyObject?
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  func isAccessibilityModal() -> Bool
  func setAccessibilityModal(accessibilityModal: Bool)
  func accessibilityProxy() -> AnyObject?
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  func isAccessibilityMain() -> Bool
  func setAccessibilityMain(accessibilityMain: Bool)
  func accessibilityFullScreenButton() -> AnyObject?
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  func accessibilityGrowArea() -> AnyObject?
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  func accessibilityDocument() -> String?
  func setAccessibilityDocument(accessibilityDocument: String?)
  func accessibilityDefaultButton() -> AnyObject?
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  func accessibilityCloseButton() -> AnyObject?
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  func accessibilityZoomButton() -> AnyObject?
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  func accessibilityMinimizeButton() -> AnyObject?
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  func isAccessibilityMinimized() -> Bool
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
let NSPopoverCloseReasonKey: String
let NSPopoverCloseReasonStandard: String
let NSPopoverCloseReasonDetachToWindow: String
let NSPopoverWillShowNotification: String
let NSPopoverDidShowNotification: String
let NSPopoverWillCloseNotification: String
let NSPopoverDidCloseNotification: String
protocol NSPopoverDelegate : NSObjectProtocol {
  optional func popoverShouldClose(popover: NSPopover) -> Bool
  optional func popoverShouldDetach(popover: NSPopover) -> Bool
  optional func popoverDidDetach(popover: NSPopover)
  optional func detachableWindowForPopover(popover: NSPopover) -> NSWindow?
  optional func popoverWillShow(notification: NSNotification)
  optional func popoverDidShow(notification: NSNotification)
  optional func popoverWillClose(notification: NSNotification)
  optional func popoverDidClose(notification: NSNotification)
}
class NSPredicateEditor : NSRuleEditor {
  var rowTemplates: [NSPredicateEditorRowTemplate]
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class NSPredicateEditorRowTemplate : NSObject, NSCoding, NSCopying {
  func matchForPredicate(predicate: NSPredicate) -> Double
  var templateViews: [NSView] { get }
  func setPredicate(predicate: NSPredicate)
  func predicateWithSubpredicates(subpredicates: [NSPredicate]?) -> NSPredicate
  func displayableSubpredicatesOfPredicate(predicate: NSPredicate) -> [NSPredicate]?
  init(leftExpressions: [NSExpression], rightExpressions: [NSExpression], modifier: NSComparisonPredicateModifier, operators: [NSNumber], options: Int)
  init(leftExpressions: [NSExpression], rightExpressionAttributeType attributeType: NSAttributeType, modifier: NSComparisonPredicateModifier, operators: [NSNumber], options: Int)
  init(compoundTypes: [NSNumber])
  var leftExpressions: [NSExpression]? { get }
  var rightExpressions: [NSExpression]? { get }
  var rightExpressionAttributeType: NSAttributeType { get }
  var modifier: NSComparisonPredicateModifier { get }
  var operators: [NSNumber]? { get }
  var options: Int { get }
  var compoundTypes: [NSNumber]? { get }
  class func templatesWithAttributeKeyPaths(keyPaths: [String], inEntityDescription entityDescription: NSEntityDescription) -> [NSPredicateEditorRowTemplate]
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSPressureConfiguration : NSObject {
  var pressureBehavior: NSPressureBehavior { get }
  init(pressureBehavior: NSPressureBehavior)
  func set()
  convenience init()
}
extension NSView {
  var pressureConfiguration: NSPressureConfiguration?
}
enum NSPaperOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case Landscape
}
enum NSPrintingPaginationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AutoPagination
  case FitPagination
  case ClipPagination
}
let NSPrintSpoolJob: String
let NSPrintPreviewJob: String
let NSPrintSaveJob: String
let NSPrintCancelJob: String
let NSPrintPaperName: String
let NSPrintPaperSize: String
let NSPrintOrientation: String
let NSPrintScalingFactor: String
let NSPrintLeftMargin: String
let NSPrintRightMargin: String
let NSPrintTopMargin: String
let NSPrintBottomMargin: String
let NSPrintHorizontallyCentered: String
let NSPrintVerticallyCentered: String
let NSPrintHorizontalPagination: String
let NSPrintVerticalPagination: String
let NSPrintPrinter: String
let NSPrintCopies: String
let NSPrintAllPages: String
let NSPrintFirstPage: String
let NSPrintLastPage: String
let NSPrintMustCollate: String
let NSPrintReversePageOrder: String
let NSPrintJobDisposition: String
let NSPrintPagesAcross: String
let NSPrintPagesDown: String
let NSPrintTime: String
let NSPrintDetailedErrorReporting: String
let NSPrintFaxNumber: String
let NSPrintPrinterName: String
let NSPrintSelectionOnly: String
let NSPrintJobSavingURL: String
let NSPrintJobSavingFileNameExtensionHidden: String
let NSPrintHeaderAndFooter: String
class NSPrintInfo : NSObject, NSCopying, NSCoding {
  class func setSharedPrintInfo(printInfo: NSPrintInfo)
  class func sharedPrintInfo() -> NSPrintInfo
  init(dictionary attributes: [String : AnyObject])
  func dictionary() -> NSMutableDictionary
  var paperName: String?
  var paperSize: NSSize
  var orientation: NSPaperOrientation
  var scalingFactor: CGFloat
  var leftMargin: CGFloat
  var rightMargin: CGFloat
  var topMargin: CGFloat
  var bottomMargin: CGFloat
  var horizontallyCentered: Bool
  var verticallyCentered: Bool
  var horizontalPagination: NSPrintingPaginationMode
  var verticalPagination: NSPrintingPaginationMode
  var jobDisposition: String
  @NSCopying var printer: NSPrinter
  func setUpPrintOperationDefaultValues()
  var imageablePageBounds: NSRect { get }
  var localizedPaperName: String? { get }
  class func defaultPrinter() -> NSPrinter?
  var printSettings: NSMutableDictionary { get }
  func PMPrintSession() -> UnsafeMutablePointer<Void>
  func PMPageFormat() -> UnsafeMutablePointer<Void>
  func PMPrintSettings() -> UnsafeMutablePointer<Void>
  func updateFromPMPageFormat()
  func updateFromPMPrintSettings()
  var selectionOnly: Bool
  func takeSettingsFromPDFInfo(inPDFInfo: NSPDFInfo)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPrintInfo {
}
enum NSPrintingOrientation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PortraitOrientation
  case LandscapeOrientation
}
enum NSPrintingPageOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DescendingPageOrder
  case SpecialPageOrder
  case AscendingPageOrder
  case UnknownPageOrder
}
enum NSPrintRenderingQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Best
  case Responsive
}
let NSPrintOperationExistsException: String
class NSPrintOperation : NSObject {
   init(view: NSView, printInfo: NSPrintInfo)
  class func PDFOperationWithView(view: NSView, insideRect rect: NSRect, toData data: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func PDFOperationWithView(view: NSView, insideRect rect: NSRect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  class func EPSOperationWithView(view: NSView, insideRect rect: NSRect, toData data: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func EPSOperationWithView(view: NSView, insideRect rect: NSRect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
   init(view: NSView)
  class func PDFOperationWithView(view: NSView, insideRect rect: NSRect, toData data: NSMutableData) -> NSPrintOperation
  class func EPSOperationWithView(view: NSView, insideRect rect: NSRect, toData data: NSMutableData?) -> NSPrintOperation
  class func currentOperation() -> NSPrintOperation?
  class func setCurrentOperation(operation: NSPrintOperation?)
  var copyingOperation: Bool { get }
  var preferredRenderingQuality: NSPrintRenderingQuality { get }
  var jobTitle: String?
  var showsPrintPanel: Bool
  var showsProgressPanel: Bool
  var printPanel: NSPrintPanel
  var PDFPanel: NSPDFPanel
  var canSpawnSeparateThread: Bool
  var pageOrder: NSPrintingPageOrder
  func runOperationModalForWindow(docWindow: NSWindow, delegate: AnyObject?, didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runOperation() -> Bool
  var view: NSView? { get }
  @NSCopying var printInfo: NSPrintInfo
  var context: NSGraphicsContext? { get }
  var pageRange: NSRange { get }
  var currentPage: Int { get }
  func createContext() -> NSGraphicsContext?
  func destroyContext()
  func deliverResult() -> Bool
  func cleanUpOperation()
  init()
}
extension NSPrintOperation {
}
struct NSPrintPanelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ShowsCopies: NSPrintPanelOptions { get }
  static var ShowsPageRange: NSPrintPanelOptions { get }
  static var ShowsPaperSize: NSPrintPanelOptions { get }
  static var ShowsOrientation: NSPrintPanelOptions { get }
  static var ShowsScaling: NSPrintPanelOptions { get }
  static var ShowsPrintSelection: NSPrintPanelOptions { get }
  static var ShowsPageSetupAccessory: NSPrintPanelOptions { get }
  static var ShowsPreview: NSPrintPanelOptions { get }
}
let NSPrintPhotoJobStyleHint: String
let NSPrintAllPresetsJobStyleHint: String
let NSPrintNoPresetsJobStyleHint: String
let NSPrintPanelAccessorySummaryItemNameKey: String
let NSPrintPanelAccessorySummaryItemDescriptionKey: String
protocol NSPrintPanelAccessorizing {
  func localizedSummaryItems() -> [[String : String]]
  optional func keyPathsForValuesAffectingPreview() -> Set<String>
}
class NSPrintPanel : NSObject {
  func addAccessoryController(accessoryController: NSViewController)
  func removeAccessoryController(accessoryController: NSViewController)
  var accessoryControllers: [NSViewController] { get }
  var options: NSPrintPanelOptions
  func setDefaultButtonTitle(defaultButtonTitle: String?)
  func defaultButtonTitle() -> String?
  var helpAnchor: String?
  var jobStyleHint: String?
  func beginSheetWithPrintInfo(printInfo: NSPrintInfo, modalForWindow docWindow: NSWindow, delegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalWithPrintInfo(printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  var printInfo: NSPrintInfo { get }
  init()
}
extension NSPrintPanel {
}
enum NSPrinterTableStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OK
  case NotFound
  case Error
}
class NSPrinter : NSObject, NSCopying, NSCoding {
  class func printerNames() -> [String]
  class func printerTypes() -> [String]
   init?(name: String)
   init?(type: String)
  var name: String { get }
  var type: String { get }
  var languageLevel: Int { get }
  func pageSizeForPaper(paperName: String) -> NSSize
  var deviceDescription: [String : AnyObject] { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPrinter {
}
enum NSProgressIndicatorThickness : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PreferredThickness
  case PreferredSmallThickness
  case PreferredLargeThickness
  case PreferredAquaThickness
}
enum NSProgressIndicatorStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BarStyle
  case SpinningStyle
}
class NSProgressIndicator : NSView, NSAccessibilityProgressIndicator {
  var indeterminate: Bool
  var bezeled: Bool
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  var doubleValue: Double
  func incrementBy(delta: Double)
  var minValue: Double
  var maxValue: Double
  var usesThreadedAnimation: Bool
  func startAnimation(sender: AnyObject?)
  func stopAnimation(sender: AnyObject?)
  var style: NSProgressIndicatorStyle
  func sizeToFit()
  var displayedWhenStopped: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityValue() -> NSNumber?
}
struct __progressIndicatorFlags {
  var isSpinning: UInt32
  var isVector: UInt32
  var isLocked: UInt32
  var controlTint: UInt32
  var controlSize: UInt32
  var style: UInt32
  var _delayedStartup: UInt32
  var hideWhenStopped: UInt32
  var revive: UInt32
  var _temporarilyBlockHeartBeating: UInt32
  var _isHidden: UInt32
  var _isHeartBeatInstalled: UInt32
  var _customRenderer: UInt32
  var _lastFrame: UInt32
  var _isDetaching: UInt32
  var RESERVED: UInt32
  init()
  init(isSpinning: UInt32, isVector: UInt32, isLocked: UInt32, controlTint: UInt32, controlSize: UInt32, style: UInt32, _delayedStartup: UInt32, hideWhenStopped: UInt32, revive: UInt32, _temporarilyBlockHeartBeating: UInt32, _isHidden: UInt32, _isHeartBeatInstalled: UInt32, _customRenderer: UInt32, _lastFrame: UInt32, _isDetaching: UInt32, RESERVED: UInt32)
}
extension NSProgressIndicator {
}
class NSResponder : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  unowned(unsafe) var nextResponder: @sil_unmanaged NSResponder?
  func tryToPerform(anAction: Selector, with anObject: AnyObject?) -> Bool
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func mouseDown(theEvent: NSEvent)
  func rightMouseDown(theEvent: NSEvent)
  func otherMouseDown(theEvent: NSEvent)
  func mouseUp(theEvent: NSEvent)
  func rightMouseUp(theEvent: NSEvent)
  func otherMouseUp(theEvent: NSEvent)
  func mouseMoved(theEvent: NSEvent)
  func mouseDragged(theEvent: NSEvent)
  func scrollWheel(theEvent: NSEvent)
  func rightMouseDragged(theEvent: NSEvent)
  func otherMouseDragged(theEvent: NSEvent)
  func mouseEntered(theEvent: NSEvent)
  func mouseExited(theEvent: NSEvent)
  func keyDown(theEvent: NSEvent)
  func keyUp(theEvent: NSEvent)
  func flagsChanged(theEvent: NSEvent)
  func tabletPoint(theEvent: NSEvent)
  func tabletProximity(theEvent: NSEvent)
  func cursorUpdate(event: NSEvent)
  func magnifyWithEvent(event: NSEvent)
  func rotateWithEvent(event: NSEvent)
  func swipeWithEvent(event: NSEvent)
  func beginGestureWithEvent(event: NSEvent)
  func endGestureWithEvent(event: NSEvent)
  func smartMagnifyWithEvent(event: NSEvent)
  func touchesBeganWithEvent(event: NSEvent)
  func touchesMovedWithEvent(event: NSEvent)
  func touchesEndedWithEvent(event: NSEvent)
  func touchesCancelledWithEvent(event: NSEvent)
  func quickLookWithEvent(event: NSEvent)
  func pressureChangeWithEvent(event: NSEvent)
  func noResponderFor(eventSelector: Selector)
  var acceptsFirstResponder: Bool { get }
  func becomeFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func interpretKeyEvents(eventArray: [NSEvent])
  func flushBufferedKeyEvents()
  var menu: NSMenu?
  func showContextHelp(sender: AnyObject?)
  func helpRequested(eventPtr: NSEvent)
  func shouldBeTreatedAsInkEvent(theEvent: NSEvent) -> Bool
  func wantsScrollEventsForSwipeTrackingOnAxis(axis: NSEventGestureAxis) -> Bool
  func wantsForwardedScrollEventsForAxis(axis: NSEventGestureAxis) -> Bool
  func supplementalTargetForAction(action: Selector, sender: AnyObject?) -> AnyObject?
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSResponder {
  func insertText(insertString: AnyObject)
  func doCommandBySelector(aSelector: Selector)
  func moveForward(sender: AnyObject?)
  func moveRight(sender: AnyObject?)
  func moveBackward(sender: AnyObject?)
  func moveLeft(sender: AnyObject?)
  func moveUp(sender: AnyObject?)
  func moveDown(sender: AnyObject?)
  func moveWordForward(sender: AnyObject?)
  func moveWordBackward(sender: AnyObject?)
  func moveToBeginningOfLine(sender: AnyObject?)
  func moveToEndOfLine(sender: AnyObject?)
  func moveToBeginningOfParagraph(sender: AnyObject?)
  func moveToEndOfParagraph(sender: AnyObject?)
  func moveToEndOfDocument(sender: AnyObject?)
  func moveToBeginningOfDocument(sender: AnyObject?)
  func pageDown(sender: AnyObject?)
  func pageUp(sender: AnyObject?)
  func centerSelectionInVisibleArea(sender: AnyObject?)
  func moveBackwardAndModifySelection(sender: AnyObject?)
  func moveForwardAndModifySelection(sender: AnyObject?)
  func moveWordForwardAndModifySelection(sender: AnyObject?)
  func moveWordBackwardAndModifySelection(sender: AnyObject?)
  func moveUpAndModifySelection(sender: AnyObject?)
  func moveDownAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfLineAndModifySelection(sender: AnyObject?)
  func moveToEndOfLineAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfParagraphAndModifySelection(sender: AnyObject?)
  func moveToEndOfParagraphAndModifySelection(sender: AnyObject?)
  func moveToEndOfDocumentAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfDocumentAndModifySelection(sender: AnyObject?)
  func pageDownAndModifySelection(sender: AnyObject?)
  func pageUpAndModifySelection(sender: AnyObject?)
  func moveParagraphForwardAndModifySelection(sender: AnyObject?)
  func moveParagraphBackwardAndModifySelection(sender: AnyObject?)
  func moveWordRight(sender: AnyObject?)
  func moveWordLeft(sender: AnyObject?)
  func moveRightAndModifySelection(sender: AnyObject?)
  func moveLeftAndModifySelection(sender: AnyObject?)
  func moveWordRightAndModifySelection(sender: AnyObject?)
  func moveWordLeftAndModifySelection(sender: AnyObject?)
  func moveToLeftEndOfLine(sender: AnyObject?)
  func moveToRightEndOfLine(sender: AnyObject?)
  func moveToLeftEndOfLineAndModifySelection(sender: AnyObject?)
  func moveToRightEndOfLineAndModifySelection(sender: AnyObject?)
  func scrollPageUp(sender: AnyObject?)
  func scrollPageDown(sender: AnyObject?)
  func scrollLineUp(sender: AnyObject?)
  func scrollLineDown(sender: AnyObject?)
  func scrollToBeginningOfDocument(sender: AnyObject?)
  func scrollToEndOfDocument(sender: AnyObject?)
  func transpose(sender: AnyObject?)
  func transposeWords(sender: AnyObject?)
  func selectAll(sender: AnyObject?)
  func selectParagraph(sender: AnyObject?)
  func selectLine(sender: AnyObject?)
  func selectWord(sender: AnyObject?)
  func indent(sender: AnyObject?)
  func insertTab(sender: AnyObject?)
  func insertBacktab(sender: AnyObject?)
  func insertNewline(sender: AnyObject?)
  func insertParagraphSeparator(sender: AnyObject?)
  func insertNewlineIgnoringFieldEditor(sender: AnyObject?)
  func insertTabIgnoringFieldEditor(sender: AnyObject?)
  func insertLineBreak(sender: AnyObject?)
  func insertContainerBreak(sender: AnyObject?)
  func insertSingleQuoteIgnoringSubstitution(sender: AnyObject?)
  func insertDoubleQuoteIgnoringSubstitution(sender: AnyObject?)
  func changeCaseOfLetter(sender: AnyObject?)
  func uppercaseWord(sender: AnyObject?)
  func lowercaseWord(sender: AnyObject?)
  func capitalizeWord(sender: AnyObject?)
  func deleteForward(sender: AnyObject?)
  func deleteBackward(sender: AnyObject?)
  func deleteBackwardByDecomposingPreviousCharacter(sender: AnyObject?)
  func deleteWordForward(sender: AnyObject?)
  func deleteWordBackward(sender: AnyObject?)
  func deleteToBeginningOfLine(sender: AnyObject?)
  func deleteToEndOfLine(sender: AnyObject?)
  func deleteToBeginningOfParagraph(sender: AnyObject?)
  func deleteToEndOfParagraph(sender: AnyObject?)
  func yank(sender: AnyObject?)
  func complete(sender: AnyObject?)
  func setMark(sender: AnyObject?)
  func deleteToMark(sender: AnyObject?)
  func selectToMark(sender: AnyObject?)
  func swapWithMark(sender: AnyObject?)
  func cancelOperation(sender: AnyObject?)
  func makeBaseWritingDirectionNatural(sender: AnyObject?)
  func makeBaseWritingDirectionLeftToRight(sender: AnyObject?)
  func makeBaseWritingDirectionRightToLeft(sender: AnyObject?)
  func makeTextWritingDirectionNatural(sender: AnyObject?)
  func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  func quickLookPreviewItems(sender: AnyObject?)
}
extension NSResponder {
  var undoManager: NSUndoManager? { get }
}
extension NSResponder {
  func validateProposedFirstResponder(responder: NSResponder, forEvent event: NSEvent?) -> Bool
}
extension NSResponder {
  func presentError(error: NSError, modalForWindow window: NSWindow, delegate: AnyObject?, didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: NSError) -> Bool
  func willPresentError(error: NSError) -> NSError
}
extension NSResponder {
  func performTextFinderAction(sender: AnyObject?)
}
extension NSResponder {
}
enum NSRuleEditorNestingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Single
  case List
  case Compound
  case Simple
}
enum NSRuleEditorRowType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Simple
  case Compound
}
class NSRuleEditor : NSControl {
  unowned(unsafe) var delegate: @sil_unmanaged NSRuleEditorDelegate?
  var formattingStringsFilename: String?
  var formattingDictionary: [String : String]?
  func reloadCriteria()
  var nestingMode: NSRuleEditorNestingMode
  var rowHeight: CGFloat
  var editable: Bool
  var canRemoveAllRows: Bool
  var predicate: NSPredicate? { get }
  func reloadPredicate()
  func predicateForRow(row: Int) -> NSPredicate?
  var numberOfRows: Int { get }
  func subrowIndexesForRow(rowIndex: Int) -> NSIndexSet
  func criteriaForRow(row: Int) -> [AnyObject]
  func displayValuesForRow(row: Int) -> [AnyObject]
  func rowForDisplayValue(displayValue: AnyObject) -> Int
  func rowTypeForRow(rowIndex: Int) -> NSRuleEditorRowType
  func parentRowForRow(rowIndex: Int) -> Int
  func addRow(sender: AnyObject?)
  func insertRowAtIndex(rowIndex: Int, withType rowType: NSRuleEditorRowType, asSubrowOfRow parentRow: Int, animate shouldAnimate: Bool)
  func setCriteria(criteria: [AnyObject], andDisplayValues values: [AnyObject], forRowAtIndex rowIndex: Int)
  func removeRowAtIndex(rowIndex: Int)
  func removeRowsAtIndexes(rowIndexes: NSIndexSet, includeSubrows: Bool)
  @NSCopying var selectedRowIndexes: NSIndexSet { get }
  func selectRowIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  var rowClass: AnyClass
  var rowTypeKeyPath: String
  var subrowsKeyPath: String
  var criteriaKeyPath: String
  var displayValuesKeyPath: String
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSRuleEditorDelegate : NSObjectProtocol {
  func ruleEditor(editor: NSRuleEditor, numberOfChildrenForCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> Int
  func ruleEditor(editor: NSRuleEditor, child index: Int, forCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> AnyObject
  func ruleEditor(editor: NSRuleEditor, displayValueForCriterion criterion: AnyObject, inRow row: Int) -> AnyObject
  optional func ruleEditor(editor: NSRuleEditor, predicatePartsForCriterion criterion: AnyObject, withDisplayValue value: AnyObject, inRow row: Int) -> [String : AnyObject]?
  optional func ruleEditorRowsDidChange(notification: NSNotification)
}
let NSRuleEditorPredicateLeftExpression: String
let NSRuleEditorPredicateRightExpression: String
let NSRuleEditorPredicateComparisonModifier: String
let NSRuleEditorPredicateOptions: String
let NSRuleEditorPredicateOperatorType: String
let NSRuleEditorPredicateCustomSelector: String
let NSRuleEditorPredicateCompoundType: String
let NSRuleEditorRowsDidChangeNotification: String
class NSRulerMarker : NSObject, NSCopying, NSCoding {
  init(rulerView ruler: NSRulerView, markerLocation location: CGFloat, image: NSImage, imageOrigin: NSPoint)
  unowned(unsafe) var ruler: @sil_unmanaged NSRulerView { get }
  var markerLocation: CGFloat
  var image: NSImage
  var imageOrigin: NSPoint
  var movable: Bool
  var removable: Bool
  var dragging: Bool { get }
  var representedObject: NSCopying?
  var imageRectInRuler: NSRect { get }
  var thicknessRequiredInRuler: CGFloat { get }
  func drawRect(rect: NSRect)
  func trackMouse(mouseDownEvent: NSEvent, adding isAdding: Bool) -> Bool
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __rFlags {
  var movable: UInt32
  var removable: UInt32
  var dragging: UInt32
  var pinned: UInt32
  var _reserved: UInt32
  init()
  init(movable: UInt32, removable: UInt32, dragging: UInt32, pinned: UInt32, _reserved: UInt32)
}
enum NSRulerOrientation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case HorizontalRuler
  case VerticalRuler
}
class NSRulerView : NSView {
  class func registerUnitWithName(unitName: String, abbreviation: String, unitToPointsConversionFactor conversionFactor: CGFloat, stepUpCycle: [NSNumber], stepDownCycle: [NSNumber])
  init(scrollView: NSScrollView?, orientation: NSRulerOrientation)
  unowned(unsafe) var scrollView: @sil_unmanaged NSScrollView?
  var orientation: NSRulerOrientation
  var baselineLocation: CGFloat { get }
  var requiredThickness: CGFloat { get }
  var ruleThickness: CGFloat
  var reservedThicknessForMarkers: CGFloat
  var reservedThicknessForAccessoryView: CGFloat
  var measurementUnits: String
  var originOffset: CGFloat
  unowned(unsafe) var clientView: @sil_unmanaged NSView?
  func addMarker(marker: NSRulerMarker)
  func removeMarker(marker: NSRulerMarker)
  var markers: [NSRulerMarker]?
  func trackMarker(marker: NSRulerMarker, withMouseEvent event: NSEvent) -> Bool
  var accessoryView: NSView?
  func moveRulerlineFromLocation(oldLocation: CGFloat, toLocation newLocation: CGFloat)
  func invalidateHashMarks()
  func drawHashMarksAndLabelsInRect(rect: NSRect)
  func drawMarkersInRect(rect: NSRect)
  var flipped: Bool { get }
  convenience init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSView {
  func rulerView(ruler: NSRulerView, shouldMoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willMoveMarker marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, didMoveMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldRemoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, didRemoveMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldAddMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willAddMarker marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, didAddMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, handleMouseDown event: NSEvent)
  func rulerView(ruler: NSRulerView, willSetClientView newClient: NSView)
  func rulerView(ruler: NSRulerView, locationForPoint aPoint: NSPoint) -> CGFloat
  func rulerView(ruler: NSRulerView, pointForLocation aPoint: CGFloat) -> NSPoint
}
struct NSApplicationActivationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ActivateAllWindows: NSApplicationActivationOptions { get }
  static var ActivateIgnoringOtherApps: NSApplicationActivationOptions { get }
}
enum NSApplicationActivationPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Regular
  case Accessory
  case Prohibited
}
class NSRunningApplication : NSObject {
  var terminated: Bool { get }
  var finishedLaunching: Bool { get }
  var hidden: Bool { get }
  var active: Bool { get }
  var ownsMenuBar: Bool { get }
  var activationPolicy: NSApplicationActivationPolicy { get }
  var localizedName: String? { get }
  var bundleIdentifier: String? { get }
  @NSCopying var bundleURL: NSURL? { get }
  @NSCopying var executableURL: NSURL? { get }
  var processIdentifier: pid_t { get }
  @NSCopying var launchDate: NSDate? { get }
  var icon: NSImage? { get }
  var executableArchitecture: Int { get }
  func hide() -> Bool
  func unhide() -> Bool
  func activateWithOptions(options: NSApplicationActivationOptions) -> Bool
  func terminate() -> Bool
  func forceTerminate() -> Bool
  class func runningApplicationsWithBundleIdentifier(bundleIdentifier: String) -> [NSRunningApplication]
  convenience init?(processIdentifier pid: pid_t)
  class func currentApplication() -> Self
  class func terminateAutomaticallyTerminableApplications()
  init()
}
extension NSWorkspace {
  var runningApplications: [NSRunningApplication] { get }
}
var NSFileHandlingPanelCancelButton: Int { get }
var NSFileHandlingPanelOKButton: Int { get }
struct __SPFlags {
  var saveMode: UInt32
  var isExpanded: UInt32
  var allowsOtherFileTypes: UInt32
  var canCreateDirectories: UInt32
  var canSelectedHiddenExtension: UInt32
  var reserved2: UInt32
  var delegate_shouldShowFilename: UInt32
  var delegate_compareFilename: UInt32
  var delegate_shouldEnableURL: UInt32
  var delegate_validateURL: UInt32
  var delegate_didChangeToDirectoryURL: UInt32
  var changingFrameSize: UInt32
  var movingAccessoryView: UInt32
  var userAccessoryViewFrameChange: UInt32
  var canChooseDirectories: UInt32
  var canChooseFiles: UInt32
  var delegate_selectionDidChange: UInt32
  var delegate_didChangeToDirectory: UInt32
  var calledWindowOrderedIn: UInt32
  var appCentric: UInt32
  var bottomControlsDisabled: UInt32
  var okButtonDisabled: UInt32
  var accessoryViewDisclosed: UInt32
  var delegate_isValidFilename: UInt32
  var delegate_userEnteredFilename: UInt32
  var delegate_panel_willExpand: UInt32
  var canResolveUbiquitousConflicts: UInt32
  var reserved: UInt32
  init()
  init(saveMode: UInt32, isExpanded: UInt32, allowsOtherFileTypes: UInt32, canCreateDirectories: UInt32, canSelectedHiddenExtension: UInt32, reserved2: UInt32, delegate_shouldShowFilename: UInt32, delegate_compareFilename: UInt32, delegate_shouldEnableURL: UInt32, delegate_validateURL: UInt32, delegate_didChangeToDirectoryURL: UInt32, changingFrameSize: UInt32, movingAccessoryView: UInt32, userAccessoryViewFrameChange: UInt32, canChooseDirectories: UInt32, canChooseFiles: UInt32, delegate_selectionDidChange: UInt32, delegate_didChangeToDirectory: UInt32, calledWindowOrderedIn: UInt32, appCentric: UInt32, bottomControlsDisabled: UInt32, okButtonDisabled: UInt32, accessoryViewDisclosed: UInt32, delegate_isValidFilename: UInt32, delegate_userEnteredFilename: UInt32, delegate_panel_willExpand: UInt32, canResolveUbiquitousConflicts: UInt32, reserved: UInt32)
}
typealias _SPFlags = __SPFlags
class NSSavePanel : NSPanel {
  @NSCopying var URL: NSURL? { get }
  @NSCopying var directoryURL: NSURL?
  var allowedFileTypes: [String]?
  var allowsOtherFileTypes: Bool
  var accessoryView: NSView?
  unowned(unsafe) var delegate: @sil_unmanaged NSOpenSavePanelDelegate?
  var expanded: Bool { get }
  var canCreateDirectories: Bool
  var canSelectHiddenExtension: Bool
  var extensionHidden: Bool
  var treatsFilePackagesAsDirectories: Bool
  var prompt: String!
  var title: String!
  var nameFieldLabel: String!
  var nameFieldStringValue: String
  var message: String!
  func validateVisibleColumns()
  var showsHiddenFiles: Bool
  var showsTagField: Bool
  var tagNames: [String]?
  @IBAction func ok(sender: AnyObject?)
  @IBAction func cancel(sender: AnyObject?)
  func beginSheetModalForWindow(window: NSWindow, completionHandler handler: (Int) -> Void)
  func beginWithCompletionHandler(handler: (Int) -> Void)
  func runModal() -> Int
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
protocol NSOpenSavePanelDelegate : NSObjectProtocol {
  optional func panel(sender: AnyObject, shouldEnableURL url: NSURL) -> Bool
  optional func panel(sender: AnyObject, validateURL url: NSURL) throws
  optional func panel(sender: AnyObject, didChangeToDirectoryURL url: NSURL?)
  optional func panel(sender: AnyObject, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  optional func panel(sender: AnyObject, willExpand expanding: Bool)
  optional func panelSelectionDidChange(sender: AnyObject?)
}
extension NSObject {
}
extension NSSavePanel {
}
class NSScreen : NSObject {
  class func screens() -> [NSScreen]?
  class func mainScreen() -> NSScreen?
  class func deepestScreen() -> NSScreen?
  class func screensHaveSeparateSpaces() -> Bool
  var depth: NSWindowDepth { get }
  var frame: NSRect { get }
  var visibleFrame: NSRect { get }
  var deviceDescription: [String : AnyObject] { get }
  var colorSpace: NSColorSpace? { get }
  var supportedWindowDepths: UnsafePointer<NSWindowDepth> { get }
  func convertRectToBacking(aRect: NSRect) -> NSRect
  func convertRectFromBacking(aRect: NSRect) -> NSRect
  func backingAlignedRect(aRect: NSRect, options: NSAlignmentOptions) -> NSRect
  var backingScaleFactor: CGFloat { get }
  init()
}
let NSScreenColorSpaceDidChangeNotification: String
extension NSScreen {
  var maximumExtendedDynamicRangeColorComponentValue: CGFloat { get }
}
extension NSScreen {
}
enum NSScrollElasticity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case None
  case Allowed
}
struct __SFlags {
  var RESERVED: UInt32
  var unarchiving: UInt32
  var registeredForWindowWillClose: UInt32
  var findBarPosition: UInt32
  var predominantAxisScrolling: UInt32
  var hContentElasticity: UInt32
  var vContentElasticity: UInt32
  var unused: UInt32
  var findBarVisible: UInt32
  var autoforwardsScrollWheelEvents: UInt32
  var autohidesScrollers: UInt32
  var hasCustomLineBorderColor: UInt32
  var focusRingNeedsRedisplay: UInt32
  var skipRemoveSuperviewCheck: UInt32
  var doesNotDrawBackground: UInt32
  var needsTile: UInt32
  var hasVerticalRuler: UInt32
  var hasHorizontalRuler: UInt32
  var showRulers: UInt32
  var oldRulerInstalled: UInt32
  var borderType: NSBorderType
  var noDynamicScrolling: UInt32
  var hScrollerStatus: UInt32
  var vScrollerStatus: UInt32
  var hScrollerRequired: UInt32
  var vScrollerRequired: UInt32
  init()
  init(RESERVED: UInt32, unarchiving: UInt32, registeredForWindowWillClose: UInt32, findBarPosition: UInt32, predominantAxisScrolling: UInt32, hContentElasticity: UInt32, vContentElasticity: UInt32, unused: UInt32, findBarVisible: UInt32, autoforwardsScrollWheelEvents: UInt32, autohidesScrollers: UInt32, hasCustomLineBorderColor: UInt32, focusRingNeedsRedisplay: UInt32, skipRemoveSuperviewCheck: UInt32, doesNotDrawBackground: UInt32, needsTile: UInt32, hasVerticalRuler: UInt32, hasHorizontalRuler: UInt32, showRulers: UInt32, oldRulerInstalled: UInt32, borderType: NSBorderType, noDynamicScrolling: UInt32, hScrollerStatus: UInt32, vScrollerStatus: UInt32, hScrollerRequired: UInt32, vScrollerRequired: UInt32)
}
typealias _SFlags = __SFlags
class NSScrollView : NSView, NSTextFinderBarContainer {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  class func frameSizeForContentSize(cSize: NSSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType aType: NSBorderType, controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> NSSize
  class func contentSizeForFrameSize(fSize: NSSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType aType: NSBorderType, controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> NSSize
  var documentVisibleRect: NSRect { get }
  var contentSize: NSSize { get }
  unowned(unsafe) var documentView: @sil_unmanaged AnyObject?
  var contentView: NSClipView
  var documentCursor: NSCursor?
  var borderType: NSBorderType
  @NSCopying var backgroundColor: NSColor
  var drawsBackground: Bool
  var hasVerticalScroller: Bool
  var hasHorizontalScroller: Bool
  var verticalScroller: NSScroller?
  var horizontalScroller: NSScroller?
  var autohidesScrollers: Bool
  var horizontalLineScroll: CGFloat
  var verticalLineScroll: CGFloat
  var lineScroll: CGFloat
  var horizontalPageScroll: CGFloat
  var verticalPageScroll: CGFloat
  var pageScroll: CGFloat
  var scrollsDynamically: Bool
  func tile()
  func reflectScrolledClipView(cView: NSClipView)
  func scrollWheel(theEvent: NSEvent)
  var scrollerStyle: NSScrollerStyle
  var scrollerKnobStyle: NSScrollerKnobStyle
  func flashScrollers()
  var horizontalScrollElasticity: NSScrollElasticity
  var verticalScrollElasticity: NSScrollElasticity
  var usesPredominantAxisScrolling: Bool
  var allowsMagnification: Bool
  var magnification: CGFloat
  var maxMagnification: CGFloat
  var minMagnification: CGFloat
  func magnifyToFitRect(rect: NSRect)
  func setMagnification(magnification: CGFloat, centeredAtPoint point: NSPoint)
  func addFloatingSubview(view: NSView, forAxis axis: NSEventGestureAxis)
  var automaticallyAdjustsContentInsets: Bool
  var contentInsets: NSEdgeInsets
  var scrollerInsets: NSEdgeInsets
  convenience init()
  var findBarView: NSView?
  var findBarVisible: Bool
  func findBarViewDidChangeHeight()
}
let NSScrollViewWillStartLiveMagnifyNotification: String
let NSScrollViewDidEndLiveMagnifyNotification: String
let NSScrollViewWillStartLiveScrollNotification: String
let NSScrollViewDidLiveScrollNotification: String
let NSScrollViewDidEndLiveScrollNotification: String
extension NSScrollView {
  class func setRulerViewClass(rulerViewClass: AnyClass?)
  class func rulerViewClass() -> AnyClass
  var rulersVisible: Bool
  var hasHorizontalRuler: Bool
  var hasVerticalRuler: Bool
  var horizontalRulerView: NSRulerView?
  var verticalRulerView: NSRulerView?
}
enum NSScrollViewFindBarPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AboveHorizontalRuler
  case AboveContent
  case BelowContent
}
extension NSScrollView {
  var findBarPosition: NSScrollViewFindBarPosition
}
enum NSScrollArrowPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ScrollerArrowsMaxEnd
  case ScrollerArrowsMinEnd
  static var ScrollerArrowsDefaultSetting: NSScrollArrowPosition { get }
  case ScrollerArrowsNone
}
enum NSUsableScrollerParts : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoScrollerParts
  case OnlyScrollerArrows
  case AllScrollerParts
}
enum NSScrollerPart : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoPart
  case DecrementPage
  case Knob
  case IncrementPage
  case DecrementLine
  case IncrementLine
  case KnobSlot
}
enum NSScrollerArrow : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IncrementArrow
  case DecrementArrow
}
enum NSScrollerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Legacy
  case Overlay
}
enum NSScrollerKnobStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Dark
  case Light
}
class NSScroller : NSControl {
  class func isCompatibleWithOverlayScrollers() -> Bool
  class func scrollerWidthForControlSize(controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> CGFloat
  class func preferredScrollerStyle() -> NSScrollerStyle
  var scrollerStyle: NSScrollerStyle
  var knobStyle: NSScrollerKnobStyle
  func rectForPart(partCode: NSScrollerPart) -> NSRect
  func checkSpaceForParts()
  var usableParts: NSUsableScrollerParts { get }
  var arrowsPosition: NSScrollArrowPosition
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  func drawArrow(whichArrow: NSScrollerArrow, highlight flag: Bool)
  func drawKnob()
  func drawKnobSlotInRect(slotRect: NSRect, highlight flag: Bool)
  func highlight(flag: Bool)
  func testPart(thePoint: NSPoint) -> NSScrollerPart
  func trackKnob(theEvent: NSEvent)
  func trackScrollButtons(theEvent: NSEvent)
  var hitPart: NSScrollerPart { get }
  var knobProportion: CGFloat
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __sFlags2 {
  var hitPart: UInt32
  var controlSize: UInt32
  var inMaxEnd: UInt32
  var setFloatValueOverridden: UInt32
  var setFloatValueKnobProportionOverridden: UInt32
  var style: UInt32
  var styleCompatibility: UInt32
  var overlayScrollerState: UInt32
  var knobStyle: UInt32
  var sbPaused: UInt32
  var isAnimatingKnob: UInt32
  var isTrackingMouse: UInt32
  var reserved: UInt32
  init()
  init(hitPart: UInt32, controlSize: UInt32, inMaxEnd: UInt32, setFloatValueOverridden: UInt32, setFloatValueKnobProportionOverridden: UInt32, style: UInt32, styleCompatibility: UInt32, overlayScrollerState: UInt32, knobStyle: UInt32, sbPaused: UInt32, isAnimatingKnob: UInt32, isTrackingMouse: UInt32, reserved: UInt32)
}
struct _sFlags {
  var isHoriz: UInt32
  var arrowsLoc: NSScrollArrowPosition
  var partsUsable: NSUsableScrollerParts
  var fine: UInt32
  var needsEnableFlush: UInt32
  var thumbing: UInt32
  var slotDrawn: UInt32
  var knobDrawn: UInt32
  var lit: UInt32
  var knobLit: UInt32
  var reserved: UInt32
  var controlTint: UInt32
  var repeatCount: UInt32
  init()
  init(isHoriz: UInt32, arrowsLoc: NSScrollArrowPosition, partsUsable: NSUsableScrollerParts, fine: UInt32, needsEnableFlush: UInt32, thumbing: UInt32, slotDrawn: UInt32, knobDrawn: UInt32, lit: UInt32, knobLit: UInt32, reserved: UInt32, controlTint: UInt32, repeatCount: UInt32)
}
extension NSScroller {
}
let NSPreferredScrollerStyleDidChangeNotification: String
protocol NSSearchFieldDelegate : NSTextFieldDelegate {
  optional func searchFieldDidStartSearching(sender: NSSearchField)
  optional func searchFieldDidEndSearching(sender: NSSearchField)
}
class NSSearchField : NSTextField {
  func rectForSearchTextWhenCentered(isCentered: Bool) -> NSRect
  func rectForSearchButtonWhenCentered(isCentered: Bool) -> NSRect
  func rectForCancelButtonWhenCentered(isCentered: Bool) -> NSRect
  var recentSearches: [String]
  var recentsAutosaveName: String?
  var searchMenuTemplate: NSMenu?
  var sendsWholeSearchString: Bool
  var maximumRecents: Int
  var sendsSearchStringImmediately: Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSSearchFieldDelegate?
  var centersPlaceholder: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
var NSSearchFieldRecentsTitleMenuItemTag: Int32 { get }
var NSSearchFieldRecentsMenuItemTag: Int32 { get }
var NSSearchFieldClearRecentsMenuItemTag: Int32 { get }
var NSSearchFieldNoRecentsMenuItemTag: Int32 { get }
class NSSearchFieldCell : NSTextFieldCell {
  var searchButtonCell: NSButtonCell?
  var cancelButtonCell: NSButtonCell?
  func resetSearchButtonCell()
  func resetCancelButtonCell()
  func searchTextRectForBounds(rect: NSRect) -> NSRect
  func searchButtonRectForBounds(rect: NSRect) -> NSRect
  func cancelButtonRectForBounds(rect: NSRect) -> NSRect
  var searchMenuTemplate: NSMenu?
  var sendsWholeSearchString: Bool
  var maximumRecents: Int
  var recentSearches: [String]!
  var recentsAutosaveName: String?
  var sendsSearchStringImmediately: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __sfFlags {
  var sendsWholeSearchString: UInt32
  var maximumRecents: UInt32
  var cancelVisible: UInt32
  var reserved2: UInt32
  var disableText: UInt32
  var menuTracking: UInt32
  var deferredUpdate: UInt32
  var sendsImmediately: UInt32
  var centeredLook: UInt32
  var renderingCentered: UInt32
  var becomeTransition: UInt32
  var resignTransition: UInt32
  var subclassOverridesRectForSearchButtonWhenCentered: UInt32
  var subclassOverridesRectForSearchTextWhenCentered: UInt32
  var subclassOverridesRectForCancelButtonWhenCentered: UInt32
  var resumeEditingOnCancel: UInt32
  var reserved: UInt32
  init()
  init(sendsWholeSearchString: UInt32, maximumRecents: UInt32, cancelVisible: UInt32, reserved2: UInt32, disableText: UInt32, menuTracking: UInt32, deferredUpdate: UInt32, sendsImmediately: UInt32, centeredLook: UInt32, renderingCentered: UInt32, becomeTransition: UInt32, resignTransition: UInt32, subclassOverridesRectForSearchButtonWhenCentered: UInt32, subclassOverridesRectForSearchTextWhenCentered: UInt32, subclassOverridesRectForCancelButtonWhenCentered: UInt32, resumeEditingOnCancel: UInt32, reserved: UInt32)
}
class NSSecureTextField : NSTextField {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class NSSecureTextFieldCell : NSTextFieldCell {
  var echosBullets: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSSegmentedCell : NSActionCell {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegmentWithTag(tag: Int) -> Bool
  func makeNextSegmentKey()
  func makePreviousSegmentKey()
  var trackingMode: NSSegmentSwitchTracking
  func setWidth(width: CGFloat, forSegment segment: Int)
  func widthForSegment(segment: Int) -> CGFloat
  func setImage(image: NSImage?, forSegment segment: Int)
  func imageForSegment(segment: Int) -> NSImage?
  func setImageScaling(scaling: NSImageScaling, forSegment segment: Int)
  func imageScalingForSegment(segment: Int) -> NSImageScaling
  func setLabel(label: String, forSegment segment: Int)
  func labelForSegment(segment: Int) -> String?
  func setSelected(selected: Bool, forSegment segment: Int)
  func isSelectedForSegment(segment: Int) -> Bool
  func setEnabled(enabled: Bool, forSegment segment: Int)
  func isEnabledForSegment(segment: Int) -> Bool
  func setMenu(menu: NSMenu?, forSegment segment: Int)
  func menuForSegment(segment: Int) -> NSMenu?
  func setToolTip(toolTip: String?, forSegment segment: Int)
  func toolTipForSegment(segment: Int) -> String?
  func setTag(tag: Int, forSegment segment: Int)
  func tagForSegment(segment: Int) -> Int
  var segmentStyle: NSSegmentStyle
  func drawSegment(segment: Int, inFrame frame: NSRect, withView controlView: NSView)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSSegmentedCell {
  func interiorBackgroundStyleForSegment(segment: Int) -> NSBackgroundStyle
}
enum NSSegmentSwitchTracking : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectOne
  case SelectAny
  case Momentary
  case MomentaryAccelerator
}
enum NSSegmentStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Rounded
  case RoundRect
  case TexturedSquare
  case SmallSquare
  case Separated
  case TexturedRounded
  case Capsule
}
class NSSegmentedControl : NSControl {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegmentWithTag(tag: Int) -> Bool
  func setWidth(width: CGFloat, forSegment segment: Int)
  func widthForSegment(segment: Int) -> CGFloat
  func setImage(image: NSImage?, forSegment segment: Int)
  func imageForSegment(segment: Int) -> NSImage?
  func setImageScaling(scaling: NSImageScaling, forSegment segment: Int)
  func imageScalingForSegment(segment: Int) -> NSImageScaling
  func setLabel(label: String, forSegment segment: Int)
  func labelForSegment(segment: Int) -> String?
  func setMenu(menu: NSMenu?, forSegment segment: Int)
  func menuForSegment(segment: Int) -> NSMenu?
  func setSelected(selected: Bool, forSegment segment: Int)
  func isSelectedForSegment(segment: Int) -> Bool
  func setEnabled(enabled: Bool, forSegment segment: Int)
  func isEnabledForSegment(segment: Int) -> Bool
  var segmentStyle: NSSegmentStyle
  var springLoaded: Bool
  var trackingMode: NSSegmentSwitchTracking
  var doubleValueForSelectedSegment: Double { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class NSShadow : NSObject, NSCopying, NSCoding {
  init()
  var shadowOffset: NSSize
  var shadowBlurRadius: CGFloat
  @NSCopying var shadowColor: NSColor?
  func set()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let NSSharingServiceNamePostOnFacebook: String
let NSSharingServiceNamePostOnTwitter: String
let NSSharingServiceNamePostOnSinaWeibo: String
let NSSharingServiceNamePostOnTencentWeibo: String
let NSSharingServiceNamePostOnLinkedIn: String
let NSSharingServiceNameComposeEmail: String
let NSSharingServiceNameComposeMessage: String
let NSSharingServiceNameSendViaAirDrop: String
let NSSharingServiceNameAddToSafariReadingList: String
let NSSharingServiceNameAddToIPhoto: String
let NSSharingServiceNameAddToAperture: String
let NSSharingServiceNameUseAsTwitterProfileImage: String
let NSSharingServiceNameUseAsFacebookProfileImage: String
let NSSharingServiceNameUseAsLinkedInProfileImage: String
let NSSharingServiceNameUseAsDesktopPicture: String
let NSSharingServiceNamePostImageOnFlickr: String
let NSSharingServiceNamePostVideoOnVimeo: String
let NSSharingServiceNamePostVideoOnYouku: String
let NSSharingServiceNamePostVideoOnTudou: String
class NSSharingService : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSSharingServiceDelegate?
  var title: String { get }
  var image: NSImage { get }
  var alternateImage: NSImage? { get }
  var menuItemTitle: String
  var recipients: [String]?
  var subject: String?
  var messageBody: String? { get }
  @NSCopying var permanentLink: NSURL? { get }
  var accountName: String? { get }
  var attachmentFileURLs: [NSURL]? { get }
  class func sharingServicesForItems(items: [AnyObject]) -> [NSSharingService]
   init?(named serviceName: String)
  init(title: String, image: NSImage, alternateImage: NSImage?, handler block: () -> Void)
  func canPerformWithItems(items: [AnyObject]?) -> Bool
  func performWithItems(items: [AnyObject])
}
enum NSSharingContentScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Item
  case Partial
  case Full
}
protocol NSSharingServiceDelegate : NSObjectProtocol {
  optional func sharingService(sharingService: NSSharingService, willShareItems items: [AnyObject])
  optional func sharingService(sharingService: NSSharingService, didFailToShareItems items: [AnyObject], error: NSError)
  optional func sharingService(sharingService: NSSharingService, didShareItems items: [AnyObject])
  optional func sharingService(sharingService: NSSharingService, sourceFrameOnScreenForShareItem item: AnyObject) -> NSRect
  optional func sharingService(sharingService: NSSharingService, transitionImageForShareItem item: AnyObject, contentRect: UnsafeMutablePointer<NSRect>) -> NSImage
  optional func sharingService(sharingService: NSSharingService, sourceWindowForShareItems items: [AnyObject], sharingContentScope: UnsafeMutablePointer<NSSharingContentScope>) -> NSWindow?
}
class NSSharingServicePicker : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSSharingServicePickerDelegate?
  init(items: [AnyObject])
  func showRelativeToRect(rect: NSRect, ofView view: NSView, preferredEdge: NSRectEdge)
}
protocol NSSharingServicePickerDelegate : NSObjectProtocol {
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, sharingServicesForItems items: [AnyObject], proposedSharingServices proposedServices: [NSSharingService]) -> [NSSharingService]
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, delegateForSharingService sharingService: NSSharingService) -> NSSharingServiceDelegate?
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, didChooseSharingService service: NSSharingService?)
}
class NSSlider : NSControl, NSAccessibilitySlider {
  var sliderType: NSSliderType
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var knobThickness: CGFloat { get }
  var vertical: Int { get }
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityLabel() -> String?
  func accessibilityValue() -> AnyObject?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
}
extension NSSlider {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSTickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValueAtIndex(index: Int) -> Double
  func rectOfTickMarkAtIndex(index: Int) -> NSRect
  func indexOfTickMarkAtPoint(point: NSPoint) -> Int
  func closestTickMarkValueToValue(value: Double) -> Double
}
enum NSTickMarkPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Below
  case Above
  static var Left: NSTickMarkPosition { get }
  static var Right: NSTickMarkPosition { get }
}
enum NSSliderType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LinearSlider
  case CircularSlider
}
class NSSliderCell : NSActionCell {
  class func prefersTrackingUntilMouseUp() -> Bool
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var sliderType: NSSliderType
  var vertical: Int { get }
  var trackRect: NSRect { get }
  var knobThickness: CGFloat { get }
  func knobRectFlipped(flipped: Bool) -> NSRect
  func drawKnob(knobRect: NSRect)
  func drawKnob()
  func barRectFlipped(flipped: Bool) -> NSRect
  func drawBarInside(aRect: NSRect, flipped: Bool)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __sliderCellFlags {
  var weAreVertical: UInt32
  var weAreVerticalSet: UInt32
  var reserved1: UInt32
  var isPressed: UInt32
  var allowsTickMarkValuesOnly: UInt32
  var tickMarkPosition: UInt32
  var sliderType: UInt32
  var drawing: UInt32
  var snappedToTickMark: UInt32
  var snappedToPreviousValue: UInt32
  var snappedToDefaultValue: UInt32
  var snappingAllowed: UInt32
  var reserved2: UInt32
  init()
  init(weAreVertical: UInt32, weAreVerticalSet: UInt32, reserved1: UInt32, isPressed: UInt32, allowsTickMarkValuesOnly: UInt32, tickMarkPosition: UInt32, sliderType: UInt32, drawing: UInt32, snappedToTickMark: UInt32, snappedToPreviousValue: UInt32, snappedToDefaultValue: UInt32, snappingAllowed: UInt32, reserved2: UInt32)
}
extension NSSliderCell {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSTickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValueAtIndex(index: Int) -> Double
  func rectOfTickMarkAtIndex(index: Int) -> NSRect
  func indexOfTickMarkAtPoint(point: NSPoint) -> Int
  func closestTickMarkValueToValue(value: Double) -> Double
  func drawTickMarks()
}
let NSSoundPboardType: String
class NSSound : NSObject, NSCopying, NSCoding, NSPasteboardReading, NSPasteboardWriting {
   init?(named name: String)
  init?(contentsOfURL url: NSURL, byReference byRef: Bool)
  init?(contentsOfFile path: String, byReference byRef: Bool)
  init?(data: NSData)
  func setName(string: String?) -> Bool
  var name: String? { get }
  class func canInitWithPasteboard(pasteboard: NSPasteboard) -> Bool
  class func soundUnfilteredTypes() -> [String]
  init?(pasteboard: NSPasteboard)
  func writeToPasteboard(pasteboard: NSPasteboard)
  func play() -> Bool
  func pause() -> Bool
  func resume() -> Bool
  func stop() -> Bool
  var playing: Bool { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSSoundDelegate?
  var duration: NSTimeInterval { get }
  var volume: Float
  var currentTime: NSTimeInterval
  var loops: Bool
  var playbackDeviceIdentifier: String?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
extension NSSound {
}
protocol NSSoundDelegate : NSObjectProtocol {
  optional func sound(sound: NSSound, didFinishPlaying aBool: Bool)
}
extension NSBundle {
  func pathForSoundResource(name: String) -> String?
}
class NSSpeechRecognizer : NSObject {
  init?()
  func startListening()
  func stopListening()
  unowned(unsafe) var delegate: @sil_unmanaged NSSpeechRecognizerDelegate?
  var commands: [String]?
  var displayedCommandsTitle: String?
  var listensInForegroundOnly: Bool
  var blocksOtherRecognizers: Bool
}
protocol NSSpeechRecognizerDelegate : NSObjectProtocol {
  optional func speechRecognizer(sender: NSSpeechRecognizer, didRecognizeCommand command: String)
}
let NSVoiceName: String
let NSVoiceIdentifier: String
let NSVoiceAge: String
let NSVoiceGender: String
let NSVoiceDemoText: String
let NSVoiceLocaleIdentifier: String
let NSVoiceSupportedCharacters: String
let NSVoiceIndividuallySpokenCharacters: String
let NSVoiceGenderNeuter: String
let NSVoiceGenderMale: String
let NSVoiceGenderFemale: String
enum NSSpeechBoundary : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ImmediateBoundary
  case WordBoundary
  case SentenceBoundary
}
class NSSpeechSynthesizer : NSObject {
  init?(voice: String?)
  func startSpeakingString(string: String) -> Bool
  func startSpeakingString(string: String, toURL url: NSURL) -> Bool
  var speaking: Bool { get }
  func stopSpeaking()
  func stopSpeakingAtBoundary(boundary: NSSpeechBoundary)
  func pauseSpeakingAtBoundary(boundary: NSSpeechBoundary)
  func continueSpeaking()
  unowned(unsafe) var delegate: @sil_unmanaged NSSpeechSynthesizerDelegate?
  func voice() -> String?
  func setVoice(voice: String?) -> Bool
  var rate: Float
  var volume: Float
  var usesFeedbackWindow: Bool
  func addSpeechDictionary(speechDictionary: [String : AnyObject])
  func phonemesFromText(text: String) -> String
  func objectForProperty(property: String) throws -> AnyObject
  func setObject(object: AnyObject?, forProperty property: String) throws
  class func isAnyApplicationSpeaking() -> Bool
  class func defaultVoice() -> String
  class func availableVoices() -> [String]
  class func attributesForVoice(voice: String) -> [String : AnyObject]
  init()
}
protocol NSSpeechSynthesizerDelegate : NSObjectProtocol {
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, willSpeakWord characterRange: NSRange, ofString string: String)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, willSpeakPhoneme phonemeOpcode: Int16)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didEncounterErrorAtIndex characterIndex: Int, ofString string: String, message: String)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didEncounterSyncMessage message: String)
}
let NSSpeechStatusProperty: String
let NSSpeechErrorsProperty: String
let NSSpeechInputModeProperty: String
let NSSpeechCharacterModeProperty: String
let NSSpeechNumberModeProperty: String
let NSSpeechRateProperty: String
let NSSpeechPitchBaseProperty: String
let NSSpeechPitchModProperty: String
let NSSpeechVolumeProperty: String
let NSSpeechSynthesizerInfoProperty: String
let NSSpeechRecentSyncProperty: String
let NSSpeechPhonemeSymbolsProperty: String
let NSSpeechCurrentVoiceProperty: String
let NSSpeechCommandDelimiterProperty: String
let NSSpeechResetProperty: String
let NSSpeechOutputToFileURLProperty: String
let NSSpeechModeText: String
let NSSpeechModePhoneme: String
let NSSpeechModeNormal: String
let NSSpeechModeLiteral: String
let NSSpeechStatusOutputBusy: String
let NSSpeechStatusOutputPaused: String
let NSSpeechStatusNumberOfCharactersLeft: String
let NSSpeechStatusPhonemeCode: String
let NSSpeechErrorCount: String
let NSSpeechErrorOldestCode: String
let NSSpeechErrorOldestCharacterOffset: String
let NSSpeechErrorNewestCode: String
let NSSpeechErrorNewestCharacterOffset: String
let NSSpeechSynthesizerInfoIdentifier: String
let NSSpeechSynthesizerInfoVersion: String
let NSSpeechPhonemeInfoOpcode: String
let NSSpeechPhonemeInfoSymbol: String
let NSSpeechPhonemeInfoExample: String
let NSSpeechPhonemeInfoHiliteStart: String
let NSSpeechPhonemeInfoHiliteEnd: String
let NSSpeechCommandPrefix: String
let NSSpeechCommandSuffix: String
let NSSpeechDictionaryLocaleIdentifier: String
let NSSpeechDictionaryModificationDate: String
let NSSpeechDictionaryPronunciations: String
let NSSpeechDictionaryAbbreviations: String
let NSSpeechDictionaryEntrySpelling: String
let NSSpeechDictionaryEntryPhonemes: String
class NSSpellChecker : NSObject {
  class func sharedSpellChecker() -> NSSpellChecker
  class func sharedSpellCheckerExists() -> Bool
  class func uniqueSpellDocumentTag() -> Int
  func checkSpellingOfString(stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, wordCount: UnsafeMutablePointer<Int>) -> NSRange
  func checkSpellingOfString(stringToCheck: String, startingAt startingOffset: Int) -> NSRange
  func countWordsInString(stringToCount: String, language: String?) -> Int
  func checkGrammarOfString(stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  func checkString(stringToCheck: String, range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]?, inSpellDocumentWithTag tag: Int, orthography: AutoreleasingUnsafeMutablePointer<NSOrthography?>, wordCount: UnsafeMutablePointer<Int>) -> [NSTextCheckingResult]
  func requestCheckingOfString(stringToCheck: String, range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]?, inSpellDocumentWithTag tag: Int, completionHandler: ((Int, [NSTextCheckingResult], NSOrthography, Int) -> Void)?) -> Int
  func menuForResult(result: NSTextCheckingResult, string checkedString: String, options: [String : AnyObject]?, atLocation location: NSPoint, inView view: NSView) -> NSMenu?
  func userQuotesArrayForLanguage(language: String) -> [String]
  var userReplacementsDictionary: [String : String] { get }
  func updateSpellingPanelWithMisspelledWord(word: String)
  func updateSpellingPanelWithGrammarString(string: String, detail: [String : AnyObject])
  var spellingPanel: NSPanel { get }
  var accessoryView: NSView?
  var substitutionsPanel: NSPanel { get }
  var substitutionsPanelAccessoryViewController: NSViewController?
  func updatePanels()
  func ignoreWord(wordToIgnore: String, inSpellDocumentWithTag tag: Int)
  func ignoredWordsInSpellDocumentWithTag(tag: Int) -> [String]?
  func setIgnoredWords(words: [String], inSpellDocumentWithTag tag: Int)
  func guessesForWordRange(range: NSRange, inString string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  func correctionForWordRange(range: NSRange, inString string: String, language: String, inSpellDocumentWithTag tag: Int) -> String?
  func completionsForPartialWordRange(range: NSRange, inString string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  func languageForWordRange(range: NSRange, inString string: String, orthography: NSOrthography?) -> String?
  func closeSpellDocumentWithTag(tag: Int)
  func recordResponse(response: NSCorrectionResponse, toCorrection correction: String, forWord word: String, language: String?, inSpellDocumentWithTag tag: Int)
  func showCorrectionIndicatorOfType(type: NSCorrectionIndicatorType, primaryString: String, alternativeStrings: [String], forStringInRect rectOfTypedString: NSRect, view: NSView, completionHandler completionBlock: ((String!) -> Void)?)
  func dismissCorrectionIndicatorForView(view: NSView)
  var availableLanguages: [String] { get }
  var userPreferredLanguages: [String] { get }
  var automaticallyIdentifiesLanguages: Bool
  func setWordFieldStringValue(aString: String)
  func learnWord(word: String)
  func hasLearnedWord(word: String) -> Bool
  func unlearnWord(word: String)
  class func isAutomaticTextReplacementEnabled() -> Bool
  class func isAutomaticSpellingCorrectionEnabled() -> Bool
  class func isAutomaticQuoteSubstitutionEnabled() -> Bool
  class func isAutomaticDashSubstitutionEnabled() -> Bool
  func language() -> String
  func setLanguage(language: String) -> Bool
  init()
}
struct __scFlags {
  var autoShowGuesses: UInt32
  var needDelayedGuess: UInt32
  var unignoreInProgress: UInt32
  var wordFieldEdited: UInt32
  var inSpelling: UInt32
  var reconnectSpelling: UInt32
  var inGrammar: UInt32
  var reconnectGrammar: UInt32
  var languageIdentification: UInt32
  var languagesHidden: UInt32
  var quotesByLanguage: UInt32
  var _reserved: UInt32
  init()
  init(autoShowGuesses: UInt32, needDelayedGuess: UInt32, unignoreInProgress: UInt32, wordFieldEdited: UInt32, inSpelling: UInt32, reconnectSpelling: UInt32, inGrammar: UInt32, reconnectGrammar: UInt32, languageIdentification: UInt32, languagesHidden: UInt32, quotesByLanguage: UInt32, _reserved: UInt32)
}
let NSTextCheckingOrthographyKey: String
let NSTextCheckingQuotesKey: String
let NSTextCheckingReplacementsKey: String
let NSTextCheckingReferenceDateKey: String
let NSTextCheckingReferenceTimeZoneKey: String
let NSTextCheckingDocumentURLKey: String
let NSTextCheckingDocumentTitleKey: String
let NSTextCheckingDocumentAuthorKey: String
let NSTextCheckingRegularExpressionsKey: String
enum NSCorrectionResponse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Accepted
  case Rejected
  case Ignored
  case Edited
  case Reverted
}
enum NSCorrectionIndicatorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Reversion
  case Guesses
}
let NSSpellCheckerDidChangeAutomaticSpellingCorrectionNotification: String
let NSSpellCheckerDidChangeAutomaticTextReplacementNotification: String
let NSSpellCheckerDidChangeAutomaticQuoteSubstitutionNotification: String
let NSSpellCheckerDidChangeAutomaticDashSubstitutionNotification: String
extension NSSpellChecker {
}
protocol NSChangeSpelling {
  func changeSpelling(sender: AnyObject?)
}
protocol NSIgnoreMisspelledWords {
  func ignoreSpelling(sender: AnyObject?)
}
enum NSSplitViewDividerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Thick
  case Thin
  case PaneSplitter
}
class NSSplitView : NSView {
  var vertical: Bool
  var dividerStyle: NSSplitViewDividerStyle
  var autosaveName: String?
  unowned(unsafe) var delegate: @sil_unmanaged NSSplitViewDelegate?
  func drawDividerInRect(rect: NSRect)
  @NSCopying var dividerColor: NSColor { get }
  var dividerThickness: CGFloat { get }
  func adjustSubviews()
  func isSubviewCollapsed(subview: NSView) -> Bool
  func minPossiblePositionOfDividerAtIndex(dividerIndex: Int) -> CGFloat
  func maxPossiblePositionOfDividerAtIndex(dividerIndex: Int) -> CGFloat
  func setPosition(position: CGFloat, ofDividerAtIndex dividerIndex: Int)
  func holdingPriorityForSubviewAtIndex(subviewIndex: Int) -> NSLayoutPriority
  func setHoldingPriority(priority: NSLayoutPriority, forSubviewAtIndex subviewIndex: Int)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSSplitView {
  var arrangesAllSubviews: Bool
  var arrangedSubviews: [NSView] { get }
  func addArrangedSubview(view: NSView)
  func insertArrangedSubview(view: NSView, atIndex index: Int)
  func removeArrangedSubview(view: NSView)
}
protocol NSSplitViewDelegate : NSObjectProtocol {
  optional func splitView(splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  optional func splitView(splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAtIndex dividerIndex: Int) -> Bool
  optional func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  optional func splitView(splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  optional func splitView(splitView: NSSplitView, shouldHideDividerAtIndex dividerIndex: Int) -> Bool
  optional func splitView(splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAtIndex dividerIndex: Int) -> NSRect
  optional func splitView(splitView: NSSplitView, additionalEffectiveRectOfDividerAtIndex dividerIndex: Int) -> NSRect
  optional func splitViewWillResizeSubviews(notification: NSNotification)
  optional func splitViewDidResizeSubviews(notification: NSNotification)
}
let NSSplitViewWillResizeSubviewsNotification: String
let NSSplitViewDidResizeSubviewsNotification: String
extension NSSplitView {
}
/// This constant can be used with any sizing related \c NSSplitViewController properties to get the default system behavior.
let NSSplitViewControllerAutomaticDimension: CGFloat
class NSSplitViewController : NSViewController, NSSplitViewDelegate {
  /// The split view managed by the SplitViewController. This can be used to customize view properties such as the dividerStyle, vertical, and autosaveName. It is not guaranteed to be the same view as the receivers 'view' property. The default created splitView is vertical with a dividerStyle of \c NSSplitViewDividerStyleThin. To provide a custom NSSplitView, set the splitView property anytime before self.viewLoaded is YES.
  var splitView: NSSplitView
  /// The array of SplitViewItems that correspond to the current child view controllers. After a child view controller is added to the receiving splitViewController, a NSSplitViewItem with the default values will be created for it. Once the child is removed, its corresponding splitViewItem will be removed from the splitViewItems array. Setting this will call through to \c -insertSplitViewItem:atIndex and \c -removeSplitViewItem: for items that are new or need removal.
  var splitViewItems: [NSSplitViewItem]
  func addSplitViewItem(splitViewItem: NSSplitViewItem)
  func insertSplitViewItem(splitViewItem: NSSplitViewItem, atIndex index: Int)
  func removeSplitViewItem(splitViewItem: NSSplitViewItem)
  func splitViewItemForViewController(viewController: NSViewController) -> NSSplitViewItem?
  var minimumThicknessForInlineSidebars: CGFloat
  func viewDidLoad()
  func splitView(splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  func splitView(splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAtIndex dividerIndex: Int) -> Bool
  func splitView(splitView: NSSplitView, shouldHideDividerAtIndex dividerIndex: Int) -> Bool
  func splitView(splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAtIndex dividerIndex: Int) -> NSRect
  func splitView(splitView: NSSplitView, additionalEffectiveRectOfDividerAtIndex dividerIndex: Int) -> NSRect
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  func splitView(splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  func splitView(splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  func splitView(splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  func splitView(splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  func splitViewWillResizeSubviews(notification: NSNotification)
  func splitViewDidResizeSubviews(notification: NSNotification)
}
extension NSSplitViewController {
  /// Animatedly collapses or uncollapses the first sidebar split view item in the receiver. Does nothing if the receiver does not contain any sidebars.
  @IBAction func toggleSidebar(sender: AnyObject?)
}
enum NSSplitViewItemBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Sidebar
  case ContentList
}
enum NSSplitViewItemCollapseBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  /// The item uses the default collapsing behavior for its set `behavior`. The default may change over time.
  case Default
  /// The item prefers to keep the other panes at their current size and position on screen, potentially growing or shrinking the window in the direction to best preserve that. But it will break that preference in order to keep the window fully on screen or when in full screen.
  case PreferResizingSplitViewWithFixedSiblings
  /// The item prefers to resize the other split panes. This will be broken when uncollapsing if the item can't fully uncollapse before hitting the minimum size of the other panes or the window.
  case PreferResizingSiblingsWithFixedSplitView
  /// The item will collapse/uncollapse purely from a constraint animation, with a constraint priority of the item’s `holdingPriority`. This could result in a partial internal content resize and window resize, and has no implications for keeping the window on screen. External constraints can be used to tweak exactly how the animation affects item, sibling, and window size and positions.
  case UseConstraints
}
/// This constant can be used with any sizing related \c NSSplitViewItem properties to unset their values.
let NSSplitViewItemUnspecifiedDimension: CGFloat
class NSSplitViewItem : NSObject, NSAnimatablePropertyContainer, NSCoding {
  convenience init(viewController: NSViewController)
  convenience init(sidebarWithViewController viewController: NSViewController)
  convenience init(contentListWithViewController viewController: NSViewController)
  /// The standard behavior type of the receiver. See initializers for descriptions of each behavior.
  var behavior: NSSplitViewItemBehavior { get }
  /// The view controller represented by the SplitViewItem. An exception will be thrown if a new viewController is set while the receiving SplitViewItem is added to a SplitViewController.
  var viewController: NSViewController
  /// Whether or not the child ViewController corresponding to the SplitViewItem is collapsed in the SplitViewController. The default is \c NO. This can be set with the animator proxy to animate the collapse or uncollapse. The exact animation used can be customized by setting it in the -animations dictionary with a key of "collapsed". If this is set to YES before it is added to the SplitViewController, it will be initially collapsed and the SplitViewController will not cause the view to be loaded until it is uncollapsed. This is KVC/KVO compliant and will be updated if the value changes from user interaction.
  var collapsed: Bool
  /// Whether or not the child view controller is collapsible from user interaction - whether by dragging or double clicking a divider. The default is \c NO.
  var canCollapse: Bool
  /// The resize behavior when the receiver toggles its `collapsed` state programmatically, both animatedly and not. Defaults to `.Default`.
  var collapseBehavior: NSSplitViewItemCollapseBehavior
  /// A convenience to set the minimum thickness of the split view item -- width for "vertical" split views, height otherwise. If NSSplitViewItemUnspecifiedDimension, no minimum size is enforced by the SplitViewItem, although constraints in the contained view hierarchy might have constraints specify some minimum size on their own. Defaults to NSSplitViewItemUnspecifiedDimension.
  var minimumThickness: CGFloat
  /// A convenience to set the maximum thickness of the split view item -- width for "vertical" split views, height otherwise. If NSSplitViewItemUnspecifiedDimension, no maximum size is enforced by the SplitViewItem, although constraints in the contained view hierarchy might have constraints specify some maximum size on their own. Defaults to NSSplitViewItemUnspecifiedDimension.
  var maximumThickness: CGFloat
  /// The percentage of the contained NSSplitView that the NSSplitViewItem prefers to encompass. This is used when double-clicking on a neighbor divider to return to that standard ratio. As well as after entering fullscreen to determine the initial size of the receiver. Defaults to NSSplitViewItemUnspecifiedDimension, which means no resize will occur on double-clicks, and the absolute size is preserved when entering fullscreen.
  var preferredThicknessFraction: CGFloat
  /// Sets the priority under which a SplitViewItem will hold its width (for a vertical split view) or height (for a horizontal split view). The view with the lowest priority will be the first to take on additional width if the split view grows or shrinks. The default is \c NSLayoutPriorityDefaultLow.
  var holdingPriority: NSLayoutPriority
  /// The maximum thickness of the split view item when resizing due to automatic sizing, such as entering fullscreen with a set preferredThicknessFraction or proportional sizing. The user can still resize up to the absolute maximum size by dragging the divider or otherwise. If NSSplitViewItemUnspecifiedDimension, no automatic maximum is enforced. Defaults to NSSplitViewItemUnspecifiedDimension.
  var automaticMaximumThickness: CGFloat
  /// If YES, the split view item can be temporarily uncollapsed during a drag by hovering or deep clicking on its neighboring divider. Defaults to NO.
  var springLoaded: Bool
  init()
  func animator() -> Self
  var animations: [String : AnyObject]
  func animationForKey(key: String) -> AnyObject?
  class func defaultAnimationForKey(key: String) -> AnyObject?
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum NSStackViewGravity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Top
  static var Leading: NSStackViewGravity { get }
  case Center
  case Bottom
  static var Trailing: NSStackViewGravity { get }
}
enum NSStackViewDistribution : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  /// Default value. NSStackView will not have any special distribution behavior, relying on behavior described by gravity areas and set hugging priorities along the stacking axis.
  case GravityAreas
  /// The effective hugging priority in the stacking axis is NSLayoutPriorityRequired, causing the stacked views to tightly fill the container along the stacking axis.
  case Fill
  /// Stacked views will have sizes maintained to be equal as much as possible along the stacking axis. The effective hugging priority in the stacking axis is NSLayoutPriorityRequired.
  case FillEqually
  /// Stacked views will have sizes maintained to be equal, proportionally to their intrinsicContentSizes, as much as possible. The effective hugging priority in the stacking axis is NSLayoutPriorityRequired.
  case FillProportionally
  /// The space separating stacked views along the stacking axis are maintained to be equal as much as possible while still maintaining the minimum spacing.
  case EqualSpacing
  /// Equal center-to-center spacing of the items is maintained as much as possible while still maintaining the minimum spacing between each view.
  case EqualCentering
}
typealias NSStackViewVisibilityPriority = Float
let NSStackViewVisibilityPriorityMustHold: NSStackViewVisibilityPriority
let NSStackViewVisibilityPriorityDetachOnlyIfNecessary: NSStackViewVisibilityPriority
let NSStackViewVisibilityPriorityNotVisible: NSStackViewVisibilityPriority
let NSStackViewSpacingUseDefault: CGFloat
class NSStackView : NSView {
  convenience init(views: [NSView])
  unowned(unsafe) var delegate: @sil_unmanaged NSStackViewDelegate?
  var orientation: NSUserInterfaceLayoutOrientation
  var alignment: NSLayoutAttribute
  var edgeInsets: NSEdgeInsets
  func addView(aView: NSView, inGravity gravity: NSStackViewGravity)
  func insertView(aView: NSView, atIndex index: Int, inGravity gravity: NSStackViewGravity)
  func removeView(aView: NSView)
  func viewsInGravity(gravity: NSStackViewGravity) -> [NSView]
  func setViews(views: [NSView], inGravity gravity: NSStackViewGravity)
  var views: [NSView] { get }
  var detachedViews: [NSView] { get }
  /// If YES, when a stacked view's `hidden` property is set to YES, the view will be detached from the stack and reattached when set to NO. Similarly, if the view has a lowered visibility priority and is detached from the stack view, it will be set as `hidden` rather than removed from the view hierarchy. Defaults to YES for apps linked on the 10.11 SDK or later.
  var detachesHiddenViews: Bool
  func setVisibilityPriority(priority: NSStackViewVisibilityPriority, forView aView: NSView)
  func visibilityPriorityForView(aView: NSView) -> NSStackViewVisibilityPriority
  var spacing: CGFloat
  func setCustomSpacing(spacing: CGFloat, afterView aView: NSView)
  func customSpacingAfterView(aView: NSView) -> CGFloat
  /// The spacing and sizing distribution of stacked views along the primary axis. Defaults to GravityAreas.
  var distribution: NSStackViewDistribution
  func clippingResistancePriorityForOrientation(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  func setClippingResistancePriority(clippingResistancePriority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  func huggingPriorityForOrientation(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  func setHuggingPriority(huggingPriority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSStackView {
  /// The list of views that are arranged in a stack by the receiver. They are a subset of \c -subviews, with potential difference in ordering.
  var arrangedSubviews: [NSView] { get }
  func addArrangedSubview(view: NSView)
  func insertArrangedSubview(view: NSView, atIndex index: Int)
  func removeArrangedSubview(view: NSView)
}
protocol NSStackViewDelegate : NSObjectProtocol {
  optional func stackView(stackView: NSStackView, willDetachViews views: [NSView])
  optional func stackView(stackView: NSStackView, didReattachViews views: [NSView])
}
extension NSStackView {
  var hasEqualSpacing: Bool
}
let NSVariableStatusItemLength: CGFloat
let NSSquareStatusItemLength: CGFloat
class NSStatusBar : NSObject {
  class func systemStatusBar() -> NSStatusBar
  func statusItemWithLength(length: CGFloat) -> NSStatusItem
  func removeStatusItem(item: NSStatusItem)
  var vertical: Bool { get }
  var thickness: CGFloat { get }
  init()
}
class NSStatusBarButton : NSButton {
  /// When YES the status bar icon has a disabled/off appearance while still being functional, such as allowing selection and actions. Defaults to NO.
  var appearsDisabled: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class NSStatusItem : NSObject {
  /// The status bar that the receiver is displayed in.
  unowned(unsafe) var statusBar: @sil_unmanaged NSStatusBar { get }
  /// The amount of space in the status bar that should be allocated to the receiver. \c NSVariableStatusItemLength will adjust the length to the size of the status item's contents and \c NSSquareStatusItemLength will keep the length the same as the status bar's height.
  var length: CGFloat
  /// The drop down menu that is displayed when the status item is pressed or clicked.
  var menu: NSMenu?
  /// The button that is displayed in the status bar. This is created automatically on the creation of the StatusItem. Behavior customization for the button, such as image, target/action, tooltip, can be set with this property.
  var button: NSStatusBarButton? { get }
  init()
}
extension NSStatusItem {
  var action: Selector
  var doubleAction: Selector
  weak var target: @sil_weak AnyObject?
  var title: String?
  @NSCopying var attributedTitle: NSAttributedString?
  var image: NSImage?
  var alternateImage: NSImage?
  var enabled: Bool
  var highlightMode: Bool
  var toolTip: String?
  func sendActionOn(mask: Int) -> Int
  var view: NSView?
  func drawStatusBarBackgroundInRect(rect: NSRect, withHighlight highlight: Bool)
  func popUpStatusItemMenu(menu: NSMenu)
}
class NSStepper : NSControl, NSAccessibilityStepper {
  var minValue: Double
  var maxValue: Double
  var increment: Double
  var valueWraps: Bool
  var autorepeat: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityLabel() -> String?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityValue() -> AnyObject?
}
class NSStepperCell : NSActionCell {
  var minValue: Double
  var maxValue: Double
  var increment: Double
  var valueWraps: Bool
  var autorepeat: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSStoryboard : NSObject {
  convenience init(name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialController() -> AnyObject?
  func instantiateControllerWithIdentifier(identifier: String) -> AnyObject
  init()
}
struct _storyboardFlags {
  var reserved: UInt32
  init()
  init(reserved: UInt32)
}
class NSStoryboardSegue : NSObject {
  convenience init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject, performHandler: () -> Void)
  init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject)
  var identifier: String? { get }
  var sourceController: AnyObject { get }
  var destinationController: AnyObject { get }
  func perform()
  convenience init()
}
protocol NSSeguePerforming : NSObjectProtocol {
  optional func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?)
  optional func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  optional func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
}
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: NSRect { get }
  init()
}
extension NSString {
  func sizeWithAttributes(attrs: [String : AnyObject]?) -> NSSize
  func drawAtPoint(point: NSPoint, withAttributes attrs: [String : AnyObject]?)
  func drawInRect(rect: NSRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  func size() -> NSSize
  func drawAtPoint(point: NSPoint)
  func drawInRect(rect: NSRect)
}
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
  static var DisableScreenFontSubstitution: NSStringDrawingOptions { get }
  static var OneShot: NSStringDrawingOptions { get }
}
extension NSString {
  func drawWithRect(rect: NSRect, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?)
  func boundingRectWithSize(size: NSSize, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?) -> NSRect
}
extension NSAttributedString {
  func drawWithRect(rect: NSRect, options: NSStringDrawingOptions, context: NSStringDrawingContext?)
  func boundingRectWithSize(size: NSSize, options: NSStringDrawingOptions, context: NSStringDrawingContext?) -> NSRect
}
extension NSString {
  func drawWithRect(rect: NSRect, options: NSStringDrawingOptions, attributes: [String : AnyObject]?)
  func boundingRectWithSize(size: NSSize, options: NSStringDrawingOptions, attributes: [String : AnyObject]?) -> NSRect
}
extension NSAttributedString {
  func drawWithRect(rect: NSRect, options: NSStringDrawingOptions)
  func boundingRectWithSize(size: NSSize, options: NSStringDrawingOptions) -> NSRect
}
var NSAppKitVersionNumberWithDirectionalTabs: Double { get }
enum NSTabViewType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TopTabsBezelBorder
  case LeftTabsBezelBorder
  case BottomTabsBezelBorder
  case RightTabsBezelBorder
  case NoTabsBezelBorder
  case NoTabsLineBorder
  case NoTabsNoBorder
}
class NSTabView : NSView {
  func selectTabViewItem(tabViewItem: NSTabViewItem?)
  func selectTabViewItemAtIndex(index: Int)
  func selectTabViewItemWithIdentifier(identifier: AnyObject)
  func takeSelectedTabViewItemFromSender(sender: AnyObject?)
  func selectFirstTabViewItem(sender: AnyObject?)
  func selectLastTabViewItem(sender: AnyObject?)
  func selectNextTabViewItem(sender: AnyObject?)
  func selectPreviousTabViewItem(sender: AnyObject?)
  var selectedTabViewItem: NSTabViewItem? { get }
  var font: NSFont
  var tabViewType: NSTabViewType
  var tabViewItems: [NSTabViewItem] { get }
  var allowsTruncatedLabels: Bool
  var minimumSize: NSSize { get }
  var drawsBackground: Bool
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  func addTabViewItem(tabViewItem: NSTabViewItem)
  func insertTabViewItem(tabViewItem: NSTabViewItem, atIndex index: Int)
  func removeTabViewItem(tabViewItem: NSTabViewItem)
  unowned(unsafe) var delegate: @sil_unmanaged NSTabViewDelegate?
  func tabViewItemAtPoint(point: NSPoint) -> NSTabViewItem?
  var contentRect: NSRect { get }
  var numberOfTabViewItems: Int { get }
  func indexOfTabViewItem(tabViewItem: NSTabViewItem) -> Int
  func tabViewItemAtIndex(index: Int) -> NSTabViewItem
  func indexOfTabViewItemWithIdentifier(identifier: AnyObject) -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __NSTabViewDelegateRespondTo {
  var shouldSelectTabViewItem: UInt32
  var willSelectTabViewItem: UInt32
  var didSelectTabViewItem: UInt32
  var didChangeNumberOfTabViewItems: UInt32
  var reserved: UInt32
  init()
  init(shouldSelectTabViewItem: UInt32, willSelectTabViewItem: UInt32, didSelectTabViewItem: UInt32, didChangeNumberOfTabViewItems: UInt32, reserved: UInt32)
}
struct __NSTabViewFlags {
  var needsLayout: UInt32
  var controlTint: UInt32
  var controlSize: UInt32
  var wiringNibConnections: UInt32
  var wiringInteriorLastKeyView: UInt32
  var originalNextKeyViewChanged: UInt32
  var liveResizeSkippedResetToolTips: UInt32
  var subviewsAddedForTabs: UInt32
  var allowsPropertyChange: UInt32
  var ownedByTabViewController: UInt32
  var reserved: UInt32
  init()
  init(needsLayout: UInt32, controlTint: UInt32, controlSize: UInt32, wiringNibConnections: UInt32, wiringInteriorLastKeyView: UInt32, originalNextKeyViewChanged: UInt32, liveResizeSkippedResetToolTips: UInt32, subviewsAddedForTabs: UInt32, allowsPropertyChange: UInt32, ownedByTabViewController: UInt32, reserved: UInt32)
}
protocol NSTabViewDelegate : NSObjectProtocol {
  optional func tabView(tabView: NSTabView, shouldSelectTabViewItem tabViewItem: NSTabViewItem?) -> Bool
  optional func tabView(tabView: NSTabView, willSelectTabViewItem tabViewItem: NSTabViewItem?)
  optional func tabView(tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem?)
  optional func tabViewDidChangeNumberOfTabViewItems(tabView: NSTabView)
}
enum NSTabViewControllerTabStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  /// Uses an NSSegmentedControl to show the UI for the tabs. The control is on the top of the view.
  case SegmentedControlOnTop
  /// Uses an NSSegmentedControl to show the UI for the tabs. The control is on the bottom of the view.
  case SegmentedControlOnBottom
  /// Automatically pushes the tabs into the window's toolbar as toolbar items, if non-nil. This style will cause the TabViewController to set its containing window's toolbar to its own and become that toolbar's delegate. The toolbar items can be customized or supplemented by overriding the relevant NSToolbarDelegate methods.
  case Toolbar
  /// NSTabViewController will not provide any of its own tab control UI. Separate UI, such as a NSSegmentedControl or NSPopupButton, can be easily bound to the TabViewController. Or \c tabView.tabViewType can be changed for the TabView itself to draw the UI.
  case Unspecified
}
class NSTabViewController : NSViewController, NSTabViewDelegate, NSToolbarDelegate {
  /// The style that this NSTabViewController displays its UI as. Defaults to \c NSTabViewControllerTabStyleSegmentedControlOnTop.
  var tabStyle: NSTabViewControllerTabStyle
  /// Access to the tab view that the controller is controlling. To provide a custom NSTabView, assign the value anytime before \c self.viewLoaded is \c YES. Querying the value will create it on-demand, if needed. Check \c self.viewLoaded before querying the value to avoid prematurely creating the view. Note that the \c -tabView may not be equal to the \c viewController.view. Properties such as the tabStyle can be directly manipulated, but calling methods that add and remove tabViewItems or changing the delegate is not allowed. The NSTabViewController will be made the delegate of the NSTabView. Internally, the NSTabView is always used to switch between displayed childViewControllers, regardless of the style displayed.
  var tabView: NSTabView
  /// This defines how NSTabViewController transitions from one view to another. Transitions go through [self transitionFromViewController:toViewController:options:completionHandler:]. The default value is \c NSViewControllerTransitionCrossfade|NSViewControllerTransitionAllowUserInteraction.
  var transitionOptions: NSViewControllerTransitionOptions
  /// If YES and the receiving NSTabViewController has a nil title, \c -title will return its selected child ViewController's title. If NO, it will continue to return nil. The default value is \c YES.
  var canPropagateSelectedChildViewControllerTitle: Bool
  /// The array of tab view items that correspond to the current child view controllers. After a child view controller is added to the receiving TabViewController, a NSTabViewItem with the default values will be created for it. Once the child is removed, its corresponding tabViewItem will be removed from the tabViewItems array.
  var tabViewItems: [NSTabViewItem]
  /// Read and write the current selected TabViewItem that is being shown. This value is KVC compliant and can be the target of a binding. For instance, a NSSegmentedControl's selection can be bound to this value with: \code [segmentedControl bind:NSSelectedIndexBinding toObject:tabViewController withKeyPath:@“selectedTabViewItemIndex" options:nil];
  var selectedTabViewItemIndex: Int
  func addTabViewItem(tabViewItem: NSTabViewItem)
  func insertTabViewItem(tabViewItem: NSTabViewItem, atIndex index: Int)
  func removeTabViewItem(tabViewItem: NSTabViewItem)
  func tabViewItemForViewController(viewController: NSViewController) -> NSTabViewItem?
  func viewDidLoad()
  func tabView(tabView: NSTabView, willSelectTabViewItem tabViewItem: NSTabViewItem?)
  func tabView(tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem?)
  func tabView(tabView: NSTabView, shouldSelectTabViewItem tabViewItem: NSTabViewItem?) -> Bool
  func toolbar(toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  func toolbarDefaultItemIdentifiers(toolbar: NSToolbar) -> [String]
  func toolbarAllowedItemIdentifiers(toolbar: NSToolbar) -> [String]
  func toolbarSelectableItemIdentifiers(toolbar: NSToolbar) -> [String]
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  func tabViewDidChangeNumberOfTabViewItems(tabView: NSTabView)
  func toolbarWillAddItem(notification: NSNotification)
  func toolbarDidRemoveItem(notification: NSNotification)
}
enum NSTabState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectedTab
  case BackgroundTab
  case PressedTab
}
class NSTabViewItem : NSObject, NSCoding {
  convenience init(viewController: NSViewController)
  init(identifier: AnyObject)
  var identifier: AnyObject
  @NSCopying var color: NSColor
  var label: String
  /// Get and set the image for this tab view item. The image may only be used in certain tab view styles and options.  The default value is nil.
  var image: NSImage?
  var view: NSView?
  var viewController: NSViewController?
  var tabState: NSTabState { get }
  var tabView: NSTabView? { get }
  unowned(unsafe) var initialFirstResponder: @sil_unmanaged NSView?
  var toolTip: String?
  func drawLabel(shouldTruncateLabel: Bool, inRect labelRect: NSRect)
  func sizeOfLabel(computeMin: Bool) -> NSSize
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __tviFlags {
  var hasCustomColor: UInt32
  var labelSizeIsValid: UInt32
  var autoGeneratedIFR: UInt32
  var isTabDisabled: UInt32
  var isActive: UInt32
  var RESERVED: UInt32
  init()
  init(hasCustomColor: UInt32, labelSizeIsValid: UInt32, autoGeneratedIFR: UInt32, isTabDisabled: UInt32, isActive: UInt32, RESERVED: UInt32)
}
class NSTableCellView : NSView {
  var objectValue: AnyObject?
  @IBOutlet unowned(unsafe) var textField: @sil_unmanaged NSTextField?
  @IBOutlet unowned(unsafe) var imageView: @sil_unmanaged NSImageView?
  var backgroundStyle: NSBackgroundStyle
  var rowSizeStyle: NSTableViewRowSizeStyle
  var draggingImageComponents: [NSDraggingImageComponent] { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct NSTableColumnResizingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoResizing: NSTableColumnResizingOptions { get }
  static var AutoresizingMask: NSTableColumnResizingOptions { get }
  static var UserResizingMask: NSTableColumnResizingOptions { get }
}
class NSTableColumn : NSObject, NSCoding, NSUserInterfaceItemIdentification {
  init(identifier: String)
  var identifier: String
  unowned(unsafe) var tableView: @sil_unmanaged NSTableView?
  var width: CGFloat
  var minWidth: CGFloat
  var maxWidth: CGFloat
  var title: String
  var headerCell: NSTableHeaderCell
  var editable: Bool
  func sizeToFit()
  @NSCopying var sortDescriptorPrototype: NSSortDescriptor?
  var resizingMask: NSTableColumnResizingOptions
  var headerToolTip: String?
  var hidden: Bool
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __colFlags {
  var oldIsResizable: UInt32
  var isEditable: UInt32
  var resizedPostingDisableCount: UInt32
  var canUseReorderResizeImageCache: UInt32
  var userResizingAllowed: UInt32
  var autoResizingAllowed: UInt32
  var hidden: UInt32
  var RESERVED: UInt32
  init()
  init(oldIsResizable: UInt32, isEditable: UInt32, resizedPostingDisableCount: UInt32, canUseReorderResizeImageCache: UInt32, userResizingAllowed: UInt32, autoResizingAllowed: UInt32, hidden: UInt32, RESERVED: UInt32)
}
extension NSTableColumn {
  var dataCell: AnyObject
  func dataCellForRow(row: Int) -> AnyObject
}
class NSTableHeaderCell : NSTextFieldCell {
  func drawSortIndicatorWithFrame(cellFrame: NSRect, inView controlView: NSView, ascending: Bool, priority: Int)
  func sortIndicatorRectForBounds(theRect: NSRect) -> NSRect
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSTableHeaderView : NSView {
  unowned(unsafe) var tableView: @sil_unmanaged NSTableView?
  var draggedColumn: Int { get }
  var draggedDistance: CGFloat { get }
  var resizedColumn: Int { get }
  func headerRectOfColumn(column: Int) -> NSRect
  func columnAtPoint(point: NSPoint) -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class NSTableRowView : NSView, NSAccessibilityRow {
  var selectionHighlightStyle: NSTableViewSelectionHighlightStyle
  var emphasized: Bool
  var groupRowStyle: Bool
  var selected: Bool
  var previousRowSelected: Bool
  var nextRowSelected: Bool
  var floating: Bool
  var targetForDropOperation: Bool
  var draggingDestinationFeedbackStyle: NSTableViewDraggingDestinationFeedbackStyle
  var indentationForDropOperation: CGFloat
  var interiorBackgroundStyle: NSBackgroundStyle { get }
  @NSCopying var backgroundColor: NSColor
  func drawBackgroundInRect(dirtyRect: NSRect)
  func drawSelectionInRect(dirtyRect: NSRect)
  func drawSeparatorInRect(dirtyRect: NSRect)
  func drawDraggingDestinationFeedbackInRect(dirtyRect: NSRect)
  func viewAtColumn(column: Int) -> AnyObject?
  var numberOfColumns: Int { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityIndex() -> Int
  func accessibilityDisclosureLevel() -> Int
}
struct __TvFlags {
  var refusesFirstResponder: UInt32
  var movedPostingDisableCount: UInt32
  var selectionPostingDisableCount: UInt32
  var dataSourceSetObjectValue: UInt32
  var oldAutoresizesAllColumnsToFit: UInt32
  var delegateSelectionShouldChangeInTableView: UInt32
  var delegateShouldSelectTableColumn: UInt32
  var delegateShouldSelectRow: UInt32
  var delegateShouldEditTableColumn: UInt32
  var delegateWillDisplayCell: UInt32
  var compareWidthWithSuperview: UInt32
  var allowGapRow: UInt32
  var selectionType: UInt32
  var allowsColumnSelection: UInt32
  var allowsMultipleSelection: UInt32
  var allowsEmptySelection: UInt32
  var hasBlurBackgroundViews: UInt32
  var allowsColumnResizing: UInt32
  var allowsColumnReordering: UInt32
  init()
  init(refusesFirstResponder: UInt32, movedPostingDisableCount: UInt32, selectionPostingDisableCount: UInt32, dataSourceSetObjectValue: UInt32, oldAutoresizesAllColumnsToFit: UInt32, delegateSelectionShouldChangeInTableView: UInt32, delegateShouldSelectTableColumn: UInt32, delegateShouldSelectRow: UInt32, delegateShouldEditTableColumn: UInt32, delegateWillDisplayCell: UInt32, compareWidthWithSuperview: UInt32, allowGapRow: UInt32, selectionType: UInt32, allowsColumnSelection: UInt32, allowsMultipleSelection: UInt32, allowsEmptySelection: UInt32, hasBlurBackgroundViews: UInt32, allowsColumnResizing: UInt32, allowsColumnReordering: UInt32)
}
typealias _TvFlags = __TvFlags
enum NSTableViewDropOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case On
  case Above
}
enum NSTableViewColumnAutoresizingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoColumnAutoresizing
  case UniformColumnAutoresizingStyle
  case SequentialColumnAutoresizingStyle
  case ReverseSequentialColumnAutoresizingStyle
  case LastColumnOnlyAutoresizingStyle
  case FirstColumnOnlyAutoresizingStyle
}
struct NSTableViewGridLineStyle : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var GridNone: NSTableViewGridLineStyle { get }
  static var SolidVerticalGridLineMask: NSTableViewGridLineStyle { get }
  static var SolidHorizontalGridLineMask: NSTableViewGridLineStyle { get }
  static var DashedHorizontalGridLineMask: NSTableViewGridLineStyle { get }
}
enum NSTableViewRowSizeStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
  case Small
  case Medium
  case Large
}
enum NSTableViewSelectionHighlightStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Regular
  case SourceList
}
enum NSTableViewDraggingDestinationFeedbackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Regular
  case SourceList
  case Gap
}
enum NSTableRowActionEdge : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Leading
  case Trailing
}
class NSTableView : NSControl, NSUserInterfaceValidations, NSTextViewDelegate, NSDraggingSource, NSAccessibilityTable {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  func setDataSource(aSource: NSTableViewDataSource?)
  func dataSource() -> NSTableViewDataSource?
  func setDelegate(delegate: NSTableViewDelegate?)
  func delegate() -> NSTableViewDelegate?
  var headerView: NSTableHeaderView?
  var cornerView: NSView?
  var allowsColumnReordering: Bool
  var allowsColumnResizing: Bool
  var columnAutoresizingStyle: NSTableViewColumnAutoresizingStyle
  var gridStyleMask: NSTableViewGridLineStyle
  var intercellSpacing: NSSize
  var usesAlternatingRowBackgroundColors: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var gridColor: NSColor
  var rowSizeStyle: NSTableViewRowSizeStyle
  var effectiveRowSizeStyle: NSTableViewRowSizeStyle { get }
  var rowHeight: CGFloat
  func noteHeightOfRowsWithIndexesChanged(indexSet: NSIndexSet)
  var tableColumns: [NSTableColumn] { get }
  var numberOfColumns: Int { get }
  var numberOfRows: Int { get }
  func addTableColumn(tableColumn: NSTableColumn)
  func removeTableColumn(tableColumn: NSTableColumn)
  func moveColumn(oldIndex: Int, toColumn newIndex: Int)
  func columnWithIdentifier(identifier: String) -> Int
  func tableColumnWithIdentifier(identifier: String) -> NSTableColumn?
  func tile()
  func sizeToFit()
  func sizeLastColumnToFit()
  func scrollRowToVisible(row: Int)
  func scrollColumnToVisible(column: Int)
  func reloadData()
  func noteNumberOfRowsChanged()
  func reloadDataForRowIndexes(rowIndexes: NSIndexSet, columnIndexes: NSIndexSet)
  var editedColumn: Int { get }
  var editedRow: Int { get }
  var clickedColumn: Int { get }
  var clickedRow: Int { get }
  var doubleAction: Selector
  var sortDescriptors: [NSSortDescriptor]
  func setIndicatorImage(anImage: NSImage?, inTableColumn tableColumn: NSTableColumn)
  func indicatorImageInTableColumn(tableColumn: NSTableColumn) -> NSImage?
  unowned(unsafe) var highlightedTableColumn: @sil_unmanaged NSTableColumn?
  var verticalMotionCanBeginDrag: Bool
  func canDragRowsWithIndexes(rowIndexes: NSIndexSet, atPoint mouseDownPoint: NSPoint) -> Bool
  func dragImageForRowsWithIndexes(dragRows: NSIndexSet, tableColumns: [NSTableColumn], event dragEvent: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  func setDropRow(row: Int, dropOperation: NSTableViewDropOperation)
  var allowsMultipleSelection: Bool
  var allowsEmptySelection: Bool
  var allowsColumnSelection: Bool
  func selectAll(sender: AnyObject?)
  func deselectAll(sender: AnyObject?)
  func selectColumnIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  func selectRowIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  @NSCopying var selectedColumnIndexes: NSIndexSet { get }
  @NSCopying var selectedRowIndexes: NSIndexSet { get }
  func deselectColumn(column: Int)
  func deselectRow(row: Int)
  var selectedColumn: Int { get }
  var selectedRow: Int { get }
  func isColumnSelected(column: Int) -> Bool
  func isRowSelected(row: Int) -> Bool
  var numberOfSelectedColumns: Int { get }
  var numberOfSelectedRows: Int { get }
  var allowsTypeSelect: Bool
  var selectionHighlightStyle: NSTableViewSelectionHighlightStyle
  var draggingDestinationFeedbackStyle: NSTableViewDraggingDestinationFeedbackStyle
  func rectOfColumn(column: Int) -> NSRect
  func rectOfRow(row: Int) -> NSRect
  func columnIndexesInRect(rect: NSRect) -> NSIndexSet
  func rowsInRect(rect: NSRect) -> NSRange
  func columnAtPoint(point: NSPoint) -> Int
  func rowAtPoint(point: NSPoint) -> Int
  func frameOfCellAtColumn(column: Int, row: Int) -> NSRect
  var autosaveName: String?
  var autosaveTableColumns: Bool
  func editColumn(column: Int, row: Int, withEvent theEvent: NSEvent?, select: Bool)
  func drawRow(row: Int, clipRect: NSRect)
  func highlightSelectionInClipRect(clipRect: NSRect)
  func drawGridInClipRect(clipRect: NSRect)
  func drawBackgroundInClipRect(clipRect: NSRect)
  func viewAtColumn(column: Int, row: Int, makeIfNecessary: Bool) -> NSView?
  func rowViewAtRow(row: Int, makeIfNecessary: Bool) -> NSTableRowView?
  func rowForView(view: NSView) -> Int
  func columnForView(view: NSView) -> Int
  func makeViewWithIdentifier(identifier: String, owner: AnyObject?) -> NSView?
  func enumerateAvailableRowViewsUsingBlock(handler: (NSTableRowView, Int) -> Void)
  var floatsGroupRows: Bool
  var rowActionsVisible: Bool
  func beginUpdates()
  func endUpdates()
  func insertRowsAtIndexes(indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions)
  func removeRowsAtIndexes(indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions)
  func moveRowAtIndex(oldIndex: Int, toIndex newIndex: Int)
  func hideRowsAtIndexes(indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions)
  func unhideRowsAtIndexes(indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions)
  @NSCopying var hiddenRowIndexes: NSIndexSet { get }
  func registerNib(nib: NSNib?, forIdentifier identifier: String)
  var registeredNibsByIdentifier: [String : NSNib]? { get }
  func didAddRowView(rowView: NSTableRowView, forRow row: Int)
  func didRemoveRowView(rowView: NSTableRowView, forRow row: Int)
  var usesStaticContents: Bool
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func textView(textView: NSTextView, clickedOnLink link: AnyObject, atIndex charIndex: Int) -> Bool
  func textView(textView: NSTextView, clickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  func textView(textView: NSTextView, doubleClickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, inRect rect: NSRect, event: NSEvent, atIndex charIndex: Int)
  func textView(view: NSTextView, writablePasteboardTypesForCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int) -> [String]
  func textView(view: NSTextView, writeCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int, toPasteboard pboard: NSPasteboard, type: String) -> Bool
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  func textViewDidChangeSelection(notification: NSNotification)
  func textViewDidChangeTypingAttributes(notification: NSNotification)
  func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAtIndex characterIndex: Int) -> String?
  func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  func textView(textView: NSTextView, shouldChangeTextInRange affectedCharRange: NSRange, replacementString: String?) -> Bool
  func textView(textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, atIndex charIndex: Int) -> NSMenu?
  func textView(view: NSTextView, willCheckTextInRange range: NSRange, options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  func textView(view: NSTextView, didCheckTextInRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], results: [NSTextCheckingResult], orthography: NSOrthography, wordCount: Int) -> [NSTextCheckingResult]
  func textView(textView: NSTextView, URLForContentsOfTextAttachment textAttachment: NSTextAttachment, atIndex charIndex: Int) -> NSURL?
  func textView(textView: NSTextView, willShowSharingServicePicker servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  func undoManagerForTextView(view: NSTextView) -> NSUndoManager?
  func draggingSession(session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  func draggingSession(session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  func draggingSession(session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  func draggingSession(session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  func ignoreModifierKeysForDraggingSession(session: NSDraggingSession) -> Bool
  func accessibilityLabel() -> String?
  func accessibilityRows() -> [NSAccessibilityRow]?
  func accessibilitySelectedRows() -> [NSAccessibilityRow]?
  func setAccessibilitySelectedRows(selectedRows: [NSAccessibilityRow])
  func accessibilityVisibleRows() -> [NSAccessibilityRow]?
  func accessibilityColumns() -> [AnyObject]?
  func accessibilityVisibleColumns() -> [AnyObject]?
  func accessibilitySelectedColumns() -> [AnyObject]?
  func accessibilityHeaderGroup() -> String?
  func accessibilitySelectedCells() -> [AnyObject]?
  func accessibilityVisibleCells() -> [AnyObject]?
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
}
struct NSTableViewAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EffectNone: NSTableViewAnimationOptions { get }
  static var EffectFade: NSTableViewAnimationOptions { get }
  static var EffectGap: NSTableViewAnimationOptions { get }
  static var SlideUp: NSTableViewAnimationOptions { get }
  static var SlideDown: NSTableViewAnimationOptions { get }
  static var SlideLeft: NSTableViewAnimationOptions { get }
  static var SlideRight: NSTableViewAnimationOptions { get }
}
protocol NSTableViewDelegate : NSControlTextEditingDelegate {
  optional func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView?
  optional func tableView(tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView?
  optional func tableView(tableView: NSTableView, didAddRowView rowView: NSTableRowView, forRow row: Int)
  optional func tableView(tableView: NSTableView, didRemoveRowView rowView: NSTableRowView, forRow row: Int)
  optional func tableView(tableView: NSTableView, willDisplayCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, row: Int)
  optional func tableView(tableView: NSTableView, shouldEditTableColumn tableColumn: NSTableColumn?, row: Int) -> Bool
  optional func tableView(tableView: NSTableView, toolTipForCell cell: NSCell, rect: NSRectPointer, tableColumn: NSTableColumn?, row: Int, mouseLocation: NSPoint) -> String
  optional func tableView(tableView: NSTableView, shouldShowCellExpansionForTableColumn tableColumn: NSTableColumn?, row: Int) -> Bool
  optional func tableView(tableView: NSTableView, shouldTrackCell cell: NSCell, forTableColumn tableColumn: NSTableColumn?, row: Int) -> Bool
  optional func tableView(tableView: NSTableView, dataCellForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSCell?
  optional func selectionShouldChangeInTableView(tableView: NSTableView) -> Bool
  optional func tableView(tableView: NSTableView, shouldSelectRow row: Int) -> Bool
  optional func tableView(tableView: NSTableView, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet) -> NSIndexSet
  optional func tableView(tableView: NSTableView, shouldSelectTableColumn tableColumn: NSTableColumn?) -> Bool
  optional func tableView(tableView: NSTableView, mouseDownInHeaderOfTableColumn tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, didClickTableColumn tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, didDragTableColumn tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, heightOfRow row: Int) -> CGFloat
  optional func tableView(tableView: NSTableView, typeSelectStringForTableColumn tableColumn: NSTableColumn?, row: Int) -> String?
  optional func tableView(tableView: NSTableView, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, forString searchString: String) -> Int
  optional func tableView(tableView: NSTableView, shouldTypeSelectForEvent event: NSEvent, withCurrentSearchString searchString: String?) -> Bool
  optional func tableView(tableView: NSTableView, isGroupRow row: Int) -> Bool
  optional func tableView(tableView: NSTableView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  optional func tableView(tableView: NSTableView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  optional func tableView(tableView: NSTableView, rowActionsForRow row: Int, edge: NSTableRowActionEdge) -> [NSTableViewRowAction]
  optional func tableViewSelectionDidChange(notification: NSNotification)
  optional func tableViewColumnDidMove(notification: NSNotification)
  optional func tableViewColumnDidResize(notification: NSNotification)
  optional func tableViewSelectionIsChanging(notification: NSNotification)
}
let NSTableViewSelectionDidChangeNotification: String
let NSTableViewColumnDidMoveNotification: String
let NSTableViewColumnDidResizeNotification: String
let NSTableViewSelectionIsChangingNotification: String
let NSTableViewRowViewKey: String
protocol NSTableViewDataSource : NSObjectProtocol {
  optional func numberOfRowsInTableView(tableView: NSTableView) -> Int
  optional func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject?
  optional func tableView(tableView: NSTableView, setObjectValue object: AnyObject?, forTableColumn tableColumn: NSTableColumn?, row: Int)
  optional func tableView(tableView: NSTableView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  optional func tableView(tableView: NSTableView, pasteboardWriterForRow row: Int) -> NSPasteboardWriting?
  optional func tableView(tableView: NSTableView, draggingSession session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint, forRowIndexes rowIndexes: NSIndexSet)
  optional func tableView(tableView: NSTableView, draggingSession session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  optional func tableView(tableView: NSTableView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func tableView(tableView: NSTableView, writeRowsWithIndexes rowIndexes: NSIndexSet, toPasteboard pboard: NSPasteboard) -> Bool
  optional func tableView(tableView: NSTableView, validateDrop info: NSDraggingInfo, proposedRow row: Int, proposedDropOperation dropOperation: NSTableViewDropOperation) -> NSDragOperation
  optional func tableView(tableView: NSTableView, acceptDrop info: NSDraggingInfo, row: Int, dropOperation: NSTableViewDropOperation) -> Bool
  optional func tableView(tableView: NSTableView, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedRowsWithIndexes indexSet: NSIndexSet) -> [String]
}
extension NSObject {
}
extension NSTableView {
  func preparedCellAtColumn(column: Int, row: Int) -> NSCell?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: NSNotification)
  func textDidEndEditing(notification: NSNotification)
  func textDidChange(notification: NSNotification)
  func shouldFocusCell(cell: NSCell, atColumn column: Int, row: Int) -> Bool
  func focusedColumn() -> Int
  func setFocusedColumn(focusedColumn: Int)
  func performClickOnCellAtColumn(column: Int, row: Int)
}
enum NSTableViewRowActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Regular
  case Destructive
}
class NSTableViewRowAction : NSObject, NSCopying {
  convenience init(style: NSTableViewRowActionStyle, title: String, handler: (NSTableViewRowAction, Int) -> Void)
  var style: NSTableViewRowActionStyle { get }
  var title: String
  @NSCopying var backgroundColor: NSColor!
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
var NSEnterCharacter: Int { get }
var NSBackspaceCharacter: Int { get }
var NSTabCharacter: Int { get }
var NSNewlineCharacter: Int { get }
var NSFormFeedCharacter: Int { get }
var NSCarriageReturnCharacter: Int { get }
var NSBackTabCharacter: Int { get }
var NSDeleteCharacter: Int { get }
var NSLineSeparatorCharacter: Int { get }
var NSParagraphSeparatorCharacter: Int { get }
enum NSTextAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Left
  case Right
  case Center
  case Justified
  case Natural
}
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
var NSIllegalTextMovement: Int { get }
var NSReturnTextMovement: Int { get }
var NSTabTextMovement: Int { get }
var NSBacktabTextMovement: Int { get }
var NSLeftTextMovement: Int { get }
var NSRightTextMovement: Int { get }
var NSUpTextMovement: Int { get }
var NSDownTextMovement: Int { get }
var NSCancelTextMovement: Int { get }
var NSOtherTextMovement: Int { get }
class NSText : NSView, NSChangeSpelling, NSIgnoreMisspelledWords {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  var string: String?
  func replaceCharactersInRange(range: NSRange, withString aString: String)
  func replaceCharactersInRange(range: NSRange, withRTF rtfData: NSData)
  func replaceCharactersInRange(range: NSRange, withRTFD rtfdData: NSData)
  func RTFFromRange(range: NSRange) -> NSData?
  func RTFDFromRange(range: NSRange) -> NSData?
  func writeRTFDToFile(path: String, atomically flag: Bool) -> Bool
  func readRTFDFromFile(path: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSTextDelegate?
  var editable: Bool
  var selectable: Bool
  var richText: Bool
  var importsGraphics: Bool
  var fieldEditor: Bool
  var usesFontPanel: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor?
  var rulerVisible: Bool { get }
  var selectedRange: NSRange
  func scrollRangeToVisible(range: NSRange)
  var font: NSFont?
  @NSCopying var textColor: NSColor?
  var alignment: NSTextAlignment
  var baseWritingDirection: NSWritingDirection
  func setTextColor(color: NSColor?, range: NSRange)
  func setFont(font: NSFont, range: NSRange)
  var maxSize: NSSize
  var minSize: NSSize
  var horizontallyResizable: Bool
  var verticallyResizable: Bool
  func sizeToFit()
  func copy(sender: AnyObject?)
  func copyFont(sender: AnyObject?)
  func copyRuler(sender: AnyObject?)
  func cut(sender: AnyObject?)
  func delete(sender: AnyObject?)
  func paste(sender: AnyObject?)
  func pasteFont(sender: AnyObject?)
  func pasteRuler(sender: AnyObject?)
  func selectAll(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
  func alignLeft(sender: AnyObject?)
  func alignRight(sender: AnyObject?)
  func alignCenter(sender: AnyObject?)
  func `subscript`(sender: AnyObject?)
  func superscript(sender: AnyObject?)
  func underline(sender: AnyObject?)
  func unscript(sender: AnyObject?)
  func showGuessPanel(sender: AnyObject?)
  func checkSpelling(sender: AnyObject?)
  func toggleRuler(sender: AnyObject?)
  convenience init()
  func changeSpelling(sender: AnyObject?)
  func ignoreSpelling(sender: AnyObject?)
}
protocol NSTextDelegate : NSObjectProtocol {
  optional func textShouldBeginEditing(textObject: NSText) -> Bool
  optional func textShouldEndEditing(textObject: NSText) -> Bool
  optional func textDidBeginEditing(notification: NSNotification)
  optional func textDidEndEditing(notification: NSNotification)
  optional func textDidChange(notification: NSNotification)
}
let NSTextDidBeginEditingNotification: String
let NSTextDidEndEditingNotification: String
let NSTextDidChangeNotification: String
var NSTextWritingDirectionEmbedding: Int { get }
var NSTextWritingDirectionOverride: Int { get }
let NSLeftTextAlignment: NSTextAlignment
let NSRightTextAlignment: NSTextAlignment
let NSCenterTextAlignment: NSTextAlignment
let NSJustifiedTextAlignment: NSTextAlignment
let NSNaturalTextAlignment: NSTextAlignment
class NSTextAlternatives : NSObject {
  init(primaryString: String, alternativeStrings: [String])
  var primaryString: String { get }
  var alternativeStrings: [String] { get }
  func noteSelectedAlternativeString(alternativeString: String)
  init()
}
let NSTextAlternativesSelectedAlternativeStringNotification: String
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : NSObjectProtocol {
  func imageForBounds(imageBounds: NSRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: NSRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> NSRect
}
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSCoding {
  init(data contentData: NSData?, ofType uti: String?)
  convenience init(fileWrapper: NSFileWrapper?)
  @NSCopying var contents: NSData?
  var fileType: String?
  var image: NSImage?
  var bounds: NSRect
  var fileWrapper: NSFileWrapper?
  var attachmentCell: NSTextAttachmentCellProtocol?
  convenience init()
  func imageForBounds(imageBounds: NSRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: NSRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> NSRect
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
   init(attachment: NSTextAttachment)
}
extension NSMutableAttributedString {
  func updateAttachmentsFromPath(path: String)
}
protocol NSTextAttachmentCellProtocol : NSObjectProtocol {
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(flag: Bool, withFrame cellFrame: NSRect, inView controlView: NSView?)
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> NSSize
  func cellBaselineOffset() -> NSPoint
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment? { get set }
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?, characterIndex charIndex: Int)
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouseForEvent(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  func cellFrameForTextContainer(textContainer: NSTextContainer, proposedLineFragment lineFrag: NSRect, glyphPosition position: NSPoint, characterIndex charIndex: Int) -> NSRect
}
class NSTextAttachmentCell : NSCell, NSTextAttachmentCellProtocol {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(flag: Bool, withFrame cellFrame: NSRect, inView controlView: NSView?)
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> NSSize
  func cellBaselineOffset() -> NSPoint
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment?
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?, characterIndex charIndex: Int)
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouseForEvent(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  func cellFrameForTextContainer(textContainer: NSTextContainer, proposedLineFragment lineFrag: NSRect, glyphPosition position: NSPoint, characterIndex charIndex: Int) -> NSRect
}
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {
  init(size: NSSize)
  init(coder: NSCoder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)
  var size: NSSize
  var exclusionPaths: [NSBezierPath]
  var lineBreakMode: NSLineBreakMode
  var lineFragmentPadding: CGFloat
  var maximumNumberOfLines: Int
  func lineFragmentRectForProposedRect(proposedRect: NSRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect: UnsafeMutablePointer<NSRect>) -> NSRect
  var simpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  var textView: NSTextView?
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
struct __tcFlags {
  var widthTracksTextView: UInt16
  var heightTracksTextView: UInt16
  var observingFrameChanges: UInt16
  var lineBreakMode: UInt16
  var oldAPI: UInt16
  var _reserved: UInt16
  init()
  init(widthTracksTextView: UInt16, heightTracksTextView: UInt16, observingFrameChanges: UInt16, lineBreakMode: UInt16, oldAPI: UInt16, _reserved: UInt16)
}
enum NSLineSweepDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Left
  case Right
  case Down
  case Up
}
enum NSLineMovementDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DoesntMove
  case MovesLeft
  case MovesRight
  case MovesDown
  case MovesUp
}
extension NSTextContainer {
  convenience init(containerSize aContainerSize: NSSize)
  var containerSize: NSSize
  func lineFragmentRectForProposedRect(proposedRect: NSRect, sweepDirection: NSLineSweepDirection, movementDirection: NSLineMovementDirection, remainingRect: NSRectPointer) -> NSRect
  func containsPoint(point: NSPoint) -> Bool
}
class NSTextField : NSControl, NSUserInterfaceValidations, NSAccessibilityNavigableStaticText {
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  var bordered: Bool
  var bezeled: Bool
  var editable: Bool
  var selectable: Bool
  func selectText(sender: AnyObject?)
  unowned(unsafe) var delegate: @sil_unmanaged NSTextFieldDelegate?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: NSNotification)
  func textDidEndEditing(notification: NSNotification)
  func textDidChange(notification: NSNotification)
  var acceptsFirstResponder: Bool { get }
  var bezelStyle: NSTextFieldBezelStyle
  var preferredMaxLayoutWidth: CGFloat
  var maximumNumberOfLines: Int
  var allowsDefaultTighteningForTruncation: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityRangeForLine(lineNumber: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityValue() -> String?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityVisibleCharacterRange() -> NSRange
}
extension NSTextField {
  var allowsEditingTextAttributes: Bool
  var importsGraphics: Bool
}
protocol NSTextFieldDelegate : NSControlTextEditingDelegate {
}
extension NSTextField {
}
enum NSTextFieldBezelStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SquareBezel
  case RoundedBezel
}
class NSTextFieldCell : NSActionCell {
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  func setUpFieldEditorAttributes(textObj: NSText) -> NSText
  var bezelStyle: NSTextFieldBezelStyle
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  func setWantsNotificationForMarkedText(flag: Bool)
  var allowedInputSourceLocales: [String]?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __tfFlags {
  var drawsBackground: UInt32
  var bezelStyle: UInt32
  var thcSortDirection: UInt32
  var thcSortPriority: UInt32
  var mini: UInt32
  var textColorIgnoresNormalDisableFlag: UInt32
  var textColorDisableFlag: UInt32
  var thcForceHighlightForSort: UInt32
  var invalidTextColor: UInt32
  var notificationForMarkedText: UInt32
  var inToolbar: UInt32
  var hasTextLayer: UInt32
  var isButtonTitle: UInt32
  var allowTightening: UInt32
  var thcHighlighted: UInt32
  var shouldNotClipToBounds: UInt32
  var allowsDefaultTightening: UInt32
  var reservedTextFieldCell: UInt32
  init()
  init(drawsBackground: UInt32, bezelStyle: UInt32, thcSortDirection: UInt32, thcSortPriority: UInt32, mini: UInt32, textColorIgnoresNormalDisableFlag: UInt32, textColorDisableFlag: UInt32, thcForceHighlightForSort: UInt32, invalidTextColor: UInt32, notificationForMarkedText: UInt32, inToolbar: UInt32, hasTextLayer: UInt32, isButtonTitle: UInt32, allowTightening: UInt32, thcHighlighted: UInt32, shouldNotClipToBounds: UInt32, allowsDefaultTightening: UInt32, reservedTextFieldCell: UInt32)
}
enum NSTextFinderAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ShowFindInterface
  case NextMatch
  case PreviousMatch
  case ReplaceAll
  case Replace
  case ReplaceAndFind
  case SetSearchString
  case ReplaceAllInSelection
  case SelectAll
  case SelectAllInSelection
  case HideFindInterface
  case ShowReplaceInterface
  case HideReplaceInterface
}
let NSTextFinderCaseInsensitiveKey: String
let NSTextFinderMatchingTypeKey: String
enum NSTextFinderMatchingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case StartsWith
  case FullWord
  case EndsWith
}
class NSTextFinder : NSObject, NSCoding {
  init()
  @IBOutlet unowned(unsafe) var client: @sil_unmanaged NSTextFinderClient?
  func performAction(op: NSTextFinderAction)
  func validateAction(op: NSTextFinderAction) -> Bool
  @IBOutlet unowned(unsafe) var findBarContainer: @sil_unmanaged NSTextFinderBarContainer?
  func cancelFindIndicator()
  var findIndicatorNeedsUpdate: Bool
  var incrementalSearchingEnabled: Bool
  var incrementalSearchingShouldDimContentView: Bool
  var incrementalMatchRanges: [NSValue] { get }
  class func drawIncrementalMatchHighlightInRect(rect: NSRect)
  func noteClientStringWillChange()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSTextFinderClient : NSObjectProtocol {
  optional var selectable: Bool { get }
  optional var allowsMultipleSelection: Bool { get }
  optional var editable: Bool { get }
  optional var string: String { get }
  optional func stringAtIndex(characterIndex: Int, effectiveRange outRange: NSRangePointer, endsWithSearchBoundary outFlag: UnsafeMutablePointer<ObjCBool>) -> String
  optional func stringLength() -> Int
  optional var firstSelectedRange: NSRange { get }
  optional var selectedRanges: [NSValue] { get set }
  optional func scrollRangeToVisible(range: NSRange)
  optional func shouldReplaceCharactersInRanges(ranges: [NSValue], withStrings strings: [String]) -> Bool
  optional func replaceCharactersInRange(range: NSRange, withString string: String)
  optional func didReplaceCharacters()
  optional func contentViewAtIndex(index: Int, effectiveCharacterRange outRange: NSRangePointer) -> NSView
  optional func rectsForCharacterRange(range: NSRange) -> [NSValue]?
  optional var visibleCharacterRanges: [NSValue] { get }
  optional func drawCharactersInRange(range: NSRange, forContentView view: NSView)
}
protocol NSTextFinderBarContainer : NSObjectProtocol {
  var findBarView: NSView? { get set }
  var findBarVisible: Bool { get set }
  func findBarViewDidChangeHeight()
  optional func contentView() -> NSView?
}
protocol NSTextInputClient {
  func insertText(aString: AnyObject, replacementRange: NSRange)
  func doCommandBySelector(aSelector: Selector)
  func setMarkedText(aString: AnyObject, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  func attributedSubstringForProposedRange(aRange: NSRange, actualRange: NSRangePointer) -> NSAttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRectForCharacterRange(aRange: NSRange, actualRange: NSRangePointer) -> NSRect
  func characterIndexForPoint(aPoint: NSPoint) -> Int
  optional func attributedString() -> NSAttributedString
  optional func fractionOfDistanceThroughGlyphForPoint(aPoint: NSPoint) -> CGFloat
  optional func baselineDeltaForCharacterAtIndex(anIndex: Int) -> CGFloat
  optional func windowLevel() -> Int
  optional func drawsVerticallyForCharacterAtIndex(charIndex: Int) -> Bool
}
class NSTextInputContext : NSObject {
  class func currentInputContext() -> NSTextInputContext?
  init(client theClient: NSTextInputClient)
  var client: NSTextInputClient { get }
  var acceptsGlyphInfo: Bool
  var allowedInputSourceLocales: [String]?
  func activate()
  func deactivate()
  func handleEvent(theEvent: NSEvent) -> Bool
  func discardMarkedText()
  func invalidateCharacterCoordinates()
  var keyboardInputSources: [String]? { get }
  var selectedKeyboardInputSource: String?
  class func localizedNameForInputSource(inputSourceIdentifier: String) -> String?
  convenience init()
}
let NSTextInputContextKeyboardSelectionDidChangeNotification: String
struct NSTextListOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrependEnclosingMarker: NSTextListOptions { get }
}
class NSTextList : NSObject, NSCoding, NSCopying {
  init(markerFormat format: String, options mask: Int)
  var markerFormat: String { get }
  var listOptions: NSTextListOptions { get }
  func markerForItemNumber(itemNum: Int) -> String
  var startingItemNumber: Int
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EditedAttributes: NSTextStorageEditActions { get }
  static var EditedCharacters: NSTextStorageEditActions { get }
}
class NSTextStorage : NSMutableAttributedString {
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(aLayoutManager: NSLayoutManager)
  func removeLayoutManager(aLayoutManager: NSLayoutManager)
  var editedMask: NSTextStorageEditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSTextStorageDelegate?
  func edited(editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributesInRange(range: NSRange)
  func ensureAttributesAreFixedInRange(range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  init(URL url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init?(RTF data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(RTFD data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, baseURL base: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(docFormat data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(RTFDFileWrapper wrapper: NSFileWrapper, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  init?(URL url: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(path: String, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}
protocol NSTextStorageDelegate : NSObjectProtocol {
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}
let NSTextStorageWillProcessEditingNotification: String
let NSTextStorageDidProcessEditingNotification: String
typealias NSTextStorageEditedOptions = Int
extension NSObject {
  class func textStorageWillProcessEditing(notification: NSNotification)
  func textStorageWillProcessEditing(notification: NSNotification)
  class func textStorageDidProcessEditing(notification: NSNotification)
  func textStorageDidProcessEditing(notification: NSNotification)
}
extension NSTextStorage {
  var attributeRuns: [NSTextStorage]
  var paragraphs: [NSTextStorage]
  var words: [NSTextStorage]
  var characters: [NSTextStorage]
  var font: NSFont?
  var foregroundColor: NSColor?
}
enum NSTextBlockValueType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AbsoluteValueType
  case PercentageValueType
}
enum NSTextBlockDimension : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Width
  case MinimumWidth
  case MaximumWidth
  case Height
  case MinimumHeight
  case MaximumHeight
}
enum NSTextBlockLayer : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Padding
  case Border
  case Margin
}
enum NSTextBlockVerticalAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TopAlignment
  case MiddleAlignment
  case BottomAlignment
  case BaselineAlignment
}
enum NSTextTableLayoutAlgorithm : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AutomaticLayoutAlgorithm
  case FixedLayoutAlgorithm
}
class NSTextBlock : NSObject, NSCoding, NSCopying {
  init()
  func setValue(val: CGFloat, type: NSTextBlockValueType, forDimension dimension: NSTextBlockDimension)
  func valueForDimension(dimension: NSTextBlockDimension) -> CGFloat
  func valueTypeForDimension(dimension: NSTextBlockDimension) -> NSTextBlockValueType
  func setContentWidth(val: CGFloat, type: NSTextBlockValueType)
  var contentWidth: CGFloat { get }
  var contentWidthValueType: NSTextBlockValueType { get }
  func setWidth(val: CGFloat, type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer, edge: NSRectEdge)
  func setWidth(val: CGFloat, type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer)
  func widthForLayer(layer: NSTextBlockLayer, edge: NSRectEdge) -> CGFloat
  func widthValueTypeForLayer(layer: NSTextBlockLayer, edge: NSRectEdge) -> NSTextBlockValueType
  var verticalAlignment: NSTextBlockVerticalAlignment
  @NSCopying var backgroundColor: NSColor?
  func setBorderColor(color: NSColor?, forEdge edge: NSRectEdge)
  func setBorderColor(color: NSColor?)
  func borderColorForEdge(edge: NSRectEdge) -> NSColor?
  func rectForLayoutAtPoint(startingPoint: NSPoint, inRect rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRectForContentRect(contentRect: NSRect, inRect rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackgroundWithFrame(frameRect: NSRect, inView controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSTextTableBlock : NSTextBlock {
  init(table: NSTextTable, startingRow row: Int, rowSpan: Int, startingColumn col: Int, columnSpan colSpan: Int)
  var table: NSTextTable { get }
  var startingRow: Int { get }
  var rowSpan: Int { get }
  var startingColumn: Int { get }
  var columnSpan: Int { get }
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSTextTable : NSTextBlock {
  var numberOfColumns: Int
  var layoutAlgorithm: NSTextTableLayoutAlgorithm
  var collapsesBorders: Bool
  var hidesEmptyCells: Bool
  func rectForBlock(block: NSTextTableBlock, layoutAtPoint startingPoint: NSPoint, inRect rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRectForBlock(block: NSTextTableBlock, contentRect: NSRect, inRect rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackgroundForBlock(block: NSTextTableBlock, withFrame frameRect: NSRect, inView controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSSelectionGranularity : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectByCharacter
  case SelectByWord
  case SelectByParagraph
}
enum NSSelectionAffinity : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Upstream
  case Downstream
}
let NSAllRomanInputSourcesLocaleIdentifier: String
class NSTextView : NSText, NSUserInterfaceValidations, NSTextInputClient, NSTextLayoutOrientationProvider, NSDraggingSource, NSTextInput, NSAccessibilityNavigableStaticText {
  init(frame frameRect: NSRect, textContainer container: NSTextContainer?)
  init?(coder: NSCoder)
  convenience init(frame frameRect: NSRect)
  unowned(unsafe) var textContainer: @sil_unmanaged NSTextContainer?
  func replaceTextContainer(newContainer: NSTextContainer)
  var textContainerInset: NSSize
  var textContainerOrigin: NSPoint { get }
  func invalidateTextContainerOrigin()
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage? { get }
  func insertText(insertString: AnyObject)
  func setConstrainedFrameSize(desiredSize: NSSize)
  func setAlignment(alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(writingDirection: NSWritingDirection, range: NSRange)
  func turnOffKerning(sender: AnyObject?)
  func tightenKerning(sender: AnyObject?)
  func loosenKerning(sender: AnyObject?)
  func useStandardKerning(sender: AnyObject?)
  func turnOffLigatures(sender: AnyObject?)
  func useStandardLigatures(sender: AnyObject?)
  func useAllLigatures(sender: AnyObject?)
  func raiseBaseline(sender: AnyObject?)
  func lowerBaseline(sender: AnyObject?)
  func toggleTraditionalCharacterShape(sender: AnyObject?)
  func outline(sender: AnyObject?)
  func performFindPanelAction(sender: AnyObject?)
  func alignJustified(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
  func changeAttributes(sender: AnyObject?)
  func changeDocumentBackgroundColor(sender: AnyObject?)
  func orderFrontSpacingPanel(sender: AnyObject?)
  func orderFrontLinkPanel(sender: AnyObject?)
  func orderFrontListPanel(sender: AnyObject?)
  func orderFrontTablePanel(sender: AnyObject?)
  func rulerView(ruler: NSRulerView, didMoveMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, didRemoveMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, didAddMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldMoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, shouldAddMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willMoveMarker marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, shouldRemoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willAddMarker marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, handleMouseDown event: NSEvent)
  func setNeedsDisplayInRect(rect: NSRect, avoidAdditionalLayout flag: Bool)
  var shouldDrawInsertionPoint: Bool { get }
  func drawInsertionPointInRect(rect: NSRect, color: NSColor, turnedOn flag: Bool)
  func drawViewBackgroundInRect(rect: NSRect)
  func updateRuler()
  func updateFontPanel()
  func updateDragTypeRegistration()
  func selectionRangeForProposedRange(proposedCharRange: NSRange, granularity: NSSelectionGranularity) -> NSRange
  func clickedOnLink(link: AnyObject, atIndex charIndex: Int)
  func startSpeaking(sender: AnyObject?)
  func stopSpeaking(sender: AnyObject?)
  func setLayoutOrientation(theOrientation: NSTextLayoutOrientation)
  func changeLayoutOrientation(sender: AnyObject?)
  func characterIndexForInsertionAtPoint(point: NSPoint) -> Int
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func insertText(aString: AnyObject, replacementRange: NSRange)
  func doCommandBySelector(aSelector: Selector)
  func setMarkedText(aString: AnyObject, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  func attributedSubstringForProposedRange(aRange: NSRange, actualRange: NSRangePointer) -> NSAttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRectForCharacterRange(aRange: NSRange, actualRange: NSRangePointer) -> NSRect
  func characterIndexForPoint(aPoint: NSPoint) -> Int
  func attributedString() -> NSAttributedString
  func fractionOfDistanceThroughGlyphForPoint(aPoint: NSPoint) -> CGFloat
  func baselineDeltaForCharacterAtIndex(anIndex: Int) -> CGFloat
  func windowLevel() -> Int
  func drawsVerticallyForCharacterAtIndex(charIndex: Int) -> Bool
  var layoutOrientation: NSTextLayoutOrientation { get }
  func draggingSession(session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  func draggingSession(session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  func draggingSession(session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  func draggingSession(session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  func ignoreModifierKeysForDraggingSession(session: NSDraggingSession) -> Bool
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityRangeForLine(lineNumber: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityValue() -> String?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityVisibleCharacterRange() -> NSRange
}
extension NSTextView {
  func complete(sender: AnyObject?)
  var rangeForUserCompletion: NSRange { get }
  func completionsForPartialWordRange(charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]?
  func insertCompletion(word: String, forPartialWordRange charRange: NSRange, movement: Int, isFinal flag: Bool)
}
extension NSTextView {
  var writablePasteboardTypes: [String] { get }
  func writeSelectionToPasteboard(pboard: NSPasteboard, type: String) -> Bool
  func writeSelectionToPasteboard(pboard: NSPasteboard, types: [String]) -> Bool
  var readablePasteboardTypes: [String] { get }
  func preferredPasteboardTypeFromArray(availableTypes: [String], restrictedToTypesFromArray allowedTypes: [String]?) -> String?
  func readSelectionFromPasteboard(pboard: NSPasteboard, type: String) -> Bool
  func readSelectionFromPasteboard(pboard: NSPasteboard) -> Bool
  class func registerForServices()
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func pasteAsPlainText(sender: AnyObject?)
  func pasteAsRichText(sender: AnyObject?)
}
extension NSTextView {
  func dragSelectionWithEvent(event: NSEvent, offset mouseOffset: NSSize, slideBack: Bool) -> Bool
  func dragImageForSelectionWithEvent(event: NSEvent, origin: NSPointPointer) -> NSImage?
  var acceptableDragTypes: [String] { get }
  func dragOperationForDraggingInfo(dragInfo: NSDraggingInfo, type: String) -> NSDragOperation
  func cleanUpAfterDragOperation()
}
extension NSTextView {
  var selectedRanges: [NSValue]
  func setSelectedRanges(ranges: [NSValue], affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  func setSelectedRange(charRange: NSRange, affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  var selectionAffinity: NSSelectionAffinity { get }
  var selectionGranularity: NSSelectionGranularity
  var selectedTextAttributes: [String : AnyObject]
  @NSCopying var insertionPointColor: NSColor
  func updateInsertionPointStateAndRestartTimer(restartFlag: Bool)
  var markedTextAttributes: [String : AnyObject]?
  var linkTextAttributes: [String : AnyObject]?
  var displaysLinkToolTips: Bool
  var acceptsGlyphInfo: Bool
  var usesRuler: Bool
  var usesInspectorBar: Bool
  var continuousSpellCheckingEnabled: Bool
  func toggleContinuousSpellChecking(sender: AnyObject?)
  var spellCheckerDocumentTag: Int { get }
  var grammarCheckingEnabled: Bool
  func toggleGrammarChecking(sender: AnyObject?)
  func setSpellingState(value: Int, range charRange: NSRange)
  var typingAttributes: [String : AnyObject]
  func shouldChangeTextInRanges(affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  var rangesForUserTextChange: [NSValue]? { get }
  var rangesForUserCharacterAttributeChange: [NSValue]? { get }
  var rangesForUserParagraphAttributeChange: [NSValue]? { get }
  func shouldChangeTextInRange(affectedCharRange: NSRange, replacementString: String?) -> Bool
  func didChangeText()
  var rangeForUserTextChange: NSRange { get }
  var rangeForUserCharacterAttributeChange: NSRange { get }
  var rangeForUserParagraphAttributeChange: NSRange { get }
  var allowsDocumentBackgroundColorChange: Bool
  @NSCopying var defaultParagraphStyle: NSParagraphStyle?
  var allowsUndo: Bool
  func breakUndoCoalescing()
  var coalescingUndo: Bool { get }
  var allowsImageEditing: Bool
  func showFindIndicatorForRange(charRange: NSRange)
  var usesRolloverButtonForSelection: Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSTextViewDelegate?
  var editable: Bool
  var selectable: Bool
  var richText: Bool
  var importsGraphics: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  var fieldEditor: Bool
  var usesFontPanel: Bool
  var rulerVisible: Bool
  func setSelectedRange(charRange: NSRange)
  var allowedInputSourceLocales: [String]?
}
extension NSTextView {
  var smartInsertDeleteEnabled: Bool
  func smartDeleteRangeForProposedRange(proposedCharRange: NSRange) -> NSRange
  func toggleSmartInsertDelete(sender: AnyObject?)
  func smartInsertForString(pasteString: String, replacingRange charRangeToReplace: NSRange, beforeString: AutoreleasingUnsafeMutablePointer<NSString?>, afterString: AutoreleasingUnsafeMutablePointer<NSString?>)
  func smartInsertBeforeStringForString(pasteString: String, replacingRange charRangeToReplace: NSRange) -> String?
  func smartInsertAfterStringForString(pasteString: String, replacingRange charRangeToReplace: NSRange) -> String?
  var automaticQuoteSubstitutionEnabled: Bool
  func toggleAutomaticQuoteSubstitution(sender: AnyObject?)
  var automaticLinkDetectionEnabled: Bool
  func toggleAutomaticLinkDetection(sender: AnyObject?)
  var automaticDataDetectionEnabled: Bool
  func toggleAutomaticDataDetection(sender: AnyObject?)
  var automaticDashSubstitutionEnabled: Bool
  func toggleAutomaticDashSubstitution(sender: AnyObject?)
  var automaticTextReplacementEnabled: Bool
  func toggleAutomaticTextReplacement(sender: AnyObject?)
  var automaticSpellingCorrectionEnabled: Bool
  func toggleAutomaticSpellingCorrection(sender: AnyObject?)
  var enabledTextCheckingTypes: NSTextCheckingTypes
  func checkTextInRange(range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject])
  func handleTextCheckingResults(results: [NSTextCheckingResult], forRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], orthography: NSOrthography, wordCount: Int)
  func orderFrontSubstitutionsPanel(sender: AnyObject?)
  func checkTextInSelection(sender: AnyObject?)
  func checkTextInDocument(sender: AnyObject?)
  var usesFindPanel: Bool
  var usesFindBar: Bool
  var incrementalSearchingEnabled: Bool
}
extension NSTextView {
  @IBAction func toggleQuickLookPreviewPanel(sender: AnyObject?)
  func quickLookPreviewableItemsInRanges(ranges: [NSValue]) -> [AnyObject]?
  func updateQuickLookPreviewPanel()
}
extension NSTextView {
  @IBAction func orderFrontSharingServicePicker(sender: AnyObject?)
}
extension NSTextView {
}
protocol NSTextViewDelegate : NSTextDelegate {
  optional func textView(textView: NSTextView, clickedOnLink link: AnyObject, atIndex charIndex: Int) -> Bool
  optional func textView(textView: NSTextView, clickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  optional func textView(textView: NSTextView, doubleClickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  optional func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, inRect rect: NSRect, event: NSEvent, atIndex charIndex: Int)
  optional func textView(view: NSTextView, writablePasteboardTypesForCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int) -> [String]
  optional func textView(view: NSTextView, writeCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int, toPasteboard pboard: NSPasteboard, type: String) -> Bool
  optional func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  optional func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  optional func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  optional func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  optional func textViewDidChangeSelection(notification: NSNotification)
  optional func textViewDidChangeTypingAttributes(notification: NSNotification)
  optional func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAtIndex characterIndex: Int) -> String?
  optional func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  optional func textView(textView: NSTextView, shouldChangeTextInRange affectedCharRange: NSRange, replacementString: String?) -> Bool
  optional func textView(textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  optional func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  optional func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, atIndex charIndex: Int) -> NSMenu?
  optional func textView(view: NSTextView, willCheckTextInRange range: NSRange, options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  optional func textView(view: NSTextView, didCheckTextInRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], results: [NSTextCheckingResult], orthography: NSOrthography, wordCount: Int) -> [NSTextCheckingResult]
  optional func textView(textView: NSTextView, URLForContentsOfTextAttachment textAttachment: NSTextAttachment, atIndex charIndex: Int) -> NSURL?
  optional func textView(textView: NSTextView, willShowSharingServicePicker servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  optional func undoManagerForTextView(view: NSTextView) -> NSUndoManager?
}
let NSTextViewWillChangeNotifyingTextViewNotification: String
let NSTextViewDidChangeSelectionNotification: String
let NSTextViewDidChangeTypingAttributesNotification: String
enum NSFindPanelAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ShowFindPanel
  case Next
  case Previous
  case ReplaceAll
  case Replace
  case ReplaceAndFind
  case SetFindString
  case ReplaceAllInSelection
  case SelectAll
  case SelectAllInSelection
}
let NSFindPanelSearchOptionsPboardType: String
let NSFindPanelCaseInsensitiveSearch: String
let NSFindPanelSubstringMatch: String
enum NSFindPanelSubstringMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Contains
  case StartsWith
  case FullWord
  case EndsWith
}
class NSTitlebarAccessoryViewController : NSViewController {
  var layoutAttribute: NSLayoutAttribute
  var fullScreenMinHeight: CGFloat
  func viewWillAppear()
  func viewDidAppear()
  func viewDidDisappear()
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
class NSTokenField : NSTextField {
  func setDelegate(anObject: NSTokenFieldDelegate?)
  func delegate() -> NSTokenFieldDelegate?
  var tokenStyle: NSTokenStyle
  var completionDelay: NSTimeInterval
  class func defaultCompletionDelay() -> NSTimeInterval
  @NSCopying var tokenizingCharacterSet: NSCharacterSet!
  class func defaultTokenizingCharacterSet() -> NSCharacterSet
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSTokenFieldDelegate : NSTextFieldDelegate {
  optional func tokenField(tokenField: NSTokenField, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [AnyObject]?
  optional func tokenField(tokenField: NSTokenField, shouldAddObjects tokens: [AnyObject], atIndex index: Int) -> [AnyObject]
  optional func tokenField(tokenField: NSTokenField, displayStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(tokenField: NSTokenField, editingStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(tokenField: NSTokenField, representedObjectForEditingString editingString: String) -> AnyObject
  optional func tokenField(tokenField: NSTokenField, writeRepresentedObjects objects: [AnyObject], toPasteboard pboard: NSPasteboard) -> Bool
  optional func tokenField(tokenField: NSTokenField, readFromPasteboard pboard: NSPasteboard) -> [AnyObject]?
  optional func tokenField(tokenField: NSTokenField, menuForRepresentedObject representedObject: AnyObject) -> NSMenu?
  optional func tokenField(tokenField: NSTokenField, hasMenuForRepresentedObject representedObject: AnyObject) -> Bool
  optional func tokenField(tokenField: NSTokenField, styleForRepresentedObject representedObject: AnyObject) -> NSTokenStyle
}
enum NSTokenStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case None
  case Rounded
  case Squared
  case PlainSquared
}
let NSDefaultTokenStyle: NSTokenStyle
let NSPlainTextTokenStyle: NSTokenStyle
let NSRoundedTokenStyle: NSTokenStyle
class NSTokenFieldCell : NSTextFieldCell {
  var tokenStyle: NSTokenStyle
  var completionDelay: NSTimeInterval
  class func defaultCompletionDelay() -> NSTimeInterval
  @NSCopying var tokenizingCharacterSet: NSCharacterSet!
  class func defaultTokenizingCharacterSet() -> NSCharacterSet
  unowned(unsafe) var delegate: @sil_unmanaged NSTokenFieldCellDelegate?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
protocol NSTokenFieldCellDelegate : NSObjectProtocol {
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [AnyObject]
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, shouldAddObjects tokens: [AnyObject], atIndex index: Int) -> [AnyObject]
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, displayStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, editingStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, representedObjectForEditingString editingString: String) -> AnyObject
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, writeRepresentedObjects objects: [AnyObject], toPasteboard pboard: NSPasteboard) -> Bool
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, readFromPasteboard pboard: NSPasteboard) -> [AnyObject]?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, menuForRepresentedObject representedObject: AnyObject) -> NSMenu?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, hasMenuForRepresentedObject representedObject: AnyObject) -> Bool
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, styleForRepresentedObject representedObject: AnyObject) -> NSTokenStyle
}
enum NSToolbarDisplayMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case IconAndLabel
  case IconOnly
  case LabelOnly
}
enum NSToolbarSizeMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Regular
  case Small
}
class NSToolbar : NSObject {
  init(identifier: String)
  func insertItemWithItemIdentifier(itemIdentifier: String, atIndex index: Int)
  func removeItemAtIndex(index: Int)
  unowned(unsafe) var delegate: @sil_unmanaged NSToolbarDelegate?
  var visible: Bool
  func runCustomizationPalette(sender: AnyObject?)
  var customizationPaletteIsRunning: Bool { get }
  var displayMode: NSToolbarDisplayMode
  var selectedItemIdentifier: String?
  var sizeMode: NSToolbarSizeMode
  var showsBaselineSeparator: Bool
  var allowsUserCustomization: Bool
  var identifier: String { get }
  var items: [NSToolbarItem] { get }
  var visibleItems: [NSToolbarItem]? { get }
  var autosavesConfiguration: Bool
  func setConfigurationFromDictionary(configDict: [String : AnyObject])
  var configurationDictionary: [String : AnyObject] { get }
  func validateVisibleItems()
  var allowsExtensionItems: Bool
  convenience init()
}
struct __tbFlags {
  var allowsUserCustomization: UInt32
  var autosavesUsingIdentifier: UInt32
  var initialConfigurationDone: UInt32
  var doesNotAttachToMenuBar: UInt32
  var delegateDefaultItemIdentifiers: UInt32
  var delegateAllowedItemIdentifiers: UInt32
  var delegateItemWithItemIdentifier: UInt32
  var delegateNotificationsEnabled: UInt32
  var prefersToBeShown: UInt32
  var loadItemsImmediately: UInt32
  var currentItemsContainsPlaceholder: UInt32
  var customizationPanelIsRunning: UInt32
  var usesCustomSheetWidth: UInt32
  var clickAndDragPerformsCustomization: UInt32
  var showsNoContextMenu: UInt32
  var currentlyLoadingPlaceholders: UInt32
  var delegateItemWithItemIdentifier2: UInt32
  var inGlobalWindow: UInt32
  var hasOwnedFullscreenViewController: UInt32
  var usesServicesItems: UInt32
  var usingFSMetrics: UInt32
  var keyboardLoopNeedsUpdating: UInt32
  var showHideDuringConfigurationChangeDisabled: UInt32
  var displayMode: UInt32
  var sizeMode: UInt32
  var doNotShowBaselineSeparator: UInt32
  var hideWithoutResizingWindowHint: UInt32
  var autovalidatesItemsDisabled: UInt32
  var inAutovalidation: UInt32
  var loadedMetrics: UInt32
  init()
  init(allowsUserCustomization: UInt32, autosavesUsingIdentifier: UInt32, initialConfigurationDone: UInt32, doesNotAttachToMenuBar: UInt32, delegateDefaultItemIdentifiers: UInt32, delegateAllowedItemIdentifiers: UInt32, delegateItemWithItemIdentifier: UInt32, delegateNotificationsEnabled: UInt32, prefersToBeShown: UInt32, loadItemsImmediately: UInt32, currentItemsContainsPlaceholder: UInt32, customizationPanelIsRunning: UInt32, usesCustomSheetWidth: UInt32, clickAndDragPerformsCustomization: UInt32, showsNoContextMenu: UInt32, currentlyLoadingPlaceholders: UInt32, delegateItemWithItemIdentifier2: UInt32, inGlobalWindow: UInt32, hasOwnedFullscreenViewController: UInt32, usesServicesItems: UInt32, usingFSMetrics: UInt32, keyboardLoopNeedsUpdating: UInt32, showHideDuringConfigurationChangeDisabled: UInt32, displayMode: UInt32, sizeMode: UInt32, doNotShowBaselineSeparator: UInt32, hideWithoutResizingWindowHint: UInt32, autovalidatesItemsDisabled: UInt32, inAutovalidation: UInt32, loadedMetrics: UInt32)
}
protocol NSToolbarDelegate : NSObjectProtocol {
  optional func toolbar(toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  optional func toolbarDefaultItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarAllowedItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarSelectableItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarWillAddItem(notification: NSNotification)
  optional func toolbarDidRemoveItem(notification: NSNotification)
}
let NSToolbarWillAddItemNotification: String
let NSToolbarDidRemoveItemNotification: String
extension NSToolbar {
  var fullScreenAccessoryView: NSView?
  var fullScreenAccessoryViewMinHeight: CGFloat
  var fullScreenAccessoryViewMaxHeight: CGFloat
}
class NSToolbarItem : NSObject, NSCopying, NSValidatedUserInterfaceItem {
  init(itemIdentifier: String)
  var itemIdentifier: String { get }
  unowned(unsafe) var toolbar: @sil_unmanaged NSToolbar? { get }
  var label: String
  var paletteLabel: String
  var toolTip: String?
  var menuFormRepresentation: NSMenuItem?
  var tag: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var enabled: Bool
  var image: NSImage?
  var view: NSView?
  var minSize: NSSize
  var maxSize: NSSize
  var visibilityPriority: Int
  func validate()
  var autovalidates: Bool
  var allowsDuplicatesInToolbar: Bool { get }
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
struct __tbiFlags {
  var viewRespondsToIsEnabled: UInt32
  var viewRespondsToSetEnabled: UInt32
  var viewRespondsToTag: UInt32
  var viewRespondsToSetTag: UInt32
  var viewRespondsToAction: UInt32
  var viewRespondsToSetAction: UInt32
  var viewRespondsToTarget: UInt32
  var viewRespondsToSetTarget: UInt32
  var viewRespondsToImage: UInt32
  var viewRespondsToSetImage: UInt32
  var isEnabled: UInt32
  var isUserRemovable: UInt32
  var menuHasBeenSet: UInt32
  var menuRepIsDefault: UInt32
  var viewHasBeenLoaded: UInt32
  var drawingForDragImage: UInt32
  var isCustomItemType: UInt32
  var hasValidatedAutoModeConfiguration: UInt32
  var useAutoModeConfiguration: UInt32
  var fromBaseLocalizedNib: UInt32
  var autovalidationDisabled: UInt32
  var tagHasBeenSet: UInt32
  var sizeHasBeenSet: UInt32
  var stateWasDisabledBeforeSheet: UInt32
  var wantsToBeCentered: UInt32
  var RESERVED: UInt32
  init()
  init(viewRespondsToIsEnabled: UInt32, viewRespondsToSetEnabled: UInt32, viewRespondsToTag: UInt32, viewRespondsToSetTag: UInt32, viewRespondsToAction: UInt32, viewRespondsToSetAction: UInt32, viewRespondsToTarget: UInt32, viewRespondsToSetTarget: UInt32, viewRespondsToImage: UInt32, viewRespondsToSetImage: UInt32, isEnabled: UInt32, isUserRemovable: UInt32, menuHasBeenSet: UInt32, menuRepIsDefault: UInt32, viewHasBeenLoaded: UInt32, drawingForDragImage: UInt32, isCustomItemType: UInt32, hasValidatedAutoModeConfiguration: UInt32, useAutoModeConfiguration: UInt32, fromBaseLocalizedNib: UInt32, autovalidationDisabled: UInt32, tagHasBeenSet: UInt32, sizeHasBeenSet: UInt32, stateWasDisabledBeforeSheet: UInt32, wantsToBeCentered: UInt32, RESERVED: UInt32)
}
var NSToolbarItemVisibilityPriorityStandard: Int { get }
var NSToolbarItemVisibilityPriorityLow: Int { get }
var NSToolbarItemVisibilityPriorityHigh: Int { get }
var NSToolbarItemVisibilityPriorityUser: Int { get }
extension NSObject {
  class func validateToolbarItem(theItem: NSToolbarItem) -> Bool
  func validateToolbarItem(theItem: NSToolbarItem) -> Bool
}
let NSToolbarSeparatorItemIdentifier: String
let NSToolbarSpaceItemIdentifier: String
let NSToolbarFlexibleSpaceItemIdentifier: String
let NSToolbarShowColorsItemIdentifier: String
let NSToolbarShowFontsItemIdentifier: String
let NSToolbarCustomizeToolbarItemIdentifier: String
let NSToolbarPrintItemIdentifier: String
let NSToolbarToggleSidebarItemIdentifier: String
class NSToolbarItemGroup : NSToolbarItem {
  var subitems: [NSToolbarItem]
  init(itemIdentifier: String)
  convenience init()
}
struct NSTouchPhase : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Began: NSTouchPhase { get }
  static var Moved: NSTouchPhase { get }
  static var Stationary: NSTouchPhase { get }
  static var Ended: NSTouchPhase { get }
  static var Cancelled: NSTouchPhase { get }
  static var Touching: NSTouchPhase { get }
  static var Any: NSTouchPhase { get }
}
class NSTouch : NSObject, NSCopying {
  var identity: protocol<NSCopying, NSObjectProtocol> { get }
  var phase: NSTouchPhase { get }
  var normalizedPosition: NSPoint { get }
  var resting: Bool { get }
  var device: AnyObject? { get }
  var deviceSize: NSSize { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
struct NSTrackingAreaOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MouseEnteredAndExited: NSTrackingAreaOptions { get }
  static var MouseMoved: NSTrackingAreaOptions { get }
  static var CursorUpdate: NSTrackingAreaOptions { get }
  static var ActiveWhenFirstResponder: NSTrackingAreaOptions { get }
  static var ActiveInKeyWindow: NSTrackingAreaOptions { get }
  static var ActiveInActiveApp: NSTrackingAreaOptions { get }
  static var ActiveAlways: NSTrackingAreaOptions { get }
  static var AssumeInside: NSTrackingAreaOptions { get }
  static var InVisibleRect: NSTrackingAreaOptions { get }
  static var EnabledDuringMouseDrag: NSTrackingAreaOptions { get }
}
class NSTrackingArea : NSObject, NSCopying, NSCoding {
  init(rect: NSRect, options: NSTrackingAreaOptions, owner: AnyObject?, userInfo: [NSObject : AnyObject]?)
  var rect: NSRect { get }
  var options: NSTrackingAreaOptions { get }
  unowned(unsafe) var owner: @sil_unmanaged AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class NSTreeController : NSObjectController {
  func rearrangeObjects()
  var arrangedObjects: AnyObject { get }
  var childrenKeyPath: String?
  var countKeyPath: String?
  var leafKeyPath: String?
  var sortDescriptors: [NSSortDescriptor]
  var content: AnyObject?
  func add(sender: AnyObject?)
  func remove(sender: AnyObject?)
  func addChild(sender: AnyObject?)
  func insert(sender: AnyObject?)
  func insertChild(sender: AnyObject?)
  var canInsert: Bool { get }
  var canInsertChild: Bool { get }
  var canAddChild: Bool { get }
  func insertObject(object: AnyObject?, atArrangedObjectIndexPath indexPath: NSIndexPath)
  func insertObjects(objects: [AnyObject], atArrangedObjectIndexPaths indexPaths: [NSIndexPath])
  func removeObjectAtArrangedObjectIndexPath(indexPath: NSIndexPath)
  func removeObjectsAtArrangedObjectIndexPaths(indexPaths: [NSIndexPath])
  var avoidsEmptySelection: Bool
  var preservesSelection: Bool
  var selectsInsertedObjects: Bool
  var alwaysUsesMultipleValuesMarker: Bool
  var selectedObjects: [AnyObject] { get }
  func setSelectionIndexPaths(indexPaths: [NSIndexPath]) -> Bool
  var selectionIndexPaths: [NSIndexPath] { get }
  func setSelectionIndexPath(indexPath: NSIndexPath?) -> Bool
  @NSCopying var selectionIndexPath: NSIndexPath? { get }
  func addSelectionIndexPaths(indexPaths: [NSIndexPath]) -> Bool
  func removeSelectionIndexPaths(indexPaths: [NSIndexPath]) -> Bool
  var selectedNodes: [NSTreeNode] { get }
  func moveNode(node: NSTreeNode, toIndexPath indexPath: NSIndexPath)
  func moveNodes(nodes: [NSTreeNode], toIndexPath startingIndexPath: NSIndexPath)
  func childrenKeyPathForNode(node: NSTreeNode) -> String?
  func countKeyPathForNode(node: NSTreeNode) -> String?
  func leafKeyPathForNode(node: NSTreeNode) -> String?
  init(content: AnyObject?)
  init?(coder: NSCoder)
  convenience init()
}
struct __treeControllerFlags {
  var _avoidsEmptySelection: UInt32
  var _preservesSelection: UInt32
  var _selectsInsertedObjects: UInt32
  var _explicitlyCannotInsert: UInt32
  var _explicitlyCannotInsertChild: UInt32
  var _explicitlyCannotAddChild: UInt32
  var _alwaysUsesMultipleValuesMarker: UInt32
  var _observingThroughArrangedObjects: UInt32
  var _mutatingNodes: UInt32
  var _performingFetch: UInt32
  var _skipSortingAfterFetch: UInt32
  var _usesIdenticalComparisonOfModelObjects: UInt32
  var _reservedTreeController: UInt32
  init()
  init(_avoidsEmptySelection: UInt32, _preservesSelection: UInt32, _selectsInsertedObjects: UInt32, _explicitlyCannotInsert: UInt32, _explicitlyCannotInsertChild: UInt32, _explicitlyCannotAddChild: UInt32, _alwaysUsesMultipleValuesMarker: UInt32, _observingThroughArrangedObjects: UInt32, _mutatingNodes: UInt32, _performingFetch: UInt32, _skipSortingAfterFetch: UInt32, _usesIdenticalComparisonOfModelObjects: UInt32, _reservedTreeController: UInt32)
}
class NSTreeNode : NSObject {
  init(representedObject modelObject: AnyObject?)
  var representedObject: AnyObject? { get }
  var indexPath: NSIndexPath { get }
  var leaf: Bool { get }
  var childNodes: [NSTreeNode]? { get }
  var mutableChildNodes: NSMutableArray { get }
  func descendantNodeAtIndexPath(indexPath: NSIndexPath) -> NSTreeNode?
  unowned(unsafe) var parentNode: @sil_unmanaged NSTreeNode? { get }
  func sortWithSortDescriptors(sortDescriptors: [NSSortDescriptor], recursively: Bool)
  init()
}
struct __NSTreeNodeFlags {
  var ignoreObserving: UInt32
  var reserved: UInt32
  init()
  init(ignoreObserving: UInt32, reserved: UInt32)
}
struct NSTypesetterControlCharacterAction : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ZeroAdvancementAction: NSTypesetterControlCharacterAction { get }
  static var WhitespaceAction: NSTypesetterControlCharacterAction { get }
  static var HorizontalTabAction: NSTypesetterControlCharacterAction { get }
  static var LineBreakAction: NSTypesetterControlCharacterAction { get }
  static var ParagraphBreakAction: NSTypesetterControlCharacterAction { get }
  static var ContainerBreakAction: NSTypesetterControlCharacterAction { get }
}
class NSTypesetter : NSObject {
  var usesFontLeading: Bool
  var typesetterBehavior: NSTypesetterBehavior
  var hyphenationFactor: Float
  var lineFragmentPadding: CGFloat
  func substituteFontForFont(originalFont: NSFont) -> NSFont
  func textTabForGlyphLocation(glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  var paragraphCharacterRange: NSRange { get }
  var paragraphSeparatorCharacterRange: NSRange { get }
  func layoutParagraphAtPoint(lineFragmentOrigin: NSPointPointer) -> Int
  func beginParagraph()
  func endParagraph()
  func beginLineWithGlyphAtIndex(glyphIndex: Int)
  func endLineWithGlyphRange(lineGlyphRange: NSRange)
  func lineSpacingAfterGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func getLineFragmentRect(lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
  var attributesForExtraLineFragment: [String : AnyObject]? { get }
  func actionForControlCharacterAtIndex(charIndex: Int) -> NSTypesetterControlCharacterAction
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  var textContainers: [NSTextContainer]? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  @NSCopying var currentParagraphStyle: NSParagraphStyle? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func layoutGlyphsInLayoutManager(layoutManager: NSLayoutManager, startingAtGlyphIndex startGlyphIndex: Int, maxNumberOfLineFragments maxNumLines: Int, nextGlyphIndex nextGlyph: UnsafeMutablePointer<Int>)
  func layoutCharactersInRange(characterRange: NSRange, forLayoutManager layoutManager: NSLayoutManager, maximumNumberOfLineFragments maxNumLines: Int) -> NSRange
  class func printingAdjustmentInLayoutManager(layoutMgr: NSLayoutManager, forNominallySpacedGlyphRange nominallySpacedGlyphsRange: NSRange, packedGlyphs: UnsafePointer<UInt8>, count packedGlyphsCount: Int) -> NSSize
  func baselineOffsetInLayoutManager(layoutMgr: NSLayoutManager, glyphIndex: Int) -> CGFloat
  class func sharedSystemTypesetter() -> AnyObject
  class func sharedSystemTypesetterForBehavior(theBehavior: NSTypesetterBehavior) -> AnyObject
  class func defaultTypesetterBehavior() -> NSTypesetterBehavior
  init()
}
extension NSTypesetter {
  func willSetLineFragmentRect(lineRect: NSRectPointer, forGlyphRange glyphRange: NSRange, usedRect: NSRectPointer, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacterAtIndex(charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacterAtIndex(charIndex: Int) -> Bool
  func hyphenationFactorForGlyphAtIndex(glyphIndex: Int) -> Float
  func hyphenCharacterForGlyphAtIndex(glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyphAtIndex(glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSTypesetter {
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsInRange(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func getLineFragmentRect(lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, remainingRect: NSRectPointer, forStartingGlyphAtIndex startingGlyphIndex: Int, proposedRect: NSRect, lineSpacing: CGFloat, paragraphSpacingBefore: CGFloat, paragraphSpacingAfter: CGFloat)
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect, baselineOffset: CGFloat)
  func substituteGlyphsInRange(glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  func deleteGlyphsInRange(glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
var NS_USER_ACTIVITY_SUPPORTED: Int32 { get }
extension NSResponder {
  var userActivity: NSUserActivity?
  func updateUserActivityState(userActivity: NSUserActivity)
  func restoreUserActivityState(userActivity: NSUserActivity)
}
extension NSDocument {
  var userActivity: NSUserActivity?
  func updateUserActivityState(activity: NSUserActivity)
  func restoreUserActivityState(activity: NSUserActivity)
}
let NSUserActivityDocumentURLKey: String
class NSUserDefaultsController : NSController {
  class func sharedUserDefaultsController() -> NSUserDefaultsController
  init(defaults: NSUserDefaults?, initialValues: [String : AnyObject]?)
  init?(coder: NSCoder)
  var defaults: NSUserDefaults { get }
  var initialValues: [String : AnyObject]?
  var appliesImmediately: Bool
  var hasUnappliedChanges: Bool { get }
  var values: AnyObject { get }
  func revert(sender: AnyObject?)
  func save(sender: AnyObject?)
  func revertToInitialValues(sender: AnyObject?)
  convenience init()
}
struct __userDefaultsControllerFlags {
  var _sharedInstance: UInt32
  var _appliesImmediately: UInt32
  var _reservedUserDefaultsController: UInt32
  init()
  init(_sharedInstance: UInt32, _appliesImmediately: UInt32, _reservedUserDefaultsController: UInt32)
}
protocol NSUserInterfaceItemIdentification {
  var identifier: String? { get set }
}
protocol NSUserInterfaceItemSearching : NSObjectProtocol {
  func searchForItemsWithSearchString(searchString: String, resultLimit: Int, matchedItemHandler handleMatchedItems: ([AnyObject]) -> Void)
  func localizedTitlesForItem(item: AnyObject) -> [String]
  optional func performActionForItem(item: AnyObject)
  optional func showAllHelpTopicsForSearchString(searchString: String)
}
extension NSApplication {
  func registerUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  func unregisterUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  func searchString(searchString: String, inUserInterfaceItemString stringToSearch: String, searchRange: NSRange, foundRange: UnsafeMutablePointer<NSRange>) -> Bool
}
enum NSUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
enum NSUserInterfaceLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
protocol NSValidatedUserInterfaceItem {
  func action() -> Selector
  func tag() -> Int
}
protocol NSUserInterfaceValidations {
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
}
struct NSAutoresizingMaskOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ViewNotSizable: NSAutoresizingMaskOptions { get }
  static var ViewMinXMargin: NSAutoresizingMaskOptions { get }
  static var ViewWidthSizable: NSAutoresizingMaskOptions { get }
  static var ViewMaxXMargin: NSAutoresizingMaskOptions { get }
  static var ViewMinYMargin: NSAutoresizingMaskOptions { get }
  static var ViewHeightSizable: NSAutoresizingMaskOptions { get }
  static var ViewMaxYMargin: NSAutoresizingMaskOptions { get }
}
enum NSBorderType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoBorder
  case LineBorder
  case BezelBorder
  case GrooveBorder
}
enum NSViewLayerContentsRedrawPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Never
  case OnSetNeedsDisplay
  case DuringViewResize
  case BeforeViewResize
  case Crossfade
}
enum NSViewLayerContentsPlacement : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ScaleAxesIndependently
  case ScaleProportionallyToFit
  case ScaleProportionallyToFill
  case Center
  case Top
  case TopRight
  case Right
  case BottomRight
  case Bottom
  case BottomLeft
  case Left
  case TopLeft
}
struct __VFlags {
  var aboutToResize: UInt32
  var isOpaque: UInt32
  var unused3: UInt32
  var hasNotMessedWithIsFlipped: UInt32
  var ignoreHitTest: UInt32
  var specialArchiving: UInt32
  var needsDisplayForBounds: UInt32
  var isFlipped: UInt32
  var removingWithoutInvalidation: UInt32
  var needsBoundsChangeNote: UInt32
  var boundsChangeNotesSuspended: UInt32
  var unused2: UInt32
  var needsFrameChangeNote: UInt32
  var frameChangeNotesSuspended: UInt32
  var canDrawSubviewsIntoLayer: UInt32
  var allowsVibrancy: UInt32
  var needsDisplay: UInt32
  var wantsGState: UInt32
  var autoresizeSubviews: UInt32
  var autosizing: UInt32
  var rotatedOrScaledFromBase: UInt32
  var rotatedFromBase: UInt32
  init()
  init(aboutToResize: UInt32, isOpaque: UInt32, unused3: UInt32, hasNotMessedWithIsFlipped: UInt32, ignoreHitTest: UInt32, specialArchiving: UInt32, needsDisplayForBounds: UInt32, isFlipped: UInt32, removingWithoutInvalidation: UInt32, needsBoundsChangeNote: UInt32, boundsChangeNotesSuspended: UInt32, unused2: UInt32, needsFrameChangeNote: UInt32, frameChangeNotesSuspended: UInt32, canDrawSubviewsIntoLayer: UInt32, allowsVibrancy: UInt32, needsDisplay: UInt32, wantsGState: UInt32, autoresizeSubviews: UInt32, autosizing: UInt32, rotatedOrScaledFromBase: UInt32, rotatedFromBase: UInt32)
}
typealias _VFlags = __VFlags
typealias NSTrackingRectTag = Int
typealias NSToolTipTag = Int
class NSView : NSResponder, NSAnimatablePropertyContainer, NSUserInterfaceItemIdentification, NSDraggingDestination, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  unowned(unsafe) var window: @sil_unmanaged NSWindow? { get }
  unowned(unsafe) var superview: @sil_unmanaged NSView? { get }
  var subviews: [NSView]
  func isDescendantOf(aView: NSView) -> Bool
  func ancestorSharedWithView(aView: NSView) -> NSView?
  unowned(unsafe) var opaqueAncestor: @sil_unmanaged NSView? { get }
  var hidden: Bool
  var hiddenOrHasHiddenAncestor: Bool { get }
  func getRectsBeingDrawn(rects: UnsafeMutablePointer<UnsafePointer<NSRect>>, count: UnsafeMutablePointer<Int>)
  func needsToDrawRect(aRect: NSRect) -> Bool
  var wantsDefaultClipping: Bool { get }
  func viewDidHide()
  func viewDidUnhide()
  func addSubview(aView: NSView)
  func addSubview(aView: NSView, positioned place: NSWindowOrderingMode, relativeTo otherView: NSView?)
  func sortSubviewsUsingFunction(compare: @convention(c) (NSView, NSView, UnsafeMutablePointer<Void>) -> NSComparisonResult, context: UnsafeMutablePointer<Void>)
  func viewWillMoveToWindow(newWindow: NSWindow?)
  func viewDidMoveToWindow()
  func viewWillMoveToSuperview(newSuperview: NSView?)
  func viewDidMoveToSuperview()
  func didAddSubview(subview: NSView)
  func willRemoveSubview(subview: NSView)
  func removeFromSuperview()
  func replaceSubview(oldView: NSView, with newView: NSView)
  func removeFromSuperviewWithoutNeedingDisplay()
  func viewDidChangeBackingProperties()
  var postsFrameChangedNotifications: Bool
  func resizeSubviewsWithOldSize(oldSize: NSSize)
  func resizeWithOldSuperviewSize(oldSize: NSSize)
  var autoresizesSubviews: Bool
  var autoresizingMask: NSAutoresizingMaskOptions
  func setFrameOrigin(newOrigin: NSPoint)
  func setFrameSize(newSize: NSSize)
  var frame: NSRect
  var frameRotation: CGFloat
  var frameCenterRotation: CGFloat
  func setBoundsOrigin(newOrigin: NSPoint)
  func setBoundsSize(newSize: NSSize)
  var boundsRotation: CGFloat
  func translateOriginToPoint(translation: NSPoint)
  func scaleUnitSquareToSize(newUnitSize: NSSize)
  func rotateByAngle(angle: CGFloat)
  var bounds: NSRect
  var flipped: Bool { get }
  var rotatedFromBase: Bool { get }
  var rotatedOrScaledFromBase: Bool { get }
  var opaque: Bool { get }
  func convertPoint(aPoint: NSPoint, fromView aView: NSView?) -> NSPoint
  func convertPoint(aPoint: NSPoint, toView aView: NSView?) -> NSPoint
  func convertSize(aSize: NSSize, fromView aView: NSView?) -> NSSize
  func convertSize(aSize: NSSize, toView aView: NSView?) -> NSSize
  func convertRect(aRect: NSRect, fromView aView: NSView?) -> NSRect
  func convertRect(aRect: NSRect, toView aView: NSView?) -> NSRect
  func backingAlignedRect(aRect: NSRect, options: NSAlignmentOptions) -> NSRect
  func centerScanRect(aRect: NSRect) -> NSRect
  func convertPointToBacking(aPoint: NSPoint) -> NSPoint
  func convertPointFromBacking(aPoint: NSPoint) -> NSPoint
  func convertSizeToBacking(aSize: NSSize) -> NSSize
  func convertSizeFromBacking(aSize: NSSize) -> NSSize
  func convertRectToBacking(aRect: NSRect) -> NSRect
  func convertRectFromBacking(aRect: NSRect) -> NSRect
  func convertPointToLayer(aPoint: NSPoint) -> NSPoint
  func convertPointFromLayer(aPoint: NSPoint) -> NSPoint
  func convertSizeToLayer(aSize: NSSize) -> NSSize
  func convertSizeFromLayer(aSize: NSSize) -> NSSize
  func convertRectToLayer(aRect: NSRect) -> NSRect
  func convertRectFromLayer(aRect: NSRect) -> NSRect
  var canDrawConcurrently: Bool
  var canDraw: Bool { get }
  func setNeedsDisplayInRect(invalidRect: NSRect)
  var needsDisplay: Bool
  func lockFocus()
  func unlockFocus()
  func lockFocusIfCanDraw() -> Bool
  func lockFocusIfCanDrawInContext(context: NSGraphicsContext) -> Bool
  class func focusView() -> NSView?
  var visibleRect: NSRect { get }
  func display()
  func displayIfNeeded()
  func displayIfNeededIgnoringOpacity()
  func displayRect(rect: NSRect)
  func displayIfNeededInRect(rect: NSRect)
  func displayRectIgnoringOpacity(rect: NSRect)
  func displayIfNeededInRectIgnoringOpacity(rect: NSRect)
  func drawRect(dirtyRect: NSRect)
  func displayRectIgnoringOpacity(aRect: NSRect, inContext context: NSGraphicsContext)
  func bitmapImageRepForCachingDisplayInRect(rect: NSRect) -> NSBitmapImageRep?
  func cacheDisplayInRect(rect: NSRect, toBitmapImageRep bitmapImageRep: NSBitmapImageRep)
  func viewWillDraw()
  func scrollPoint(aPoint: NSPoint)
  func scrollRectToVisible(aRect: NSRect) -> Bool
  func autoscroll(theEvent: NSEvent) -> Bool
  func adjustScroll(newVisible: NSRect) -> NSRect
  func scrollRect(aRect: NSRect, by delta: NSSize)
  func translateRectsNeedingDisplayInRect(clipRect: NSRect, by delta: NSSize)
  func hitTest(aPoint: NSPoint) -> NSView?
  func mouse(aPoint: NSPoint, inRect aRect: NSRect) -> Bool
  func viewWithTag(aTag: Int) -> NSView?
  var tag: Int { get }
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  func shouldDelayWindowOrderingForEvent(theEvent: NSEvent) -> Bool
  var needsPanelToBecomeKey: Bool { get }
  var mouseDownCanMoveWindow: Bool { get }
  var acceptsTouchEvents: Bool
  var wantsRestingTouches: Bool
  func addCursorRect(aRect: NSRect, cursor anObj: NSCursor)
  func removeCursorRect(aRect: NSRect, cursor anObj: NSCursor)
  func discardCursorRects()
  func resetCursorRects()
  func addTrackingRect(aRect: NSRect, owner anObject: AnyObject, userData data: UnsafeMutablePointer<Void>, assumeInside flag: Bool) -> NSTrackingRectTag
  func removeTrackingRect(tag: NSTrackingRectTag)
  func makeBackingLayer() -> CALayer
  var layerContentsRedrawPolicy: NSViewLayerContentsRedrawPolicy
  var layerContentsPlacement: NSViewLayerContentsPlacement
  var wantsLayer: Bool
  var layer: CALayer?
  var wantsUpdateLayer: Bool { get }
  func updateLayer()
  var canDrawSubviewsIntoLayer: Bool
  var alphaValue: CGFloat
  var layerUsesCoreImageFilters: Bool
  var backgroundFilters: [CIFilter]
  var compositingFilter: CIFilter?
  var contentFilters: [CIFilter]
  @NSCopying var shadow: NSShadow?
  func addTrackingArea(trackingArea: NSTrackingArea)
  func removeTrackingArea(trackingArea: NSTrackingArea)
  var trackingAreas: [NSTrackingArea] { get }
  func updateTrackingAreas()
  var postsBoundsChangedNotifications: Bool
  var enclosingScrollView: NSScrollView? { get }
  func menuForEvent(event: NSEvent) -> NSMenu?
  class func defaultMenu() -> NSMenu?
  func willOpenMenu(menu: NSMenu, withEvent event: NSEvent)
  func didCloseMenu(menu: NSMenu, withEvent event: NSEvent?)
  var toolTip: String?
  func addToolTipRect(aRect: NSRect, owner anObject: AnyObject, userData data: UnsafeMutablePointer<Void>) -> NSToolTipTag
  func removeToolTip(tag: NSToolTipTag)
  func removeAllToolTips()
  func viewWillStartLiveResize()
  func viewDidEndLiveResize()
  var inLiveResize: Bool { get }
  var preservesContentDuringLiveResize: Bool { get }
  var rectPreservedDuringLiveResize: NSRect { get }
  func getRectsExposedDuringLiveResize(exposedRects: UnsafeMutablePointer<NSRect>, count: UnsafeMutablePointer<Int>)
  var inputContext: NSTextInputContext? { get }
  func rectForSmartMagnificationAtPoint(location: NSPoint, inRect visibleRect: NSRect) -> NSRect
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  func prepareForReuse()
  class func isCompatibleWithResponsiveScrolling() -> Bool
  func prepareContentInRect(rect: NSRect)
  var preparedContentRect: NSRect
  var allowsVibrancy: Bool { get }
  convenience init()
  func animator() -> Self
  var animations: [String : AnyObject]
  func animationForKey(key: String) -> AnyObject?
  class func defaultAnimationForKey(key: String) -> AnyObject?
  var identifier: String?
  func draggingEntered(sender: NSDraggingInfo) -> NSDragOperation
  func draggingUpdated(sender: NSDraggingInfo) -> NSDragOperation
  func draggingExited(sender: NSDraggingInfo?)
  func prepareForDragOperation(sender: NSDraggingInfo) -> Bool
  func performDragOperation(sender: NSDraggingInfo) -> Bool
  func concludeDragOperation(sender: NSDraggingInfo?)
  func draggingEnded(sender: NSDraggingInfo?)
  func wantsPeriodicDraggingUpdates() -> Bool
  func updateDraggingItemsForDrag(sender: NSDraggingInfo?)
  var appearance: NSAppearance?
  var effectiveAppearance: NSAppearance { get }
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityRangeForLine(line: Int) -> NSRange
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  func accessibilityRangeForIndex(index: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityPerformCancel() -> Bool
  func accessibilityPerformConfirm() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityPerformDelete() -> Bool
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformPick() -> Bool
  func accessibilityPerformPress() -> Bool
  func accessibilityPerformRaise() -> Bool
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func accessibilityPerformShowMenu() -> Bool
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  func isAccessibilityElement() -> Bool
  func setAccessibilityElement(accessibilityElement: Bool)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  func accessibilityActivationPoint() -> NSPoint
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  func accessibilityTopLevelUIElement() -> AnyObject?
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  func accessibilityURL() -> NSURL?
  func setAccessibilityURL(accessibilityURL: NSURL?)
  func accessibilityValue() -> AnyObject?
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  func accessibilityValueDescription() -> String?
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  func accessibilityVisibleChildren() -> [AnyObject]?
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  func accessibilitySubrole() -> String?
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  func accessibilityTitle() -> String?
  func setAccessibilityTitle(accessibilityTitle: String?)
  func accessibilityTitleUIElement() -> AnyObject?
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  func accessibilityNextContents() -> [AnyObject]?
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  func accessibilityOverflowButton() -> AnyObject?
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  func accessibilityPlaceholderValue() -> String?
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  func accessibilityPreviousContents() -> [AnyObject]?
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  func accessibilityRole() -> String?
  func setAccessibilityRole(accessibilityRole: String?)
  func accessibilityRoleDescription() -> String?
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  func accessibilitySearchButton() -> AnyObject?
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  func accessibilitySearchMenu() -> AnyObject?
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  func isAccessibilitySelected() -> Bool
  func setAccessibilitySelected(accessibilitySelected: Bool)
  func accessibilitySelectedChildren() -> [AnyObject]?
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  func accessibilityShownMenu() -> AnyObject?
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  func accessibilityMinValue() -> AnyObject?
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  func accessibilityMaxValue() -> AnyObject?
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  func accessibilityWindow() -> AnyObject?
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func accessibilityHelp() -> String?
  func setAccessibilityHelp(accessibilityHelp: String?)
  func accessibilityFilename() -> String?
  func setAccessibilityFilename(accessibilityFilename: String?)
  func isAccessibilityExpanded() -> Bool
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  func isAccessibilityEdited() -> Bool
  func setAccessibilityEdited(accessibilityEdited: Bool)
  func isAccessibilityEnabled() -> Bool
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  func accessibilityChildren() -> [AnyObject]?
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  func accessibilityClearButton() -> AnyObject?
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  func accessibilityCancelButton() -> AnyObject?
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  func isAccessibilityProtectedContent() -> Bool
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  func accessibilityContents() -> [AnyObject]?
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  func accessibilityLabel() -> String?
  func setAccessibilityLabel(accessibilityLabel: String?)
  func isAccessibilityAlternateUIVisible() -> Bool
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  func accessibilityMainWindow() -> AnyObject?
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  func isAccessibilityHidden() -> Bool
  func setAccessibilityHidden(accessibilityHidden: Bool)
  func isAccessibilityFrontmost() -> Bool
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  func accessibilityFocusedWindow() -> AnyObject?
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  func accessibilityWindows() -> [AnyObject]?
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  func accessibilityExtrasMenuBar() -> AnyObject?
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  func accessibilityMenuBar() -> AnyObject?
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  func accessibilityColumnTitles() -> [AnyObject]?
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  func isAccessibilityOrderedByRow() -> Bool
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  func accessibilityHorizontalUnitDescription() -> String?
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  func accessibilityVerticalUnitDescription() -> String?
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  func accessibilityHandles() -> [AnyObject]?
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  func accessibilityWarningValue() -> AnyObject?
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  func accessibilityCriticalValue() -> AnyObject?
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  func isAccessibilityDisclosed() -> Bool
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  func accessibilityDisclosedByRow() -> AnyObject?
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  func accessibilityDisclosedRows() -> AnyObject?
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  func accessibilityDisclosureLevel() -> Int
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  func accessibilityMarkerValues() -> AnyObject?
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  func accessibilityUnits() -> NSAccessibilityUnits
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  func accessibilityUnitDescription() -> String?
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  func accessibilityMarkerTypeDescription() -> String?
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  func accessibilityVerticalScrollBar() -> AnyObject?
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  func accessibilityAllowedValues() -> [NSNumber]?
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  func accessibilityLabelUIElements() -> [AnyObject]?
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  func accessibilityLabelValue() -> Float
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  func accessibilitySplitters() -> [AnyObject]?
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  func accessibilityDecrementButton() -> AnyObject?
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  func accessibilityIncrementButton() -> AnyObject?
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  func accessibilityTabs() -> [AnyObject]?
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  func accessibilityHeader() -> AnyObject?
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  func accessibilityColumnCount() -> Int
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  func accessibilityRowCount() -> Int
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  func accessibilityIndex() -> Int
  func setAccessibilityIndex(accessibilityIndex: Int)
  func accessibilityColumns() -> [AnyObject]?
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  func accessibilityRows() -> [AnyObject]?
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  func accessibilityVisibleRows() -> [AnyObject]?
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  func accessibilitySelectedRows() -> [AnyObject]?
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  func accessibilityVisibleColumns() -> [AnyObject]?
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  func accessibilitySelectedColumns() -> [AnyObject]?
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  func accessibilitySelectedCells() -> [AnyObject]?
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  func accessibilityVisibleCells() -> [AnyObject]?
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  func accessibilityRowIndexRange() -> NSRange
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  func accessibilityColumnIndexRange() -> NSRange
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  func accessibilityInsertionPointLineNumber() -> Int
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  func accessibilitySharedCharacterRange() -> NSRange
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  func accessibilityVisibleCharacterRange() -> NSRange
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  func accessibilityNumberOfCharacters() -> Int
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  func accessibilitySelectedText() -> String?
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  func accessibilitySelectedTextRange() -> NSRange
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  func accessibilityToolbarButton() -> AnyObject?
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  func isAccessibilityModal() -> Bool
  func setAccessibilityModal(accessibilityModal: Bool)
  func accessibilityProxy() -> AnyObject?
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  func isAccessibilityMain() -> Bool
  func setAccessibilityMain(accessibilityMain: Bool)
  func accessibilityFullScreenButton() -> AnyObject?
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  func accessibilityGrowArea() -> AnyObject?
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  func accessibilityDocument() -> String?
  func setAccessibilityDocument(accessibilityDocument: String?)
  func accessibilityDefaultButton() -> AnyObject?
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  func accessibilityCloseButton() -> AnyObject?
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  func accessibilityZoomButton() -> AnyObject?
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  func accessibilityMinimizeButton() -> AnyObject?
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  func isAccessibilityMinimized() -> Bool
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
extension NSView : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
struct __VFlags2 {
  var nextKeyViewRefCount: UInt32
  var previousKeyViewRefCount: UInt32
  var isVisibleRect: UInt32
  var hasToolTip: UInt32
  var cachedIsFlipped: UInt32
  var menuWasSet: UInt32
  init()
  init(nextKeyViewRefCount: UInt32, previousKeyViewRefCount: UInt32, isVisibleRect: UInt32, hasToolTip: UInt32, cachedIsFlipped: UInt32, menuWasSet: UInt32)
}
extension NSObject {
  class func layer(layer: CALayer, shouldInheritContentsScale newScale: CGFloat, fromWindow window: NSWindow) -> Bool
  func layer(layer: CALayer, shouldInheritContentsScale newScale: CGFloat, fromWindow window: NSWindow) -> Bool
}
extension NSObject {
  class func view(view: NSView, stringForToolTip tag: NSToolTipTag, point: NSPoint, userData data: UnsafeMutablePointer<Void>) -> String
  func view(view: NSView, stringForToolTip tag: NSToolTipTag, point: NSPoint, userData data: UnsafeMutablePointer<Void>) -> String
}
extension NSView {
  unowned(unsafe) var nextKeyView: @sil_unmanaged NSView?
  unowned(unsafe) var previousKeyView: @sil_unmanaged NSView? { get }
  unowned(unsafe) var nextValidKeyView: @sil_unmanaged NSView? { get }
  unowned(unsafe) var previousValidKeyView: @sil_unmanaged NSView? { get }
  var canBecomeKeyView: Bool { get }
  func setKeyboardFocusRingNeedsDisplayInRect(rect: NSRect)
  var focusRingType: NSFocusRingType
  class func defaultFocusRingType() -> NSFocusRingType
  func drawFocusRingMask()
  var focusRingMaskBounds: NSRect { get }
  func noteFocusRingMaskChanged()
}
extension NSView {
  func writeEPSInsideRect(rect: NSRect, toPasteboard pasteboard: NSPasteboard)
  func dataWithEPSInsideRect(rect: NSRect) -> NSData
  func writePDFInsideRect(rect: NSRect, toPasteboard pasteboard: NSPasteboard)
  func dataWithPDFInsideRect(rect: NSRect) -> NSData
  @warn_unqualified_access
  func print(sender: AnyObject?)
  func knowsPageRange(range: NSRangePointer) -> Bool
  var heightAdjustLimit: CGFloat { get }
  var widthAdjustLimit: CGFloat { get }
  func adjustPageWidthNew(newRight: UnsafeMutablePointer<CGFloat>, left oldLeft: CGFloat, right oldRight: CGFloat, limit rightLimit: CGFloat)
  func adjustPageHeightNew(newBottom: UnsafeMutablePointer<CGFloat>, top oldTop: CGFloat, bottom oldBottom: CGFloat, limit bottomLimit: CGFloat)
  func rectForPage(page: Int) -> NSRect
  func locationOfPrintRect(aRect: NSRect) -> NSPoint
  func drawPageBorderWithSize(borderSize: NSSize)
  @NSCopying var pageHeader: NSAttributedString { get }
  @NSCopying var pageFooter: NSAttributedString { get }
  func drawSheetBorderWithSize(borderSize: NSSize)
  var printJobTitle: String { get }
  func beginDocument()
  func endDocument()
  func beginPageInRect(aRect: NSRect, atPlacement location: NSPoint)
  func endPage()
}
extension NSView {
  func beginDraggingSessionWithItems(items: [NSDraggingItem], event: NSEvent, source: NSDraggingSource) -> NSDraggingSession
  var registeredDraggedTypes: [String] { get }
  func registerForDraggedTypes(newTypes: [String])
  func unregisterDraggedTypes()
  func dragFile(filename: String, fromRect rect: NSRect, slideBack aFlag: Bool, event: NSEvent) -> Bool
  func dragPromisedFilesOfTypes(typeArray: [String], fromRect rect: NSRect, source sourceObject: AnyObject, slideBack aFlag: Bool, event: NSEvent) -> Bool
}
extension NSView {
  func enterFullScreenMode(screen: NSScreen, withOptions options: [String : AnyObject]?) -> Bool
  func exitFullScreenModeWithOptions(options: [String : AnyObject]?)
  var inFullScreenMode: Bool { get }
}
let NSFullScreenModeAllScreens: String
let NSFullScreenModeSetting: String
let NSFullScreenModeWindowLevel: String
let NSFullScreenModeApplicationPresentationOptions: String
extension NSView {
  func showDefinitionForAttributedString(attrString: NSAttributedString?, atPoint textBaselineOrigin: NSPoint)
  func showDefinitionForAttributedString(attrString: NSAttributedString?, range targetRange: NSRange, options: [String : AnyObject]?, baselineOriginProvider originProvider: ((NSRange) -> NSPoint)?)
}
let NSDefinitionPresentationTypeKey: String
let NSDefinitionPresentationTypeOverlay: String
let NSDefinitionPresentationTypeDictionaryApplication: String
extension NSView {
  var drawingFindIndicator: Bool { get }
}
extension NSView {
  var gestureRecognizers: [NSGestureRecognizer]
  func addGestureRecognizer(gestureRecognizer: NSGestureRecognizer)
  func removeGestureRecognizer(gestureRecognizer: NSGestureRecognizer)
}
extension NSView {
  func shouldDrawColor() -> Bool
  func gState() -> Int
  func allocateGState()
  func releaseGState()
  func setUpGState()
  func renewGState()
}
let NSViewFrameDidChangeNotification: String
let NSViewFocusDidChangeNotification: String
let NSViewBoundsDidChangeNotification: String
let NSViewGlobalFrameDidChangeNotification: String
let NSViewDidUpdateTrackingAreasNotification: String
struct NSViewControllerTransitionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSViewControllerTransitionOptions { get }
  static var Crossfade: NSViewControllerTransitionOptions { get }
  static var SlideUp: NSViewControllerTransitionOptions { get }
  static var SlideDown: NSViewControllerTransitionOptions { get }
  static var SlideLeft: NSViewControllerTransitionOptions { get }
  static var SlideRight: NSViewControllerTransitionOptions { get }
  static var SlideForward: NSViewControllerTransitionOptions { get }
  static var SlideBackward: NSViewControllerTransitionOptions { get }
  static var AllowUserInteraction: NSViewControllerTransitionOptions { get }
}
class NSViewController : NSResponder, NSCoding, NSSeguePerforming, NSUserInterfaceItemIdentification {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  var representedObject: AnyObject?
  var title: String?
  var view: NSView
  func loadView()
  func commitEditingWithDelegate(delegate: AnyObject?, didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func commitEditing() -> Bool
  func discardEditing()
  func viewDidLoad()
  var viewLoaded: Bool { get }
  func viewWillAppear()
  func viewDidAppear()
  func viewWillDisappear()
  func viewDidDisappear()
  var preferredContentSize: NSSize
  func updateViewConstraints()
  func viewWillLayout()
  func viewDidLayout()
  convenience init()
  func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?)
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  var identifier: String?
}
extension NSViewController {
  func presentViewController(viewController: NSViewController, animator: NSViewControllerPresentationAnimator)
  func dismissViewController(viewController: NSViewController)
  @IBAction func dismissController(sender: AnyObject?)
  var presentedViewControllers: [NSViewController]? { get }
  unowned(unsafe) var presentingViewController: @sil_unmanaged NSViewController? { get }
}
extension NSViewController {
  func presentViewControllerAsSheet(viewController: NSViewController)
  func presentViewControllerAsModalWindow(viewController: NSViewController)
  func presentViewController(viewController: NSViewController, asPopoverRelativeToRect positioningRect: NSRect, ofView positioningView: NSView, preferredEdge: NSRectEdge, behavior: NSPopoverBehavior)
  func transitionFromViewController(fromViewController: NSViewController, toViewController: NSViewController, options: NSViewControllerTransitionOptions, completionHandler completion: (() -> Void)?)
}
extension NSViewController {
  var parentViewController: NSViewController? { get }
  var childViewControllers: [NSViewController]
  func addChildViewController(childViewController: NSViewController)
  func removeFromParentViewController()
  func insertChildViewController(childViewController: NSViewController, atIndex index: Int)
  func removeChildViewControllerAtIndex(index: Int)
  func preferredContentSizeDidChangeForViewController(viewController: NSViewController)
  func viewWillTransitionToSize(newSize: NSSize)
}
protocol NSViewControllerPresentationAnimator : NSObjectProtocol {
  func animatePresentationOfViewController(viewController: NSViewController, fromViewController: NSViewController)
  func animateDismissalOfViewController(viewController: NSViewController, fromViewController: NSViewController)
}
extension NSViewController {
  var storyboard: NSStoryboard? { get }
}
extension NSViewController : NSExtensionRequestHandling {
  var extensionContext: NSExtensionContext? { get }
  @IBOutlet var sourceItemView: NSView?
  var preferredScreenOrigin: NSPoint
  var preferredMinimumSize: NSSize { get }
  var preferredMaximumSize: NSSize { get }
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
enum NSVisualEffectMaterial : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AppearanceBased
  case Titlebar
  case Menu
  case Popover
  case Sidebar
  case Light
  case Dark
  case MediumLight
  case UltraDark
}
enum NSVisualEffectBlendingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BehindWindow
  case WithinWindow
}
enum NSVisualEffectState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FollowsWindowActiveState
  case Active
  case Inactive
}
class NSVisualEffectView : NSView {
  var material: NSVisualEffectMaterial
  var interiorBackgroundStyle: NSBackgroundStyle { get }
  var blendingMode: NSVisualEffectBlendingMode
  var state: NSVisualEffectState
  var maskImage: NSImage?
  func viewDidMoveToWindow()
  func viewWillMoveToWindow(newWindow: NSWindow?)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
var NSAppKitVersionNumberWithCustomSheetPosition: Double { get }
var NSAppKitVersionNumberWithDeferredWindowDisplaySupport: Double { get }
var NSBorderlessWindowMask: Int { get }
var NSTitledWindowMask: Int { get }
var NSClosableWindowMask: Int { get }
var NSMiniaturizableWindowMask: Int { get }
var NSResizableWindowMask: Int { get }
var NSTexturedBackgroundWindowMask: Int { get }
var NSUnifiedTitleAndToolbarWindowMask: Int { get }
var NSFullScreenWindowMask: Int { get }
var NSFullSizeContentViewWindowMask: Int { get }
var NSModalResponseOK: Int { get }
var NSModalResponseCancel: Int { get }
var NSDisplayWindowRunLoopOrdering: Int { get }
var NSResetCursorRectsRunLoopOrdering: Int { get }
enum NSWindowSharingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ReadOnly
  case ReadWrite
}
enum NSWindowBackingLocation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case VideoMemory
  case MainMemory
}
struct NSWindowCollectionBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Default: NSWindowCollectionBehavior { get }
  static var CanJoinAllSpaces: NSWindowCollectionBehavior { get }
  static var MoveToActiveSpace: NSWindowCollectionBehavior { get }
  static var Managed: NSWindowCollectionBehavior { get }
  static var Transient: NSWindowCollectionBehavior { get }
  static var Stationary: NSWindowCollectionBehavior { get }
  static var ParticipatesInCycle: NSWindowCollectionBehavior { get }
  static var IgnoresCycle: NSWindowCollectionBehavior { get }
  static var FullScreenPrimary: NSWindowCollectionBehavior { get }
  static var FullScreenAuxiliary: NSWindowCollectionBehavior { get }
  static var FullScreenAllowsTiling: NSWindowCollectionBehavior { get }
  static var FullScreenDisallowsTiling: NSWindowCollectionBehavior { get }
}
enum NSWindowAnimationBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case DocumentWindow
  case UtilityWindow
  case AlertPanel
}
var NSWindowNumberListAllApplications: Int { get }
var NSWindowNumberListAllSpaces: Int { get }
struct NSWindowOcclusionState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Visible: NSWindowOcclusionState { get }
}
typealias NSWindowNumberListOptions = Int
enum NSSelectionDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DirectSelection
  case SelectingNext
  case SelectingPrevious
}
enum NSWindowButton : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CloseButton
  case MiniaturizeButton
  case ZoomButton
  case ToolbarButton
  case DocumentIconButton
  case DocumentVersionsButton
  case FullScreenButton
}
enum NSWindowTitleVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Visible
  case Hidden
}
var NSEventDurationForever: Double { get }
class NSWindow : NSResponder, NSAnimatablePropertyContainer, NSUserInterfaceValidations, NSUserInterfaceItemIdentification, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  class func frameRectForContentRect(cRect: NSRect, styleMask aStyle: Int) -> NSRect
  class func contentRectForFrameRect(fRect: NSRect, styleMask aStyle: Int) -> NSRect
  class func minFrameWidthWithTitle(aTitle: String, styleMask aStyle: Int) -> CGFloat
  class func defaultDepthLimit() -> NSWindowDepth
  func frameRectForContentRect(contentRect: NSRect) -> NSRect
  func contentRectForFrameRect(frameRect: NSRect) -> NSRect
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  var title: String
  var titleVisibility: NSWindowTitleVisibility
  var titlebarAppearsTransparent: Bool
  var contentLayoutRect: NSRect { get }
  var contentLayoutGuide: AnyObject? { get }
  var titlebarAccessoryViewControllers: [NSTitlebarAccessoryViewController]
  func addTitlebarAccessoryViewController(childViewController: NSTitlebarAccessoryViewController)
  func insertTitlebarAccessoryViewController(childViewController: NSTitlebarAccessoryViewController, atIndex index: Int)
  func removeTitlebarAccessoryViewControllerAtIndex(index: Int)
  @NSCopying var representedURL: NSURL?
  var representedFilename: String
  func setTitleWithRepresentedFilename(filename: String)
  var excludedFromWindowsMenu: Bool
  var contentView: NSView?
  unowned(unsafe) var delegate: @sil_unmanaged NSWindowDelegate?
  var windowNumber: Int { get }
  var styleMask: Int
  func fieldEditor(createFlag: Bool, forObject anObject: AnyObject?) -> NSText?
  func endEditingFor(anObject: AnyObject?)
  func constrainFrameRect(frameRect: NSRect, toScreen screen: NSScreen?) -> NSRect
  func setFrame(frameRect: NSRect, display flag: Bool)
  func setContentSize(aSize: NSSize)
  func setFrameOrigin(aPoint: NSPoint)
  func setFrameTopLeftPoint(aPoint: NSPoint)
  func cascadeTopLeftFromPoint(topLeftPoint: NSPoint) -> NSPoint
  var frame: NSRect { get }
  func animationResizeTime(newFrame: NSRect) -> NSTimeInterval
  func setFrame(frameRect: NSRect, display displayFlag: Bool, animate animateFlag: Bool)
  var inLiveResize: Bool { get }
  var showsResizeIndicator: Bool
  var resizeIncrements: NSSize
  var aspectRatio: NSSize
  var contentResizeIncrements: NSSize
  var contentAspectRatio: NSSize
  func disableFlushWindow()
  func enableFlushWindow()
  var flushWindowDisabled: Bool { get }
  func flushWindow()
  func flushWindowIfNeeded()
  var viewsNeedDisplay: Bool
  func displayIfNeeded()
  func display()
  var autodisplay: Bool
  var preservesContentDuringLiveResize: Bool
  func update()
  func makeFirstResponder(aResponder: NSResponder?) -> Bool
  unowned(unsafe) var firstResponder: @sil_unmanaged NSResponder { get }
  var resizeFlags: Int { get }
  func keyDown(theEvent: NSEvent)
  func close()
  var releasedWhenClosed: Bool
  func miniaturize(sender: AnyObject?)
  func deminiaturize(sender: AnyObject?)
  var zoomed: Bool { get }
  func zoom(sender: AnyObject?)
  var miniaturized: Bool { get }
  func tryToPerform(anAction: Selector, with anObject: AnyObject?) -> Bool
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  @NSCopying var backgroundColor: NSColor!
  func setContentBorderThickness(thickness: CGFloat, forEdge edge: NSRectEdge)
  func contentBorderThicknessForEdge(edge: NSRectEdge) -> CGFloat
  func setAutorecalculatesContentBorderThickness(flag: Bool, forEdge edge: NSRectEdge)
  func autorecalculatesContentBorderThicknessForEdge(edge: NSRectEdge) -> Bool
  var movable: Bool
  var movableByWindowBackground: Bool
  var hidesOnDeactivate: Bool
  var canHide: Bool
  func center()
  func makeKeyAndOrderFront(sender: AnyObject?)
  func orderFront(sender: AnyObject?)
  func orderBack(sender: AnyObject?)
  func orderOut(sender: AnyObject?)
  func orderWindow(place: NSWindowOrderingMode, relativeTo otherWin: Int)
  func orderFrontRegardless()
  var miniwindowImage: NSImage?
  var miniwindowTitle: String!
  var dockTile: NSDockTile { get }
  var documentEdited: Bool
  var visible: Bool { get }
  var keyWindow: Bool { get }
  var mainWindow: Bool { get }
  var canBecomeKeyWindow: Bool { get }
  var canBecomeMainWindow: Bool { get }
  func makeKeyWindow()
  func makeMainWindow()
  func becomeKeyWindow()
  func resignKeyWindow()
  func becomeMainWindow()
  func resignMainWindow()
  var worksWhenModal: Bool { get }
  var preventsApplicationTerminationWhenModal: Bool
  func convertRectToScreen(aRect: NSRect) -> NSRect
  func convertRectFromScreen(aRect: NSRect) -> NSRect
  func convertRectToBacking(aRect: NSRect) -> NSRect
  func convertRectFromBacking(aRect: NSRect) -> NSRect
  func backingAlignedRect(aRect: NSRect, options: NSAlignmentOptions) -> NSRect
  var backingScaleFactor: CGFloat { get }
  func performClose(sender: AnyObject?)
  func performMiniaturize(sender: AnyObject?)
  func performZoom(sender: AnyObject?)
  var oneShot: Bool
  func dataWithEPSInsideRect(rect: NSRect) -> NSData
  func dataWithPDFInsideRect(rect: NSRect) -> NSData
  @warn_unqualified_access
  func print(sender: AnyObject?)
  func disableCursorRects()
  func enableCursorRects()
  func discardCursorRects()
  var areCursorRectsEnabled: Bool { get }
  func invalidateCursorRectsForView(aView: NSView)
  func resetCursorRects()
  var allowsToolTipsWhenApplicationIsInactive: Bool
  var backingType: NSBackingStoreType
  var level: Int
  var depthLimit: NSWindowDepth
  func setDynamicDepthLimit(flag: Bool)
  var hasDynamicDepthLimit: Bool { get }
  var screen: NSScreen? { get }
  var deepestScreen: NSScreen? { get }
  var hasShadow: Bool
  func invalidateShadow()
  var alphaValue: CGFloat
  var opaque: Bool
  var sharingType: NSWindowSharingType
  var preferredBackingLocation: NSWindowBackingLocation
  var backingLocation: NSWindowBackingLocation { get }
  var allowsConcurrentViewDrawing: Bool
  var displaysWhenScreenProfileChanges: Bool
  func disableScreenUpdatesUntilFlush()
  var canBecomeVisibleWithoutLogin: Bool
  var collectionBehavior: NSWindowCollectionBehavior
  var animationBehavior: NSWindowAnimationBehavior
  var onActiveSpace: Bool { get }
  func toggleFullScreen(sender: AnyObject?)
  var stringWithSavedFrame: String { get }
  func setFrameFromString(string: String)
  func saveFrameUsingName(name: String)
  func setFrameUsingName(name: String, force: Bool) -> Bool
  func setFrameUsingName(name: String) -> Bool
  func setFrameAutosaveName(name: String) -> Bool
  var frameAutosaveName: String { get }
  class func removeFrameUsingName(name: String)
  func cacheImageInRect(aRect: NSRect)
  func restoreCachedImage()
  func discardCachedImage()
  var minSize: NSSize
  var maxSize: NSSize
  var contentMinSize: NSSize
  var contentMaxSize: NSSize
  var minFullScreenContentSize: NSSize
  var maxFullScreenContentSize: NSSize
  func trackEventsMatchingMask(mask: NSEventMask, timeout: NSTimeInterval, mode: String, handler trackingHandler: (NSEvent, UnsafeMutablePointer<ObjCBool>) -> Void)
  func nextEventMatchingMask(mask: Int) -> NSEvent?
  func nextEventMatchingMask(mask: Int, untilDate expiration: NSDate?, inMode mode: String, dequeue deqFlag: Bool) -> NSEvent?
  func discardEventsMatchingMask(mask: Int, beforeEvent lastEvent: NSEvent?)
  func postEvent(event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  var acceptsMouseMovedEvents: Bool
  var ignoresMouseEvents: Bool
  var deviceDescription: [String : AnyObject] { get }
  func sendEvent(theEvent: NSEvent)
  var mouseLocationOutsideOfEventStream: NSPoint { get }
  unowned(unsafe) var windowController: @sil_unmanaged NSWindowController?
  func beginSheet(sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)?)
  func beginCriticalSheet(sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)?)
  func endSheet(sheetWindow: NSWindow)
  func endSheet(sheetWindow: NSWindow, returnCode: NSModalResponse)
  var sheets: [NSWindow] { get }
  var attachedSheet: NSWindow? { get }
  var sheet: Bool { get }
  var sheetParent: NSWindow? { get }
  class func standardWindowButton(b: NSWindowButton, forStyleMask styleMask: Int) -> NSButton?
  func standardWindowButton(b: NSWindowButton) -> NSButton?
  func addChildWindow(childWin: NSWindow, ordered place: NSWindowOrderingMode)
  func removeChildWindow(childWin: NSWindow)
  var childWindows: [NSWindow]? { get }
  unowned(unsafe) var parentWindow: @sil_unmanaged NSWindow?
  var graphicsContext: NSGraphicsContext? { get }
  var colorSpace: NSColorSpace?
  class func windowNumbersWithOptions(options: NSWindowNumberListOptions) -> [NSNumber]?
  class func windowNumberAtPoint(point: NSPoint, belowWindowWithWindowNumber windowNumber: Int) -> Int
  var occlusionState: NSWindowOcclusionState { get }
  var contentViewController: NSViewController?
  convenience init(contentViewController: NSViewController)
  func performWindowDragWithEvent(event: NSEvent)
  convenience init()
  init?(coder: NSCoder)
  func animator() -> Self
  var animations: [String : AnyObject]
  func animationForKey(key: String) -> AnyObject?
  class func defaultAnimationForKey(key: String) -> AnyObject?
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  var identifier: String?
  var appearance: NSAppearance?
  var effectiveAppearance: NSAppearance { get }
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityRangeForLine(line: Int) -> NSRange
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  func accessibilityRangeForIndex(index: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityPerformCancel() -> Bool
  func accessibilityPerformConfirm() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityPerformDelete() -> Bool
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformPick() -> Bool
  func accessibilityPerformPress() -> Bool
  func accessibilityPerformRaise() -> Bool
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func accessibilityPerformShowMenu() -> Bool
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  func isAccessibilityElement() -> Bool
  func setAccessibilityElement(accessibilityElement: Bool)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  func accessibilityActivationPoint() -> NSPoint
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  func accessibilityTopLevelUIElement() -> AnyObject?
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  func accessibilityURL() -> NSURL?
  func setAccessibilityURL(accessibilityURL: NSURL?)
  func accessibilityValue() -> AnyObject?
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  func accessibilityValueDescription() -> String?
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  func accessibilityVisibleChildren() -> [AnyObject]?
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  func accessibilitySubrole() -> String?
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  func accessibilityTitle() -> String?
  func setAccessibilityTitle(accessibilityTitle: String?)
  func accessibilityTitleUIElement() -> AnyObject?
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  func accessibilityNextContents() -> [AnyObject]?
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  func accessibilityOverflowButton() -> AnyObject?
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  func accessibilityPlaceholderValue() -> String?
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  func accessibilityPreviousContents() -> [AnyObject]?
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  func accessibilityRole() -> String?
  func setAccessibilityRole(accessibilityRole: String?)
  func accessibilityRoleDescription() -> String?
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  func accessibilitySearchButton() -> AnyObject?
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  func accessibilitySearchMenu() -> AnyObject?
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  func isAccessibilitySelected() -> Bool
  func setAccessibilitySelected(accessibilitySelected: Bool)
  func accessibilitySelectedChildren() -> [AnyObject]?
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  func accessibilityShownMenu() -> AnyObject?
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  func accessibilityMinValue() -> AnyObject?
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  func accessibilityMaxValue() -> AnyObject?
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  func accessibilityWindow() -> AnyObject?
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func accessibilityHelp() -> String?
  func setAccessibilityHelp(accessibilityHelp: String?)
  func accessibilityFilename() -> String?
  func setAccessibilityFilename(accessibilityFilename: String?)
  func isAccessibilityExpanded() -> Bool
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  func isAccessibilityEdited() -> Bool
  func setAccessibilityEdited(accessibilityEdited: Bool)
  func isAccessibilityEnabled() -> Bool
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  func accessibilityChildren() -> [AnyObject]?
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  func accessibilityClearButton() -> AnyObject?
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  func accessibilityCancelButton() -> AnyObject?
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  func isAccessibilityProtectedContent() -> Bool
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  func accessibilityContents() -> [AnyObject]?
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  func accessibilityLabel() -> String?
  func setAccessibilityLabel(accessibilityLabel: String?)
  func isAccessibilityAlternateUIVisible() -> Bool
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  func accessibilityMainWindow() -> AnyObject?
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  func isAccessibilityHidden() -> Bool
  func setAccessibilityHidden(accessibilityHidden: Bool)
  func isAccessibilityFrontmost() -> Bool
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  func accessibilityFocusedWindow() -> AnyObject?
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  func accessibilityWindows() -> [AnyObject]?
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  func accessibilityExtrasMenuBar() -> AnyObject?
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  func accessibilityMenuBar() -> AnyObject?
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  func accessibilityColumnTitles() -> [AnyObject]?
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  func isAccessibilityOrderedByRow() -> Bool
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  func accessibilityHorizontalUnitDescription() -> String?
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  func accessibilityVerticalUnitDescription() -> String?
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  func accessibilityHandles() -> [AnyObject]?
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  func accessibilityWarningValue() -> AnyObject?
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  func accessibilityCriticalValue() -> AnyObject?
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  func isAccessibilityDisclosed() -> Bool
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  func accessibilityDisclosedByRow() -> AnyObject?
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  func accessibilityDisclosedRows() -> AnyObject?
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  func accessibilityDisclosureLevel() -> Int
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  func accessibilityMarkerValues() -> AnyObject?
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  func accessibilityUnits() -> NSAccessibilityUnits
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  func accessibilityUnitDescription() -> String?
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  func accessibilityMarkerTypeDescription() -> String?
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  func accessibilityVerticalScrollBar() -> AnyObject?
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  func accessibilityAllowedValues() -> [NSNumber]?
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  func accessibilityLabelUIElements() -> [AnyObject]?
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  func accessibilityLabelValue() -> Float
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  func accessibilitySplitters() -> [AnyObject]?
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  func accessibilityDecrementButton() -> AnyObject?
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  func accessibilityIncrementButton() -> AnyObject?
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  func accessibilityTabs() -> [AnyObject]?
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  func accessibilityHeader() -> AnyObject?
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  func accessibilityColumnCount() -> Int
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  func accessibilityRowCount() -> Int
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  func accessibilityIndex() -> Int
  func setAccessibilityIndex(accessibilityIndex: Int)
  func accessibilityColumns() -> [AnyObject]?
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  func accessibilityRows() -> [AnyObject]?
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  func accessibilityVisibleRows() -> [AnyObject]?
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  func accessibilitySelectedRows() -> [AnyObject]?
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  func accessibilityVisibleColumns() -> [AnyObject]?
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  func accessibilitySelectedColumns() -> [AnyObject]?
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  func accessibilitySelectedCells() -> [AnyObject]?
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  func accessibilityVisibleCells() -> [AnyObject]?
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  func accessibilityRowIndexRange() -> NSRange
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  func accessibilityColumnIndexRange() -> NSRange
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  func accessibilityInsertionPointLineNumber() -> Int
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  func accessibilitySharedCharacterRange() -> NSRange
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  func accessibilityVisibleCharacterRange() -> NSRange
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  func accessibilityNumberOfCharacters() -> Int
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  func accessibilitySelectedText() -> String?
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  func accessibilitySelectedTextRange() -> NSRange
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  func accessibilityToolbarButton() -> AnyObject?
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  func isAccessibilityModal() -> Bool
  func setAccessibilityModal(accessibilityModal: Bool)
  func accessibilityProxy() -> AnyObject?
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  func isAccessibilityMain() -> Bool
  func setAccessibilityMain(accessibilityMain: Bool)
  func accessibilityFullScreenButton() -> AnyObject?
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  func accessibilityGrowArea() -> AnyObject?
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  func accessibilityDocument() -> String?
  func setAccessibilityDocument(accessibilityDocument: String?)
  func accessibilityDefaultButton() -> AnyObject?
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  func accessibilityCloseButton() -> AnyObject?
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  func accessibilityZoomButton() -> AnyObject?
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  func accessibilityMinimizeButton() -> AnyObject?
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  func isAccessibilityMinimized() -> Bool
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
struct __wFlags {
  var backing: UInt32
  var visible: UInt32
  var isMainWindow: UInt32
  var isKeyWindow: UInt32
  var hidesOnDeactivate: UInt32
  var dontFreeWhenClosed: UInt32
  var oneShot: UInt32
  var deferred: UInt32
  var cursorRectsDisabled: UInt32
  var haveFreeCursorRects: UInt32
  var validCursorRects: UInt32
  var docEdited: UInt32
  var dynamicDepthLimit: UInt32
  var worksWhenModal: UInt32
  var limitedBecomeKey: UInt32
  var needsFlush: UInt32
  var viewsNeedDisplay: UInt32
  var ignoredFirstMouse: UInt32
  var repostedFirstMouse: UInt32
  var windowDying: UInt32
  var tempHidden: UInt32
  var floatingPanel: UInt32
  var wantsToBeOnMainScreen: UInt32
  var optimizedDrawingOk: UInt32
  var optimizeDrawing: UInt32
  var titleIsRepresentedFilename: UInt32
  var excludedFromWindowsMenu: UInt32
  var depthLimit: UInt32
  var delegateReturnsValidRequestor: UInt32
  var lmouseupPending: UInt32
  var rmouseupPending: UInt32
  var wantsToDestroyRealWindow: UInt32
  var wantsToRegDragTypes: UInt32
  var sentInvalidateCursorRectsMsg: UInt32
  var avoidsActivation: UInt32
  var frameSavedUsingTitle: UInt32
  var didRegDragTypes: UInt32
  var delayedOneShot: UInt32
  var postedNeedsDisplayNote: UInt32
  var postedInvalidCursorRectsNote: UInt32
  var initialFirstResponderTempSet: UInt32
  var autodisplay: UInt32
  var tossedFirstEvent: UInt32
  var isImageCache: UInt32
  var autolayoutEngagedSomewhere: UInt32
  var hasRegisteredBackdropViews: UInt32
  var hasSubLevel: UInt32
  var keyViewSelectionDirection: UInt32
  var defaultButtonCellKETemporarilyDisabled: UInt32
  var defaultButtonCellKEDisabled: UInt32
  var menuHasBeenSet: UInt32
  var wantsToBeModal: UInt32
  var showingModalFrame: UInt32
  var isTerminating: UInt32
  var makingFirstResponderForMouseDown: UInt32
  var needsZoom: UInt32
  var sentWindowNeedsDisplayMsg: UInt32
  var unused: UInt32
  init()
  init(backing: UInt32, visible: UInt32, isMainWindow: UInt32, isKeyWindow: UInt32, hidesOnDeactivate: UInt32, dontFreeWhenClosed: UInt32, oneShot: UInt32, deferred: UInt32, cursorRectsDisabled: UInt32, haveFreeCursorRects: UInt32, validCursorRects: UInt32, docEdited: UInt32, dynamicDepthLimit: UInt32, worksWhenModal: UInt32, limitedBecomeKey: UInt32, needsFlush: UInt32, viewsNeedDisplay: UInt32, ignoredFirstMouse: UInt32, repostedFirstMouse: UInt32, windowDying: UInt32, tempHidden: UInt32, floatingPanel: UInt32, wantsToBeOnMainScreen: UInt32, optimizedDrawingOk: UInt32, optimizeDrawing: UInt32, titleIsRepresentedFilename: UInt32, excludedFromWindowsMenu: UInt32, depthLimit: UInt32, delegateReturnsValidRequestor: UInt32, lmouseupPending: UInt32, rmouseupPending: UInt32, wantsToDestroyRealWindow: UInt32, wantsToRegDragTypes: UInt32, sentInvalidateCursorRectsMsg: UInt32, avoidsActivation: UInt32, frameSavedUsingTitle: UInt32, didRegDragTypes: UInt32, delayedOneShot: UInt32, postedNeedsDisplayNote: UInt32, postedInvalidCursorRectsNote: UInt32, initialFirstResponderTempSet: UInt32, autodisplay: UInt32, tossedFirstEvent: UInt32, isImageCache: UInt32, autolayoutEngagedSomewhere: UInt32, hasRegisteredBackdropViews: UInt32, hasSubLevel: UInt32, keyViewSelectionDirection: UInt32, defaultButtonCellKETemporarilyDisabled: UInt32, defaultButtonCellKEDisabled: UInt32, menuHasBeenSet: UInt32, wantsToBeModal: UInt32, showingModalFrame: UInt32, isTerminating: UInt32, makingFirstResponderForMouseDown: UInt32, needsZoom: UInt32, sentWindowNeedsDisplayMsg: UInt32, unused: UInt32)
}
extension NSWindow {
  unowned(unsafe) var initialFirstResponder: @sil_unmanaged NSView?
  func selectNextKeyView(sender: AnyObject?)
  func selectPreviousKeyView(sender: AnyObject?)
  func selectKeyViewFollowingView(aView: NSView)
  func selectKeyViewPrecedingView(aView: NSView)
  var keyViewSelectionDirection: NSSelectionDirection { get }
  var defaultButtonCell: NSButtonCell?
  func disableKeyEquivalentForDefaultButtonCell()
  func enableKeyEquivalentForDefaultButtonCell()
  var autorecalculatesKeyViewLoop: Bool
  func recalculateKeyViewLoop()
}
extension NSWindow {
  var toolbar: NSToolbar?
  func toggleToolbarShown(sender: AnyObject?)
  func runToolbarCustomizationPalette(sender: AnyObject?)
  var showsToolbarButton: Bool
}
extension NSWindow {
  func dragImage(anImage: NSImage, at baseLocation: NSPoint, offset initialOffset: NSSize, event: NSEvent, pasteboard pboard: NSPasteboard, source sourceObj: AnyObject, slideBack slideFlag: Bool)
  func registerForDraggedTypes(newTypes: [String])
  func unregisterDraggedTypes()
}
extension NSWindow {
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
  var windowRef: UnsafeMutablePointer<Void> { get }
}
extension NSWindow {
  class func menuChanged(menu: NSMenu)
  func gState() -> Int
  func useOptimizedDrawing(flag: Bool)
  func canStoreColor() -> Bool
}
protocol NSWindowDelegate : NSObjectProtocol {
  optional func windowShouldClose(sender: AnyObject) -> Bool
  optional func windowWillReturnFieldEditor(sender: NSWindow, toObject client: AnyObject?) -> AnyObject?
  optional func windowWillResize(sender: NSWindow, toSize frameSize: NSSize) -> NSSize
  optional func windowWillUseStandardFrame(window: NSWindow, defaultFrame newFrame: NSRect) -> NSRect
  optional func windowShouldZoom(window: NSWindow, toFrame newFrame: NSRect) -> Bool
  optional func windowWillReturnUndoManager(window: NSWindow) -> NSUndoManager?
  optional func window(window: NSWindow, willPositionSheet sheet: NSWindow, usingRect rect: NSRect) -> NSRect
  optional func window(window: NSWindow, shouldPopUpDocumentPathMenu menu: NSMenu) -> Bool
  optional func window(window: NSWindow, shouldDragDocumentWithEvent event: NSEvent, from dragImageLocation: NSPoint, withPasteboard pasteboard: NSPasteboard) -> Bool
  optional func window(window: NSWindow, willUseFullScreenContentSize proposedSize: NSSize) -> NSSize
  optional func window(window: NSWindow, willUseFullScreenPresentationOptions proposedOptions: NSApplicationPresentationOptions) -> NSApplicationPresentationOptions
  optional func customWindowsToEnterFullScreenForWindow(window: NSWindow) -> [NSWindow]?
  optional func window(window: NSWindow, startCustomAnimationToEnterFullScreenWithDuration duration: NSTimeInterval)
  optional func windowDidFailToEnterFullScreen(window: NSWindow)
  optional func customWindowsToExitFullScreenForWindow(window: NSWindow) -> [NSWindow]?
  optional func window(window: NSWindow, startCustomAnimationToExitFullScreenWithDuration duration: NSTimeInterval)
  optional func customWindowsToEnterFullScreenForWindow(window: NSWindow, onScreen screen: NSScreen) -> [NSWindow]?
  optional func window(window: NSWindow, startCustomAnimationToEnterFullScreenOnScreen screen: NSScreen, withDuration duration: NSTimeInterval)
  optional func windowDidFailToExitFullScreen(window: NSWindow)
  optional func window(window: NSWindow, willResizeForVersionBrowserWithMaxPreferredSize maxPreferredFrameSize: NSSize, maxAllowedSize maxAllowedFrameSize: NSSize) -> NSSize
  optional func window(window: NSWindow, willEncodeRestorableState state: NSCoder)
  optional func window(window: NSWindow, didDecodeRestorableState state: NSCoder)
  optional func windowDidResize(notification: NSNotification)
  optional func windowDidExpose(notification: NSNotification)
  optional func windowWillMove(notification: NSNotification)
  optional func windowDidMove(notification: NSNotification)
  optional func windowDidBecomeKey(notification: NSNotification)
  optional func windowDidResignKey(notification: NSNotification)
  optional func windowDidBecomeMain(notification: NSNotification)
  optional func windowDidResignMain(notification: NSNotification)
  optional func windowWillClose(notification: NSNotification)
  optional func windowWillMiniaturize(notification: NSNotification)
  optional func windowDidMiniaturize(notification: NSNotification)
  optional func windowDidDeminiaturize(notification: NSNotification)
  optional func windowDidUpdate(notification: NSNotification)
  optional func windowDidChangeScreen(notification: NSNotification)
  optional func windowDidChangeScreenProfile(notification: NSNotification)
  optional func windowDidChangeBackingProperties(notification: NSNotification)
  optional func windowWillBeginSheet(notification: NSNotification)
  optional func windowDidEndSheet(notification: NSNotification)
  optional func windowWillStartLiveResize(notification: NSNotification)
  optional func windowDidEndLiveResize(notification: NSNotification)
  optional func windowWillEnterFullScreen(notification: NSNotification)
  optional func windowDidEnterFullScreen(notification: NSNotification)
  optional func windowWillExitFullScreen(notification: NSNotification)
  optional func windowDidExitFullScreen(notification: NSNotification)
  optional func windowWillEnterVersionBrowser(notification: NSNotification)
  optional func windowDidEnterVersionBrowser(notification: NSNotification)
  optional func windowWillExitVersionBrowser(notification: NSNotification)
  optional func windowDidExitVersionBrowser(notification: NSNotification)
  optional func windowDidChangeOcclusionState(notification: NSNotification)
}
let NSWindowDidBecomeKeyNotification: String
let NSWindowDidBecomeMainNotification: String
let NSWindowDidChangeScreenNotification: String
let NSWindowDidDeminiaturizeNotification: String
let NSWindowDidExposeNotification: String
let NSWindowDidMiniaturizeNotification: String
let NSWindowDidMoveNotification: String
let NSWindowDidResignKeyNotification: String
let NSWindowDidResignMainNotification: String
let NSWindowDidResizeNotification: String
let NSWindowDidUpdateNotification: String
let NSWindowWillCloseNotification: String
let NSWindowWillMiniaturizeNotification: String
let NSWindowWillMoveNotification: String
let NSWindowWillBeginSheetNotification: String
let NSWindowDidEndSheetNotification: String
let NSWindowDidChangeBackingPropertiesNotification: String
let NSBackingPropertyOldScaleFactorKey: String
let NSBackingPropertyOldColorSpaceKey: String
let NSWindowDidChangeScreenProfileNotification: String
let NSWindowWillStartLiveResizeNotification: String
let NSWindowDidEndLiveResizeNotification: String
let NSWindowWillEnterFullScreenNotification: String
let NSWindowDidEnterFullScreenNotification: String
let NSWindowWillExitFullScreenNotification: String
let NSWindowDidExitFullScreenNotification: String
let NSWindowWillEnterVersionBrowserNotification: String
let NSWindowDidEnterVersionBrowserNotification: String
let NSWindowWillExitVersionBrowserNotification: String
let NSWindowDidExitVersionBrowserNotification: String
let NSWindowDidChangeOcclusionStateNotification: String
var NSUnscaledWindowMask: Int { get }
class NSWindowController : NSResponder, NSCoding, NSSeguePerforming {
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  var windowNibName: String? { get }
  var windowNibPath: String? { get }
  unowned(unsafe) var owner: @sil_unmanaged AnyObject { get }
  var windowFrameAutosaveName: String?
  var shouldCascadeWindows: Bool
  unowned(unsafe) var document: @sil_unmanaged AnyObject?
  func setDocumentEdited(dirtyFlag: Bool)
  var shouldCloseDocument: Bool
  func synchronizeWindowTitleWithDocumentName()
  func windowTitleForDocumentDisplayName(displayName: String) -> String
  var contentViewController: NSViewController?
  var window: NSWindow?
  var windowLoaded: Bool { get }
  func windowWillLoad()
  func windowDidLoad()
  func loadWindow()
  func close()
  @IBAction func showWindow(sender: AnyObject?)
  convenience init()
  func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?)
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
}
struct __wcFlags {
  var shouldCloseDocument: UInt32
  var shouldCascade: UInt32
  var nibIsLoaded: UInt32
  var nibNameIsPath: UInt32
  var settingWindowsContentViewController: UInt32
  var didInitWithCoder: UInt32
  var nibIsMakingConnections: UInt32
  var sentWindowWillLoad: UInt32
  var RESERVED: UInt32
  init()
  init(shouldCloseDocument: UInt32, shouldCascade: UInt32, nibIsLoaded: UInt32, nibNameIsPath: UInt32, settingWindowsContentViewController: UInt32, didInitWithCoder: UInt32, nibIsMakingConnections: UInt32, sentWindowWillLoad: UInt32, RESERVED: UInt32)
}
extension NSWindowController {
  var storyboard: NSStoryboard? { get }
}
extension NSWindowController {
  @IBAction func dismissController(sender: AnyObject?)
}
protocol NSWindowRestoration : NSObjectProtocol {
  static func restoreWindowWithIdentifier(identifier: String, state: NSCoder, completionHandler: (NSWindow?, NSError?) -> Void)
}
extension NSDocumentController : NSWindowRestoration {
  class func restoreWindowWithIdentifier(identifier: String, state: NSCoder, completionHandler: (NSWindow?, NSError?) -> Void)
}
extension NSApplication {
  func restoreWindowWithIdentifier(identifier: String, state: NSCoder, completionHandler: (NSWindow?, NSError?) -> Void) -> Bool
}
let NSApplicationDidFinishRestoringWindowsNotification: String
extension NSWindow {
  var restorable: Bool
  var restorationClass: AnyObject.Type?
  func disableSnapshotRestoration()
  func enableSnapshotRestoration()
}
extension NSResponder {
  func encodeRestorableStateWithCoder(coder: NSCoder)
  func restoreStateWithCoder(coder: NSCoder)
  func invalidateRestorableState()
  class func restorableStateKeyPaths() -> [String]
}
extension NSApplication {
  func extendStateRestoration()
  func completeStateRestoration()
}
extension NSDocument {
  func restoreDocumentWindowWithIdentifier(identifier: String, state: NSCoder, completionHandler: (NSWindow?, NSError?) -> Void)
  func encodeRestorableStateWithCoder(coder: NSCoder)
  func restoreStateWithCoder(coder: NSCoder)
  func invalidateRestorableState()
  class func restorableStateKeyPaths() -> [String]
}
extension NSWindow {
  var hasCloseBox: Bool { get }
  var hasTitleBar: Bool { get }
  var floatingPanel: Bool { get }
  var miniaturizable: Bool { get }
  var modalPanel: Bool { get }
  var resizable: Bool { get }
  var zoomable: Bool { get }
  var orderedIndex: Int
  func setIsMiniaturized(flag: Bool)
  func setIsVisible(flag: Bool)
  func setIsZoomed(flag: Bool)
  func handleCloseScriptCommand(command: NSCloseCommand) -> AnyObject?
  func handlePrintScriptCommand(command: NSScriptCommand) -> AnyObject?
  func handleSaveScriptCommand(command: NSScriptCommand) -> AnyObject?
}
struct NSWorkspaceLaunchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AndPrint: NSWorkspaceLaunchOptions { get }
  static var WithErrorPresentation: NSWorkspaceLaunchOptions { get }
  static var InhibitingBackgroundOnly: NSWorkspaceLaunchOptions { get }
  static var WithoutAddingToRecents: NSWorkspaceLaunchOptions { get }
  static var WithoutActivation: NSWorkspaceLaunchOptions { get }
  static var Async: NSWorkspaceLaunchOptions { get }
  static var NewInstance: NSWorkspaceLaunchOptions { get }
  static var AndHide: NSWorkspaceLaunchOptions { get }
  static var AndHideOthers: NSWorkspaceLaunchOptions { get }
  static var Default: NSWorkspaceLaunchOptions { get }
  static var AllowingClassicStartup: NSWorkspaceLaunchOptions { get }
  static var PreferringClassic: NSWorkspaceLaunchOptions { get }
}
struct NSWorkspaceIconCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ExcludeQuickDrawElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
  static var Exclude10_4ElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
}
class NSWorkspace : NSObject {
  class func sharedWorkspace() -> NSWorkspace
  var notificationCenter: NSNotificationCenter { get }
  func openFile(fullPath: String) -> Bool
  func openFile(fullPath: String, withApplication appName: String?) -> Bool
  func openFile(fullPath: String, withApplication appName: String?, andDeactivate flag: Bool) -> Bool
  func openURL(url: NSURL) -> Bool
  func launchApplication(appName: String) -> Bool
  func launchApplicationAtURL(url: NSURL, options: NSWorkspaceLaunchOptions, configuration: [String : AnyObject]) throws -> NSRunningApplication
  func openURL(url: NSURL, options: NSWorkspaceLaunchOptions, configuration: [String : AnyObject]) throws -> NSRunningApplication
  func openURLs(urls: [NSURL], withApplicationAtURL applicationURL: NSURL, options: NSWorkspaceLaunchOptions, configuration: [String : AnyObject]) throws -> NSRunningApplication
  func launchApplication(appName: String, showIcon: Bool, autolaunch: Bool) -> Bool
  func fullPathForApplication(appName: String) -> String?
  func selectFile(fullPath: String?, inFileViewerRootedAtPath rootFullPath: String) -> Bool
  func activateFileViewerSelectingURLs(fileURLs: [NSURL])
  func showSearchResultsForQueryString(queryString: String) -> Bool
  func noteFileSystemChanged(path: String)
  func getInfoForFile(fullPath: String, application appName: AutoreleasingUnsafeMutablePointer<NSString?>, type: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isFilePackageAtPath(fullPath: String) -> Bool
  func iconForFile(fullPath: String) -> NSImage
  func iconForFiles(fullPaths: [String]) -> NSImage?
  func iconForFileType(fileType: String) -> NSImage
  func setIcon(image: NSImage?, forFile fullPath: String, options: NSWorkspaceIconCreationOptions) -> Bool
  var fileLabels: [String] { get }
  var fileLabelColors: [NSColor] { get }
  func recycleURLs(URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)?)
  func duplicateURLs(URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)?)
  func getFileSystemInfoForPath(fullPath: String, isRemovable removableFlag: UnsafeMutablePointer<ObjCBool>, isWritable writableFlag: UnsafeMutablePointer<ObjCBool>, isUnmountable unmountableFlag: UnsafeMutablePointer<ObjCBool>, description: AutoreleasingUnsafeMutablePointer<NSString?>, type fileSystemType: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func unmountAndEjectDeviceAtPath(path: String) -> Bool
  func unmountAndEjectDeviceAtURL(url: NSURL) throws
  func extendPowerOffBy(requested: Int) -> Int
  func hideOtherApplications()
  func URLForApplicationWithBundleIdentifier(bundleIdentifier: String) -> NSURL?
  func URLForApplicationToOpenURL(url: NSURL) -> NSURL?
  func absolutePathForAppBundleWithIdentifier(bundleIdentifier: String) -> String?
  func launchAppWithBundleIdentifier(bundleIdentifier: String, options: NSWorkspaceLaunchOptions, additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifier identifier: AutoreleasingUnsafeMutablePointer<NSNumber?>) -> Bool
  func openURLs(urls: [NSURL], withAppBundleIdentifier bundleIdentifier: String?, options: NSWorkspaceLaunchOptions, additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifiers identifiers: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  var frontmostApplication: NSRunningApplication? { get }
  var menuBarOwningApplication: NSRunningApplication? { get }
  func typeOfFile(absoluteFilePath: String) throws -> String
  func localizedDescriptionForType(typeName: String) -> String?
  func preferredFilenameExtensionForType(typeName: String) -> String?
  func filenameExtension(filenameExtension: String, isValidForType typeName: String) -> Bool
  func type(firstTypeName: String, conformsToType secondTypeName: String) -> Bool
  init()
}
extension NSWorkspace {
  func setDesktopImageURL(url: NSURL, forScreen screen: NSScreen, options: [String : AnyObject]) throws
  func desktopImageURLForScreen(screen: NSScreen) -> NSURL?
  func desktopImageOptionsForScreen(screen: NSScreen) -> [String : AnyObject]?
}
let NSWorkspaceDesktopImageScalingKey: String
let NSWorkspaceDesktopImageAllowClippingKey: String
let NSWorkspaceDesktopImageFillColorKey: String
let NSWorkspaceApplicationKey: String
let NSWorkspaceWillLaunchApplicationNotification: String
let NSWorkspaceDidLaunchApplicationNotification: String
let NSWorkspaceDidTerminateApplicationNotification: String
let NSWorkspaceDidHideApplicationNotification: String
let NSWorkspaceDidUnhideApplicationNotification: String
let NSWorkspaceDidActivateApplicationNotification: String
let NSWorkspaceDidDeactivateApplicationNotification: String
let NSWorkspaceVolumeLocalizedNameKey: String
let NSWorkspaceVolumeURLKey: String
let NSWorkspaceVolumeOldLocalizedNameKey: String
let NSWorkspaceVolumeOldURLKey: String
let NSWorkspaceDidMountNotification: String
let NSWorkspaceDidUnmountNotification: String
let NSWorkspaceWillUnmountNotification: String
let NSWorkspaceDidRenameVolumeNotification: String
let NSWorkspaceWillPowerOffNotification: String
let NSWorkspaceWillSleepNotification: String
let NSWorkspaceDidWakeNotification: String
let NSWorkspaceScreensDidSleepNotification: String
let NSWorkspaceScreensDidWakeNotification: String
let NSWorkspaceSessionDidBecomeActiveNotification: String
let NSWorkspaceSessionDidResignActiveNotification: String
let NSWorkspaceDidChangeFileLabelsNotification: String
let NSWorkspaceActiveSpaceDidChangeNotification: String
let NSWorkspaceLaunchConfigurationAppleEvent: String
let NSWorkspaceLaunchConfigurationArguments: String
let NSWorkspaceLaunchConfigurationEnvironment: String
let NSWorkspaceLaunchConfigurationArchitecture: String
extension NSWorkspace {
  func activeApplication() -> [NSObject : AnyObject]?
  func mountedLocalVolumePaths() -> [AnyObject]?
  func mountedRemovableMedia() -> [AnyObject]?
  func openFile(fullPath: String, fromImage anImage: NSImage?, at point: NSPoint, inView aView: NSView?) -> Bool
  func performFileOperation(operation: String, source: String, destination: String, files: [AnyObject], tag: UnsafeMutablePointer<Int>) -> Bool
}
let NSWorkspaceMoveOperation: String
let NSWorkspaceCopyOperation: String
let NSWorkspaceLinkOperation: String
let NSWorkspaceCompressOperation: String
let NSWorkspaceDecompressOperation: String
let NSWorkspaceEncryptOperation: String
let NSWorkspaceDecryptOperation: String
let NSWorkspaceDestroyOperation: String
let NSWorkspaceRecycleOperation: String
let NSWorkspaceDuplicateOperation: String
let NSWorkspaceDidPerformFileOperationNotification: String
