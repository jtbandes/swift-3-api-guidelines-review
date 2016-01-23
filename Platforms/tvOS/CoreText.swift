
func CTGetCoreTextVersion() -> UInt32
var kCTVersionNumber10_5: Int32 { get }
var kCTVersionNumber10_5_2: Int32 { get }
var kCTVersionNumber10_5_3: Int32 { get }
var kCTVersionNumber10_5_5: Int32 { get }
var kCTVersionNumber10_6: Int32 { get }
var kCTVersionNumber10_7: Int32 { get }
var kCTVersionNumber10_8: Int32 { get }
var kCTVersionNumber10_9: Int32 { get }
var kCTVersionNumber10_10: Int32 { get }
var kCTVersionNumber10_11: Int32 { get }
typealias CTFontRef = CTFont
class CTFont {
}
func CTFontGetTypeID() -> CFTypeID
let kCTFontCopyrightNameKey: CFString
let kCTFontFamilyNameKey: CFString
let kCTFontSubFamilyNameKey: CFString
let kCTFontStyleNameKey: CFString
let kCTFontUniqueNameKey: CFString
let kCTFontFullNameKey: CFString
let kCTFontVersionNameKey: CFString
let kCTFontPostScriptNameKey: CFString
let kCTFontTrademarkNameKey: CFString
let kCTFontManufacturerNameKey: CFString
let kCTFontDesignerNameKey: CFString
let kCTFontDescriptionNameKey: CFString
let kCTFontVendorURLNameKey: CFString
let kCTFontDesignerURLNameKey: CFString
let kCTFontLicenseNameKey: CFString
let kCTFontLicenseURLNameKey: CFString
let kCTFontSampleTextNameKey: CFString
let kCTFontPostScriptCIDNameKey: CFString
func CTFontCreateWithName(name: CFString?, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont
func CTFontCreateWithFontDescriptor(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont
struct CTFontOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Default: CTFontOptions { get }
  static var PreventAutoActivation: CTFontOptions { get }
  static var PreferSystemFont: CTFontOptions { get }
}
func CTFontCreateWithNameAndOptions(name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont
func CTFontCreateWithFontDescriptorAndOptions(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont
enum CTFontUIFontType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case User
  case UserFixedPitch
  case System
  case EmphasizedSystem
  case SmallSystem
  case SmallEmphasizedSystem
  case MiniSystem
  case MiniEmphasizedSystem
  case Views
  case Application
  case Label
  case MenuTitle
  case MenuItem
  case MenuItemMark
  case MenuItemCmdKey
  case WindowTitle
  case PushButton
  case UtilityWindowTitle
  case AlertHeader
  case SystemDetail
  case EmphasizedSystemDetail
  case Toolbar
  case SmallToolbar
  case Message
  case Palette
  case ToolTip
  case ControlContent
  static var kCTFontNoFontType: CTFontUIFontType { get }
  static var kCTFontUserFontType: CTFontUIFontType { get }
  static var kCTFontUserFixedPitchFontType: CTFontUIFontType { get }
  static var kCTFontSystemFontType: CTFontUIFontType { get }
  static var kCTFontEmphasizedSystemFontType: CTFontUIFontType { get }
  static var kCTFontSmallSystemFontType: CTFontUIFontType { get }
  static var kCTFontSmallEmphasizedSystemFontType: CTFontUIFontType { get }
  static var kCTFontMiniSystemFontType: CTFontUIFontType { get }
  static var kCTFontMiniEmphasizedSystemFontType: CTFontUIFontType { get }
  static var kCTFontViewsFontType: CTFontUIFontType { get }
  static var kCTFontApplicationFontType: CTFontUIFontType { get }
  static var kCTFontLabelFontType: CTFontUIFontType { get }
  static var kCTFontMenuTitleFontType: CTFontUIFontType { get }
  static var kCTFontMenuItemFontType: CTFontUIFontType { get }
  static var kCTFontMenuItemMarkFontType: CTFontUIFontType { get }
  static var kCTFontMenuItemCmdKeyFontType: CTFontUIFontType { get }
  static var kCTFontWindowTitleFontType: CTFontUIFontType { get }
  static var kCTFontPushButtonFontType: CTFontUIFontType { get }
  static var kCTFontUtilityWindowTitleFontType: CTFontUIFontType { get }
  static var kCTFontAlertHeaderFontType: CTFontUIFontType { get }
  static var kCTFontSystemDetailFontType: CTFontUIFontType { get }
  static var kCTFontEmphasizedSystemDetailFontType: CTFontUIFontType { get }
  static var kCTFontToolbarFontType: CTFontUIFontType { get }
  static var kCTFontSmallToolbarFontType: CTFontUIFontType { get }
  static var kCTFontMessageFontType: CTFontUIFontType { get }
  static var kCTFontPaletteFontType: CTFontUIFontType { get }
  static var kCTFontToolTipFontType: CTFontUIFontType { get }
  static var kCTFontControlContentFontType: CTFontUIFontType { get }
}
func CTFontCreateUIFontForLanguage(uiType: CTFontUIFontType, _ size: CGFloat, _ language: CFString?) -> CTFont?
func CTFontCreateCopyWithAttributes(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont
func CTFontCreateCopyWithSymbolicTraits(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFont?
func CTFontCreateCopyWithFamily(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ family: CFString) -> CTFont?
func CTFontCreateForString(currentFont: CTFont, _ string: CFString, _ range: CFRange) -> CTFont
func CTFontCopyFontDescriptor(font: CTFont) -> CTFontDescriptor
func CTFontCopyAttribute(font: CTFont, _ attribute: CFString) -> AnyObject?
func CTFontGetSize(font: CTFont) -> CGFloat
func CTFontGetMatrix(font: CTFont) -> CGAffineTransform
func CTFontGetSymbolicTraits(font: CTFont) -> CTFontSymbolicTraits
func CTFontCopyTraits(font: CTFont) -> CFDictionary
func CTFontCopyPostScriptName(font: CTFont) -> CFString
func CTFontCopyFamilyName(font: CTFont) -> CFString
func CTFontCopyFullName(font: CTFont) -> CFString
func CTFontCopyDisplayName(font: CTFont) -> CFString
func CTFontCopyName(font: CTFont, _ nameKey: CFString) -> CFString?
func CTFontCopyLocalizedName(font: CTFont, _ nameKey: CFString, _ actualLanguage: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFString?
func CTFontCopyCharacterSet(font: CTFont) -> CFCharacterSet
func CTFontGetStringEncoding(font: CTFont) -> CFStringEncoding
func CTFontCopySupportedLanguages(font: CTFont) -> CFArray
func CTFontGetGlyphsForCharacters(font: CTFont, _ characters: UnsafePointer<UniChar>, _ glyphs: UnsafeMutablePointer<CGGlyph>, _ count: CFIndex) -> Bool
func CTFontGetAscent(font: CTFont) -> CGFloat
func CTFontGetDescent(font: CTFont) -> CGFloat
func CTFontGetLeading(font: CTFont) -> CGFloat
func CTFontGetUnitsPerEm(font: CTFont) -> UInt32
func CTFontGetGlyphCount(font: CTFont) -> CFIndex
func CTFontGetBoundingBox(font: CTFont) -> CGRect
func CTFontGetUnderlinePosition(font: CTFont) -> CGFloat
func CTFontGetUnderlineThickness(font: CTFont) -> CGFloat
func CTFontGetSlantAngle(font: CTFont) -> CGFloat
func CTFontGetCapHeight(font: CTFont) -> CGFloat
func CTFontGetXHeight(font: CTFont) -> CGFloat
func CTFontGetGlyphWithName(font: CTFont, _ glyphName: CFString) -> CGGlyph
func CTFontGetBoundingRectsForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex) -> CGRect
func CTFontGetOpticalBoundsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex, _ options: CFOptionFlags) -> CGRect
func CTFontGetAdvancesForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafeMutablePointer<CGSize>, _ count: CFIndex) -> Double
func CTFontGetVerticalTranslationsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ translations: UnsafeMutablePointer<CGSize>, _ count: CFIndex)
func CTFontCreatePathForGlyph(font: CTFont, _ glyph: CGGlyph, _ matrix: UnsafePointer<CGAffineTransform>) -> CGPath?
let kCTFontVariationAxisIdentifierKey: CFString
let kCTFontVariationAxisMinimumValueKey: CFString
let kCTFontVariationAxisMaximumValueKey: CFString
let kCTFontVariationAxisDefaultValueKey: CFString
let kCTFontVariationAxisNameKey: CFString
func CTFontCopyVariationAxes(font: CTFont) -> CFArray?
func CTFontCopyVariation(font: CTFont) -> CFDictionary?
let kCTFontOpenTypeFeatureTag: CFString
let kCTFontOpenTypeFeatureValue: CFString
let kCTFontFeatureTypeIdentifierKey: CFString
let kCTFontFeatureTypeNameKey: CFString
let kCTFontFeatureTypeExclusiveKey: CFString
let kCTFontFeatureTypeSelectorsKey: CFString
let kCTFontFeatureSelectorIdentifierKey: CFString
let kCTFontFeatureSelectorNameKey: CFString
let kCTFontFeatureSelectorDefaultKey: CFString
let kCTFontFeatureSelectorSettingKey: CFString
func CTFontCopyFeatures(font: CTFont) -> CFArray?
func CTFontCopyFeatureSettings(font: CTFont) -> CFArray?
func CTFontCopyGraphicsFont(font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>) -> CGFont
func CTFontCreateWithGraphicsFont(graphicsFont: CGFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont
typealias ATSFontRef = UInt32
var ATSFONTREF_DEFINED: Int32 { get }
var kCTFontTableBASE: Int { get }
var kCTFontTableCFF: Int { get }
var kCTFontTableDSIG: Int { get }
var kCTFontTableEBDT: Int { get }
var kCTFontTableEBLC: Int { get }
var kCTFontTableEBSC: Int { get }
var kCTFontTableGDEF: Int { get }
var kCTFontTableGPOS: Int { get }
var kCTFontTableGSUB: Int { get }
var kCTFontTableJSTF: Int { get }
var kCTFontTableLTSH: Int { get }
var kCTFontTableMATH: Int { get }
var kCTFontTableOS2: Int { get }
var kCTFontTablePCLT: Int { get }
var kCTFontTableVDMX: Int { get }
var kCTFontTableVORG: Int { get }
var kCTFontTableZapf: Int { get }
var kCTFontTableAcnt: Int { get }
var kCTFontTableAnkr: Int { get }
var kCTFontTableAvar: Int { get }
var kCTFontTableBdat: Int { get }
var kCTFontTableBhed: Int { get }
var kCTFontTableBloc: Int { get }
var kCTFontTableBsln: Int { get }
var kCTFontTableCmap: Int { get }
var kCTFontTableCvar: Int { get }
var kCTFontTableCvt: Int { get }
var kCTFontTableFdsc: Int { get }
var kCTFontTableFeat: Int { get }
var kCTFontTableFmtx: Int { get }
var kCTFontTableFpgm: Int { get }
var kCTFontTableFvar: Int { get }
var kCTFontTableGasp: Int { get }
var kCTFontTableGlyf: Int { get }
var kCTFontTableGvar: Int { get }
var kCTFontTableHdmx: Int { get }
var kCTFontTableHead: Int { get }
var kCTFontTableHhea: Int { get }
var kCTFontTableHmtx: Int { get }
var kCTFontTableHsty: Int { get }
var kCTFontTableJust: Int { get }
var kCTFontTableKern: Int { get }
var kCTFontTableKerx: Int { get }
var kCTFontTableLcar: Int { get }
var kCTFontTableLtag: Int { get }
var kCTFontTableLoca: Int { get }
var kCTFontTableMaxp: Int { get }
var kCTFontTableMort: Int { get }
var kCTFontTableMorx: Int { get }
var kCTFontTableName: Int { get }
var kCTFontTableOpbd: Int { get }
var kCTFontTablePost: Int { get }
var kCTFontTablePrep: Int { get }
var kCTFontTableProp: Int { get }
var kCTFontTableSbit: Int { get }
var kCTFontTableSbix: Int { get }
var kCTFontTableTrak: Int { get }
var kCTFontTableVhea: Int { get }
var kCTFontTableVmtx: Int { get }
typealias CTFontTableTag = FourCharCode
struct CTFontTableOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NoOptions: CTFontTableOptions { get }
}
func CTFontCopyAvailableTables(font: CTFont, _ options: CTFontTableOptions) -> CFArray?
func CTFontCopyTable(font: CTFont, _ table: CTFontTableTag, _ options: CTFontTableOptions) -> CFData?
func CTFontDrawGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ positions: UnsafePointer<CGPoint>, _ count: Int, _ context: CGContext)
func CTFontGetLigatureCaretPositions(font: CTFont, _ glyph: CGGlyph, _ positions: UnsafeMutablePointer<CGFloat>, _ maxPositions: CFIndex) -> CFIndex
let kCTBaselineClassRoman: CFString
let kCTBaselineClassIdeographicCentered: CFString
let kCTBaselineClassIdeographicLow: CFString
let kCTBaselineClassIdeographicHigh: CFString
let kCTBaselineClassHanging: CFString
let kCTBaselineClassMath: CFString
let kCTBaselineReferenceFont: CFString
let kCTBaselineOriginalFont: CFString
func CTFontCopyDefaultCascadeListForLanguages(font: CTFont, _ languagePrefList: CFArray?) -> CFArray?
class CTFontCollection {
}
typealias CTFontCollectionRef = CTFontCollection
typealias CTMutableFontCollectionRef = CTMutableFontCollection
class CTMutableFontCollection {
}
func CTFontCollectionGetTypeID() -> CFTypeID
typealias CTFontCollectionSortDescriptorsCallback = @convention(c) (CTFontDescriptor, CTFontDescriptor, UnsafeMutablePointer<Void>) -> CFComparisonResult
let kCTFontCollectionRemoveDuplicatesOption: CFString
func CTFontCollectionCreateFromAvailableFonts(options: CFDictionary?) -> CTFontCollection
func CTFontCollectionCreateWithFontDescriptors(queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
func CTFontCollectionCreateCopyWithFontDescriptors(original: CTFontCollection, _ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
func CTFontCollectionCreateMatchingFontDescriptors(collection: CTFontCollection) -> CFArray?
func CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback(collection: CTFontCollection, _ sortCallback: CTFontCollectionSortDescriptorsCallback?, _ refCon: UnsafeMutablePointer<Void>) -> CFArray?
class CTFontDescriptor {
}
typealias CTFontDescriptorRef = CTFontDescriptor
func CTFontDescriptorGetTypeID() -> CFTypeID
let kCTFontURLAttribute: CFString
let kCTFontNameAttribute: CFString
let kCTFontDisplayNameAttribute: CFString
let kCTFontFamilyNameAttribute: CFString
let kCTFontStyleNameAttribute: CFString
let kCTFontTraitsAttribute: CFString
let kCTFontVariationAttribute: CFString
let kCTFontSizeAttribute: CFString
let kCTFontMatrixAttribute: CFString
let kCTFontCascadeListAttribute: CFString
let kCTFontCharacterSetAttribute: CFString
let kCTFontLanguagesAttribute: CFString
let kCTFontBaselineAdjustAttribute: CFString
let kCTFontMacintoshEncodingsAttribute: CFString
let kCTFontFeaturesAttribute: CFString
let kCTFontFeatureSettingsAttribute: CFString
let kCTFontFixedAdvanceAttribute: CFString
let kCTFontOrientationAttribute: CFString
enum CTFontOrientation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case Horizontal
  case Vertical
  static var kCTFontDefaultOrientation: CTFontOrientation { get }
  static var kCTFontHorizontalOrientation: CTFontOrientation { get }
  static var kCTFontVerticalOrientation: CTFontOrientation { get }
}
let kCTFontFormatAttribute: CFString
enum CTFontFormat : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unrecognized
  case OpenTypePostScript
  case OpenTypeTrueType
  case TrueType
  case PostScript
  case Bitmap
}
let kCTFontRegistrationScopeAttribute: CFString
let kCTFontPriorityAttribute: CFString
var kCTFontPrioritySystem: Int { get }
var kCTFontPriorityNetwork: Int { get }
var kCTFontPriorityComputer: Int { get }
var kCTFontPriorityUser: Int { get }
var kCTFontPriorityDynamic: Int { get }
var kCTFontPriorityProcess: Int { get }
typealias CTFontPriority = UInt32
let kCTFontEnabledAttribute: CFString
let kCTFontDownloadableAttribute: CFString
let kCTFontDownloadedAttribute: CFString
func CTFontDescriptorCreateWithNameAndSize(name: CFString, _ size: CGFloat) -> CTFontDescriptor
func CTFontDescriptorCreateWithAttributes(attributes: CFDictionary) -> CTFontDescriptor
func CTFontDescriptorCreateCopyWithAttributes(original: CTFontDescriptor, _ attributes: CFDictionary) -> CTFontDescriptor
func CTFontDescriptorCreateCopyWithFamily(original: CTFontDescriptor, _ family: CFString) -> CTFontDescriptor?
func CTFontDescriptorCreateCopyWithSymbolicTraits(original: CTFontDescriptor, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFontDescriptor?
func CTFontDescriptorCreateCopyWithVariation(original: CTFontDescriptor, _ variationIdentifier: CFNumber, _ variationValue: CGFloat) -> CTFontDescriptor
func CTFontDescriptorCreateCopyWithFeature(original: CTFontDescriptor, _ featureTypeIdentifier: CFNumber, _ featureSelectorIdentifier: CFNumber) -> CTFontDescriptor
func CTFontDescriptorCreateMatchingFontDescriptors(descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CFArray?
func CTFontDescriptorCreateMatchingFontDescriptor(descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CTFontDescriptor?
enum CTFontDescriptorMatchingState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case DidBegin
  case DidFinish
  case WillBeginQuerying
  case Stalled
  case WillBeginDownloading
  case Downloading
  case DidFinishDownloading
  case DidMatch
  case DidFailWithError
}
let kCTFontDescriptorMatchingSourceDescriptor: CFString
let kCTFontDescriptorMatchingDescriptors: CFString
let kCTFontDescriptorMatchingResult: CFString
let kCTFontDescriptorMatchingPercentage: CFString
let kCTFontDescriptorMatchingCurrentAssetSize: CFString
let kCTFontDescriptorMatchingTotalDownloadedSize: CFString
let kCTFontDescriptorMatchingTotalAssetSize: CFString
let kCTFontDescriptorMatchingError: CFString
typealias CTFontDescriptorProgressHandler = (CTFontDescriptorMatchingState, CFDictionary) -> Bool
func CTFontDescriptorMatchFontDescriptorsWithProgressHandler(descriptors: CFArray, _ mandatoryAttributes: CFSet?, _ progressBlock: CTFontDescriptorProgressHandler) -> Bool
func CTFontDescriptorCopyAttributes(descriptor: CTFontDescriptor) -> CFDictionary
func CTFontDescriptorCopyAttribute(descriptor: CTFontDescriptor, _ attribute: CFString) -> AnyObject?
func CTFontDescriptorCopyLocalizedAttribute(descriptor: CTFontDescriptor, _ attribute: CFString, _ language: UnsafeMutablePointer<Unmanaged<CFString>?>) -> AnyObject?
func CTFontManagerCreateFontDescriptorsFromURL(fileURL: CFURL) -> CFArray?
func CTFontManagerCreateFontDescriptorFromData(data: CFData) -> CTFontDescriptor?
enum CTFontManagerScope : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Process
  case User
  case Session
}
func CTFontManagerRegisterFontsForURL(fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CTFontManagerUnregisterFontsForURL(fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CTFontManagerRegisterGraphicsFont(font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CTFontManagerUnregisterGraphicsFont(font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CTFontManagerRegisterFontsForURLs(fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool
func CTFontManagerUnregisterFontsForURLs(fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool
enum CTFontManagerAutoActivationSetting : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case Disabled
  case Enabled
  case PromptUser
}
let kCTFontManagerRegisteredFontsChangedNotification: CFString
let kCTFontManagerErrorDomain: CFString
let kCTFontManagerErrorFontURLsKey: CFString
enum CTFontManagerError : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case FileNotFound
  case InsufficientPermissions
  case UnrecognizedFormat
  case InvalidFontData
  case AlreadyRegistered
  case NotRegistered
  case InUse
  case SystemRequired
}
let kCTFontSymbolicTrait: CFString
let kCTFontWeightTrait: CFString
let kCTFontWidthTrait: CFString
let kCTFontSlantTrait: CFString
var kCTFontClassMaskShift: Int { get }
struct CTFontSymbolicTraits : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TraitItalic: CTFontSymbolicTraits { get }
  static var TraitBold: CTFontSymbolicTraits { get }
  static var TraitExpanded: CTFontSymbolicTraits { get }
  static var TraitCondensed: CTFontSymbolicTraits { get }
  static var TraitMonoSpace: CTFontSymbolicTraits { get }
  static var TraitVertical: CTFontSymbolicTraits { get }
  static var TraitUIOptimized: CTFontSymbolicTraits { get }
  static var TraitColorGlyphs: CTFontSymbolicTraits { get }
  static var TraitComposite: CTFontSymbolicTraits { get }
  static var TraitClassMask: CTFontSymbolicTraits { get }
  static var ItalicTrait: CTFontSymbolicTraits { get }
  static var BoldTrait: CTFontSymbolicTraits { get }
  static var ExpandedTrait: CTFontSymbolicTraits { get }
  static var CondensedTrait: CTFontSymbolicTraits { get }
  static var MonoSpaceTrait: CTFontSymbolicTraits { get }
  static var VerticalTrait: CTFontSymbolicTraits { get }
  static var UIOptimizedTrait: CTFontSymbolicTraits { get }
  static var ColorGlyphsTrait: CTFontSymbolicTraits { get }
  static var CompositeTrait: CTFontSymbolicTraits { get }
  static var ClassMaskTrait: CTFontSymbolicTraits { get }
}
struct CTFontStylisticClass : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ClassUnknown: CTFontStylisticClass { get }
  static var ClassOldStyleSerifs: CTFontStylisticClass { get }
  static var ClassTransitionalSerifs: CTFontStylisticClass { get }
  static var ClassModernSerifs: CTFontStylisticClass { get }
  static var ClassClarendonSerifs: CTFontStylisticClass { get }
  static var ClassSlabSerifs: CTFontStylisticClass { get }
  static var ClassFreeformSerifs: CTFontStylisticClass { get }
  static var ClassSansSerif: CTFontStylisticClass { get }
  static var ClassOrnamentals: CTFontStylisticClass { get }
  static var ClassScripts: CTFontStylisticClass { get }
  static var ClassSymbolic: CTFontStylisticClass { get }
  static var UnknownClass: CTFontStylisticClass { get }
  static var OldStyleSerifsClass: CTFontStylisticClass { get }
  static var TransitionalSerifsClass: CTFontStylisticClass { get }
  static var ModernSerifsClass: CTFontStylisticClass { get }
  static var ClarendonSerifsClass: CTFontStylisticClass { get }
  static var SlabSerifsClass: CTFontStylisticClass { get }
  static var FreeformSerifsClass: CTFontStylisticClass { get }
  static var SansSerifClass: CTFontStylisticClass { get }
  static var OrnamentalsClass: CTFontStylisticClass { get }
  static var ScriptsClass: CTFontStylisticClass { get }
  static var SymbolicClass: CTFontStylisticClass { get }
}
class CTFrame {
}
typealias CTFrameRef = CTFrame
func CTFrameGetTypeID() -> CFTypeID
enum CTFrameProgression : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TopToBottom
  case RightToLeft
  case LeftToRight
}
let kCTFrameProgressionAttributeName: CFString
enum CTFramePathFillRule : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case EvenOdd
  case WindingNumber
}
let kCTFramePathFillRuleAttributeName: CFString
let kCTFramePathWidthAttributeName: CFString
let kCTFrameClippingPathsAttributeName: CFString
let kCTFramePathClippingPathAttributeName: CFString
func CTFrameGetStringRange(frame: CTFrame) -> CFRange
func CTFrameGetVisibleStringRange(frame: CTFrame) -> CFRange
func CTFrameGetPath(frame: CTFrame) -> CGPath
func CTFrameGetFrameAttributes(frame: CTFrame) -> CFDictionary?
func CTFrameGetLines(frame: CTFrame) -> CFArray
func CTFrameGetLineOrigins(frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)
func CTFrameDraw(frame: CTFrame, _ context: CGContext)
class CTFramesetter {
}
typealias CTFramesetterRef = CTFramesetter
func CTFramesetterGetTypeID() -> CFTypeID
func CTFramesetterCreateWithAttributedString(string: CFAttributedString) -> CTFramesetter
func CTFramesetterCreateFrame(framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
func CTFramesetterGetTypesetter(framesetter: CTFramesetter) -> CTTypesetter
func CTFramesetterSuggestFrameSizeWithConstraints(framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>) -> CGSize
typealias CTGlyphInfoRef = CTGlyphInfo
class CTGlyphInfo {
}
func CTGlyphInfoGetTypeID() -> CFTypeID
enum CTCharacterCollection : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case IdentityMapping
  case AdobeCNS1
  case AdobeGB1
  case AdobeJapan1
  case AdobeJapan2
  case AdobeKorea1
  static var kCTIdentityMappingCharacterCollection: CTCharacterCollection { get }
  static var kCTAdobeCNS1CharacterCollection: CTCharacterCollection { get }
  static var kCTAdobeGB1CharacterCollection: CTCharacterCollection { get }
  static var kCTAdobeJapan1CharacterCollection: CTCharacterCollection { get }
  static var kCTAdobeJapan2CharacterCollection: CTCharacterCollection { get }
  static var kCTAdobeKorea1CharacterCollection: CTCharacterCollection { get }
}
func CTGlyphInfoCreateWithGlyphName(glyphName: CFString, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo
func CTGlyphInfoCreateWithGlyph(glyph: CGGlyph, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo
func CTGlyphInfoCreateWithCharacterIdentifier(cid: CGFontIndex, _ collection: CTCharacterCollection, _ baseString: CFString) -> CTGlyphInfo
func CTGlyphInfoGetGlyphName(glyphInfo: CTGlyphInfo) -> CFString?
func CTGlyphInfoGetCharacterIdentifier(glyphInfo: CTGlyphInfo) -> CGFontIndex
func CTGlyphInfoGetCharacterCollection(glyphInfo: CTGlyphInfo) -> CTCharacterCollection
class CTLine {
}
typealias CTLineRef = CTLine
struct CTLineBoundsOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ExcludeTypographicLeading: CTLineBoundsOptions { get }
  static var ExcludeTypographicShifts: CTLineBoundsOptions { get }
  static var UseHangingPunctuation: CTLineBoundsOptions { get }
  static var UseGlyphPathBounds: CTLineBoundsOptions { get }
  static var UseOpticalBounds: CTLineBoundsOptions { get }
  static var IncludeLanguageExtents: CTLineBoundsOptions { get }
}
enum CTLineTruncationType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Start
  case End
  case Middle
}
func CTLineGetTypeID() -> CFTypeID
func CTLineCreateWithAttributedString(attrString: CFAttributedString) -> CTLine
func CTLineCreateTruncatedLine(line: CTLine, _ width: Double, _ truncationType: CTLineTruncationType, _ truncationToken: CTLine?) -> CTLine?
func CTLineCreateJustifiedLine(line: CTLine, _ justificationFactor: CGFloat, _ justificationWidth: Double) -> CTLine?
func CTLineGetGlyphCount(line: CTLine) -> CFIndex
func CTLineGetGlyphRuns(line: CTLine) -> CFArray
func CTLineGetStringRange(line: CTLine) -> CFRange
func CTLineGetPenOffsetForFlush(line: CTLine, _ flushFactor: CGFloat, _ flushWidth: Double) -> Double
func CTLineDraw(line: CTLine, _ context: CGContext)
func CTLineGetTypographicBounds(line: CTLine, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
func CTLineGetBoundsWithOptions(line: CTLine, _ options: CTLineBoundsOptions) -> CGRect
func CTLineGetTrailingWhitespaceWidth(line: CTLine) -> Double
func CTLineGetImageBounds(line: CTLine, _ context: CGContext?) -> CGRect
func CTLineGetStringIndexForPosition(line: CTLine, _ position: CGPoint) -> CFIndex
func CTLineGetOffsetForStringIndex(line: CTLine, _ charIndex: CFIndex, _ secondaryOffset: UnsafeMutablePointer<CGFloat>) -> CGFloat
func CTLineEnumerateCaretOffsets(line: CTLine, _ block: (Double, CFIndex, Bool, UnsafeMutablePointer<Bool>) -> Void)
class CTParagraphStyle {
}
typealias CTParagraphStyleRef = CTParagraphStyle
func CTParagraphStyleGetTypeID() -> CFTypeID
enum CTTextAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Left
  case Right
  case Center
  case Justified
  case Natural
  static var kCTLeftTextAlignment: CTTextAlignment { get }
  static var kCTRightTextAlignment: CTTextAlignment { get }
  static var kCTCenterTextAlignment: CTTextAlignment { get }
  static var kCTJustifiedTextAlignment: CTTextAlignment { get }
  static var kCTNaturalTextAlignment: CTTextAlignment { get }
}
enum CTLineBreakMode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
enum CTWritingDirection : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
enum CTParagraphStyleSpecifier : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Alignment
  case FirstLineHeadIndent
  case HeadIndent
  case TailIndent
  case TabStops
  case DefaultTabInterval
  case LineBreakMode
  case LineHeightMultiple
  case MaximumLineHeight
  case MinimumLineHeight
  case LineSpacing
  case ParagraphSpacing
  case ParagraphSpacingBefore
  case BaseWritingDirection
  case MaximumLineSpacing
  case MinimumLineSpacing
  case LineSpacingAdjustment
  case LineBoundsOptions
  case Count
}
struct CTParagraphStyleSetting {
  var spec: CTParagraphStyleSpecifier
  var valueSize: Int
  var value: UnsafePointer<Void>
}
func CTParagraphStyleCreate(settings: UnsafePointer<CTParagraphStyleSetting>, _ settingCount: Int) -> CTParagraphStyle
func CTParagraphStyleCreateCopy(paragraphStyle: CTParagraphStyle) -> CTParagraphStyle
func CTParagraphStyleGetValueForSpecifier(paragraphStyle: CTParagraphStyle, _ spec: CTParagraphStyleSpecifier, _ valueBufferSize: Int, _ valueBuffer: UnsafeMutablePointer<Void>) -> Bool
class CTRubyAnnotation {
}
typealias CTRubyAnnotationRef = CTRubyAnnotation
func CTRubyAnnotationGetTypeID() -> CFTypeID
enum CTRubyAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Invalid
  case Auto
  case Start
  case Center
  case End
  case DistributeLetter
  case DistributeSpace
  case LineEdge
}
enum CTRubyOverhang : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Invalid
  case Auto
  case Start
  case End
  case None
}
enum CTRubyPosition : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Before
  case After
  case InterCharacter
  case Inline
  case Count
}
func CTRubyAnnotationCreate(alignment: CTRubyAlignment, _ overhang: CTRubyOverhang, _ sizeFactor: CGFloat, _ text: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CTRubyAnnotation
func CTRubyAnnotationCreateCopy(rubyAnnotation: CTRubyAnnotation) -> CTRubyAnnotation
func CTRubyAnnotationGetAlignment(rubyAnnotation: CTRubyAnnotation) -> CTRubyAlignment
func CTRubyAnnotationGetOverhang(rubyAnnotation: CTRubyAnnotation) -> CTRubyOverhang
func CTRubyAnnotationGetSizeFactor(rubyAnnotation: CTRubyAnnotation) -> CGFloat
func CTRubyAnnotationGetTextForPosition(rubyAnnotation: CTRubyAnnotation, _ position: CTRubyPosition) -> CFString?
class CTRun {
}
typealias CTRunRef = CTRun
struct CTRunStatus : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NoStatus: CTRunStatus { get }
  static var RightToLeft: CTRunStatus { get }
  static var NonMonotonic: CTRunStatus { get }
  static var HasNonIdentityMatrix: CTRunStatus { get }
}
func CTRunGetTypeID() -> CFTypeID
func CTRunGetGlyphCount(run: CTRun) -> CFIndex
func CTRunGetAttributes(run: CTRun) -> CFDictionary
func CTRunGetStatus(run: CTRun) -> CTRunStatus
func CTRunGetGlyphsPtr(run: CTRun) -> UnsafePointer<CGGlyph>
func CTRunGetGlyphs(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGGlyph>)
func CTRunGetPositionsPtr(run: CTRun) -> UnsafePointer<CGPoint>
func CTRunGetPositions(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGPoint>)
func CTRunGetAdvancesPtr(run: CTRun) -> UnsafePointer<CGSize>
func CTRunGetAdvances(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGSize>)
func CTRunGetStringIndicesPtr(run: CTRun) -> UnsafePointer<CFIndex>
func CTRunGetStringIndices(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CFIndex>)
func CTRunGetStringRange(run: CTRun) -> CFRange
func CTRunGetTypographicBounds(run: CTRun, _ range: CFRange, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double
func CTRunGetImageBounds(run: CTRun, _ context: CGContext?, _ range: CFRange) -> CGRect
func CTRunGetTextMatrix(run: CTRun) -> CGAffineTransform
func CTRunDraw(run: CTRun, _ context: CGContext, _ range: CFRange)
class CTRunDelegate {
}
typealias CTRunDelegateRef = CTRunDelegate
func CTRunDelegateGetTypeID() -> CFTypeID
typealias CTRunDelegateDeallocateCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CTRunDelegateGetAscentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat
typealias CTRunDelegateGetDescentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat
typealias CTRunDelegateGetWidthCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat
struct CTRunDelegateCallbacks {
  var version: CFIndex
  var dealloc: CTRunDelegateDeallocateCallback
  var getAscent: CTRunDelegateGetAscentCallback
  var getDescent: CTRunDelegateGetDescentCallback
  var getWidth: CTRunDelegateGetWidthCallback
}
var kCTRunDelegateVersion1: Int { get }
var kCTRunDelegateCurrentVersion: Int { get }
func CTRunDelegateCreate(callbacks: UnsafePointer<CTRunDelegateCallbacks>, _ refCon: UnsafeMutablePointer<Void>) -> CTRunDelegate?
func CTRunDelegateGetRefCon(runDelegate: CTRunDelegate) -> UnsafeMutablePointer<Void>
let kCTFontAttributeName: CFString
let kCTForegroundColorFromContextAttributeName: CFString
let kCTKernAttributeName: CFString
let kCTLigatureAttributeName: CFString
let kCTForegroundColorAttributeName: CFString
let kCTParagraphStyleAttributeName: CFString
let kCTStrokeWidthAttributeName: CFString
let kCTStrokeColorAttributeName: CFString
let kCTUnderlineStyleAttributeName: CFString
let kCTSuperscriptAttributeName: CFString
let kCTUnderlineColorAttributeName: CFString
let kCTVerticalFormsAttributeName: CFString
let kCTGlyphInfoAttributeName: CFString
let kCTCharacterShapeAttributeName: CFString
let kCTLanguageAttributeName: CFString
let kCTRunDelegateAttributeName: CFString
struct CTUnderlineStyle : OptionSetType {
  init(rawValue: Int32)
  let rawValue: Int32
  static var None: CTUnderlineStyle { get }
  static var Single: CTUnderlineStyle { get }
  static var Thick: CTUnderlineStyle { get }
  static var Double: CTUnderlineStyle { get }
}
struct CTUnderlineStyleModifiers : OptionSetType {
  init(rawValue: Int32)
  let rawValue: Int32
  static var PatternSolid: CTUnderlineStyleModifiers { get }
  static var PatternDot: CTUnderlineStyleModifiers { get }
  static var PatternDash: CTUnderlineStyleModifiers { get }
  static var PatternDashDot: CTUnderlineStyleModifiers { get }
  static var PatternDashDotDot: CTUnderlineStyleModifiers { get }
}
let kCTBaselineClassAttributeName: CFString
let kCTBaselineInfoAttributeName: CFString
let kCTBaselineReferenceInfoAttributeName: CFString
let kCTWritingDirectionAttributeName: CFString
var kCTWritingDirectionEmbedding: Int { get }
var kCTWritingDirectionOverride: Int { get }
let kCTRubyAnnotationAttributeName: CFString
class CTTextTab {
}
typealias CTTextTabRef = CTTextTab
func CTTextTabGetTypeID() -> CFTypeID
let kCTTabColumnTerminatorsAttributeName: CFString
func CTTextTabCreate(alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
func CTTextTabGetAlignment(tab: CTTextTab) -> CTTextAlignment
func CTTextTabGetLocation(tab: CTTextTab) -> Double
func CTTextTabGetOptions(tab: CTTextTab) -> CFDictionary?
class CTTypesetter {
}
typealias CTTypesetterRef = CTTypesetter
func CTTypesetterGetTypeID() -> CFTypeID
let kCTTypesetterOptionForcedEmbeddingLevel: CFString
func CTTypesetterCreateWithAttributedString(string: CFAttributedString) -> CTTypesetter
func CTTypesetterCreateWithAttributedStringAndOptions(string: CFAttributedString, _ options: CFDictionary?) -> CTTypesetter
func CTTypesetterCreateLineWithOffset(typesetter: CTTypesetter, _ stringRange: CFRange, _ offset: Double) -> CTLine
func CTTypesetterCreateLine(typesetter: CTTypesetter, _ stringRange: CFRange) -> CTLine
func CTTypesetterSuggestLineBreakWithOffset(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
func CTTypesetterSuggestLineBreak(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
func CTTypesetterSuggestClusterBreakWithOffset(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
func CTTypesetterSuggestClusterBreak(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
var kAllTypographicFeaturesType: Int { get }
var kLigaturesType: Int { get }
var kCursiveConnectionType: Int { get }
var kLetterCaseType: Int { get }
var kVerticalSubstitutionType: Int { get }
var kLinguisticRearrangementType: Int { get }
var kNumberSpacingType: Int { get }
var kSmartSwashType: Int { get }
var kDiacriticsType: Int { get }
var kVerticalPositionType: Int { get }
var kFractionsType: Int { get }
var kOverlappingCharactersType: Int { get }
var kTypographicExtrasType: Int { get }
var kMathematicalExtrasType: Int { get }
var kOrnamentSetsType: Int { get }
var kCharacterAlternativesType: Int { get }
var kDesignComplexityType: Int { get }
var kStyleOptionsType: Int { get }
var kCharacterShapeType: Int { get }
var kNumberCaseType: Int { get }
var kTextSpacingType: Int { get }
var kTransliterationType: Int { get }
var kAnnotationType: Int { get }
var kKanaSpacingType: Int { get }
var kIdeographicSpacingType: Int { get }
var kUnicodeDecompositionType: Int { get }
var kRubyKanaType: Int { get }
var kCJKSymbolAlternativesType: Int { get }
var kIdeographicAlternativesType: Int { get }
var kCJKVerticalRomanPlacementType: Int { get }
var kItalicCJKRomanType: Int { get }
var kCaseSensitiveLayoutType: Int { get }
var kAlternateKanaType: Int { get }
var kStylisticAlternativesType: Int { get }
var kContextualAlternatesType: Int { get }
var kLowerCaseType: Int { get }
var kUpperCaseType: Int { get }
var kLanguageTagType: Int { get }
var kCJKRomanSpacingType: Int { get }
var kLastFeatureType: Int { get }
var kAllTypeFeaturesOnSelector: Int { get }
var kAllTypeFeaturesOffSelector: Int { get }
var kRequiredLigaturesOnSelector: Int { get }
var kRequiredLigaturesOffSelector: Int { get }
var kCommonLigaturesOnSelector: Int { get }
var kCommonLigaturesOffSelector: Int { get }
var kRareLigaturesOnSelector: Int { get }
var kRareLigaturesOffSelector: Int { get }
var kLogosOnSelector: Int { get }
var kLogosOffSelector: Int { get }
var kRebusPicturesOnSelector: Int { get }
var kRebusPicturesOffSelector: Int { get }
var kDiphthongLigaturesOnSelector: Int { get }
var kDiphthongLigaturesOffSelector: Int { get }
var kSquaredLigaturesOnSelector: Int { get }
var kSquaredLigaturesOffSelector: Int { get }
var kAbbrevSquaredLigaturesOnSelector: Int { get }
var kAbbrevSquaredLigaturesOffSelector: Int { get }
var kSymbolLigaturesOnSelector: Int { get }
var kSymbolLigaturesOffSelector: Int { get }
var kContextualLigaturesOnSelector: Int { get }
var kContextualLigaturesOffSelector: Int { get }
var kHistoricalLigaturesOnSelector: Int { get }
var kHistoricalLigaturesOffSelector: Int { get }
var kUnconnectedSelector: Int { get }
var kPartiallyConnectedSelector: Int { get }
var kCursiveSelector: Int { get }
var kUpperAndLowerCaseSelector: Int { get }
var kAllCapsSelector: Int { get }
var kAllLowerCaseSelector: Int { get }
var kSmallCapsSelector: Int { get }
var kInitialCapsSelector: Int { get }
var kInitialCapsAndSmallCapsSelector: Int { get }
var kSubstituteVerticalFormsOnSelector: Int { get }
var kSubstituteVerticalFormsOffSelector: Int { get }
var kLinguisticRearrangementOnSelector: Int { get }
var kLinguisticRearrangementOffSelector: Int { get }
var kMonospacedNumbersSelector: Int { get }
var kProportionalNumbersSelector: Int { get }
var kThirdWidthNumbersSelector: Int { get }
var kQuarterWidthNumbersSelector: Int { get }
var kWordInitialSwashesOnSelector: Int { get }
var kWordInitialSwashesOffSelector: Int { get }
var kWordFinalSwashesOnSelector: Int { get }
var kWordFinalSwashesOffSelector: Int { get }
var kLineInitialSwashesOnSelector: Int { get }
var kLineInitialSwashesOffSelector: Int { get }
var kLineFinalSwashesOnSelector: Int { get }
var kLineFinalSwashesOffSelector: Int { get }
var kNonFinalSwashesOnSelector: Int { get }
var kNonFinalSwashesOffSelector: Int { get }
var kShowDiacriticsSelector: Int { get }
var kHideDiacriticsSelector: Int { get }
var kDecomposeDiacriticsSelector: Int { get }
var kNormalPositionSelector: Int { get }
var kSuperiorsSelector: Int { get }
var kInferiorsSelector: Int { get }
var kOrdinalsSelector: Int { get }
var kScientificInferiorsSelector: Int { get }
var kNoFractionsSelector: Int { get }
var kVerticalFractionsSelector: Int { get }
var kDiagonalFractionsSelector: Int { get }
var kPreventOverlapOnSelector: Int { get }
var kPreventOverlapOffSelector: Int { get }
var kHyphensToEmDashOnSelector: Int { get }
var kHyphensToEmDashOffSelector: Int { get }
var kHyphenToEnDashOnSelector: Int { get }
var kHyphenToEnDashOffSelector: Int { get }
var kSlashedZeroOnSelector: Int { get }
var kSlashedZeroOffSelector: Int { get }
var kFormInterrobangOnSelector: Int { get }
var kFormInterrobangOffSelector: Int { get }
var kSmartQuotesOnSelector: Int { get }
var kSmartQuotesOffSelector: Int { get }
var kPeriodsToEllipsisOnSelector: Int { get }
var kPeriodsToEllipsisOffSelector: Int { get }
var kHyphenToMinusOnSelector: Int { get }
var kHyphenToMinusOffSelector: Int { get }
var kAsteriskToMultiplyOnSelector: Int { get }
var kAsteriskToMultiplyOffSelector: Int { get }
var kSlashToDivideOnSelector: Int { get }
var kSlashToDivideOffSelector: Int { get }
var kInequalityLigaturesOnSelector: Int { get }
var kInequalityLigaturesOffSelector: Int { get }
var kExponentsOnSelector: Int { get }
var kExponentsOffSelector: Int { get }
var kMathematicalGreekOnSelector: Int { get }
var kMathematicalGreekOffSelector: Int { get }
var kNoOrnamentsSelector: Int { get }
var kDingbatsSelector: Int { get }
var kPiCharactersSelector: Int { get }
var kFleuronsSelector: Int { get }
var kDecorativeBordersSelector: Int { get }
var kInternationalSymbolsSelector: Int { get }
var kMathSymbolsSelector: Int { get }
var kNoAlternatesSelector: Int { get }
var kDesignLevel1Selector: Int { get }
var kDesignLevel2Selector: Int { get }
var kDesignLevel3Selector: Int { get }
var kDesignLevel4Selector: Int { get }
var kDesignLevel5Selector: Int { get }
var kNoStyleOptionsSelector: Int { get }
var kDisplayTextSelector: Int { get }
var kEngravedTextSelector: Int { get }
var kIlluminatedCapsSelector: Int { get }
var kTitlingCapsSelector: Int { get }
var kTallCapsSelector: Int { get }
var kTraditionalCharactersSelector: Int { get }
var kSimplifiedCharactersSelector: Int { get }
var kJIS1978CharactersSelector: Int { get }
var kJIS1983CharactersSelector: Int { get }
var kJIS1990CharactersSelector: Int { get }
var kTraditionalAltOneSelector: Int { get }
var kTraditionalAltTwoSelector: Int { get }
var kTraditionalAltThreeSelector: Int { get }
var kTraditionalAltFourSelector: Int { get }
var kTraditionalAltFiveSelector: Int { get }
var kExpertCharactersSelector: Int { get }
var kJIS2004CharactersSelector: Int { get }
var kHojoCharactersSelector: Int { get }
var kNLCCharactersSelector: Int { get }
var kTraditionalNamesCharactersSelector: Int { get }
var kLowerCaseNumbersSelector: Int { get }
var kUpperCaseNumbersSelector: Int { get }
var kProportionalTextSelector: Int { get }
var kMonospacedTextSelector: Int { get }
var kHalfWidthTextSelector: Int { get }
var kThirdWidthTextSelector: Int { get }
var kQuarterWidthTextSelector: Int { get }
var kAltProportionalTextSelector: Int { get }
var kAltHalfWidthTextSelector: Int { get }
var kNoTransliterationSelector: Int { get }
var kHanjaToHangulSelector: Int { get }
var kHiraganaToKatakanaSelector: Int { get }
var kKatakanaToHiraganaSelector: Int { get }
var kKanaToRomanizationSelector: Int { get }
var kRomanizationToHiraganaSelector: Int { get }
var kRomanizationToKatakanaSelector: Int { get }
var kHanjaToHangulAltOneSelector: Int { get }
var kHanjaToHangulAltTwoSelector: Int { get }
var kHanjaToHangulAltThreeSelector: Int { get }
var kNoAnnotationSelector: Int { get }
var kBoxAnnotationSelector: Int { get }
var kRoundedBoxAnnotationSelector: Int { get }
var kCircleAnnotationSelector: Int { get }
var kInvertedCircleAnnotationSelector: Int { get }
var kParenthesisAnnotationSelector: Int { get }
var kPeriodAnnotationSelector: Int { get }
var kRomanNumeralAnnotationSelector: Int { get }
var kDiamondAnnotationSelector: Int { get }
var kInvertedBoxAnnotationSelector: Int { get }
var kInvertedRoundedBoxAnnotationSelector: Int { get }
var kFullWidthKanaSelector: Int { get }
var kProportionalKanaSelector: Int { get }
var kFullWidthIdeographsSelector: Int { get }
var kProportionalIdeographsSelector: Int { get }
var kHalfWidthIdeographsSelector: Int { get }
var kCanonicalCompositionOnSelector: Int { get }
var kCanonicalCompositionOffSelector: Int { get }
var kCompatibilityCompositionOnSelector: Int { get }
var kCompatibilityCompositionOffSelector: Int { get }
var kTranscodingCompositionOnSelector: Int { get }
var kTranscodingCompositionOffSelector: Int { get }
var kNoRubyKanaSelector: Int { get }
var kRubyKanaSelector: Int { get }
var kRubyKanaOnSelector: Int { get }
var kRubyKanaOffSelector: Int { get }
var kNoCJKSymbolAlternativesSelector: Int { get }
var kCJKSymbolAltOneSelector: Int { get }
var kCJKSymbolAltTwoSelector: Int { get }
var kCJKSymbolAltThreeSelector: Int { get }
var kCJKSymbolAltFourSelector: Int { get }
var kCJKSymbolAltFiveSelector: Int { get }
var kNoIdeographicAlternativesSelector: Int { get }
var kIdeographicAltOneSelector: Int { get }
var kIdeographicAltTwoSelector: Int { get }
var kIdeographicAltThreeSelector: Int { get }
var kIdeographicAltFourSelector: Int { get }
var kIdeographicAltFiveSelector: Int { get }
var kCJKVerticalRomanCenteredSelector: Int { get }
var kCJKVerticalRomanHBaselineSelector: Int { get }
var kNoCJKItalicRomanSelector: Int { get }
var kCJKItalicRomanSelector: Int { get }
var kCJKItalicRomanOnSelector: Int { get }
var kCJKItalicRomanOffSelector: Int { get }
var kCaseSensitiveLayoutOnSelector: Int { get }
var kCaseSensitiveLayoutOffSelector: Int { get }
var kCaseSensitiveSpacingOnSelector: Int { get }
var kCaseSensitiveSpacingOffSelector: Int { get }
var kAlternateHorizKanaOnSelector: Int { get }
var kAlternateHorizKanaOffSelector: Int { get }
var kAlternateVertKanaOnSelector: Int { get }
var kAlternateVertKanaOffSelector: Int { get }
var kNoStylisticAlternatesSelector: Int { get }
var kStylisticAltOneOnSelector: Int { get }
var kStylisticAltOneOffSelector: Int { get }
var kStylisticAltTwoOnSelector: Int { get }
var kStylisticAltTwoOffSelector: Int { get }
var kStylisticAltThreeOnSelector: Int { get }
var kStylisticAltThreeOffSelector: Int { get }
var kStylisticAltFourOnSelector: Int { get }
var kStylisticAltFourOffSelector: Int { get }
var kStylisticAltFiveOnSelector: Int { get }
var kStylisticAltFiveOffSelector: Int { get }
var kStylisticAltSixOnSelector: Int { get }
var kStylisticAltSixOffSelector: Int { get }
var kStylisticAltSevenOnSelector: Int { get }
var kStylisticAltSevenOffSelector: Int { get }
var kStylisticAltEightOnSelector: Int { get }
var kStylisticAltEightOffSelector: Int { get }
var kStylisticAltNineOnSelector: Int { get }
var kStylisticAltNineOffSelector: Int { get }
var kStylisticAltTenOnSelector: Int { get }
var kStylisticAltTenOffSelector: Int { get }
var kStylisticAltElevenOnSelector: Int { get }
var kStylisticAltElevenOffSelector: Int { get }
var kStylisticAltTwelveOnSelector: Int { get }
var kStylisticAltTwelveOffSelector: Int { get }
var kStylisticAltThirteenOnSelector: Int { get }
var kStylisticAltThirteenOffSelector: Int { get }
var kStylisticAltFourteenOnSelector: Int { get }
var kStylisticAltFourteenOffSelector: Int { get }
var kStylisticAltFifteenOnSelector: Int { get }
var kStylisticAltFifteenOffSelector: Int { get }
var kStylisticAltSixteenOnSelector: Int { get }
var kStylisticAltSixteenOffSelector: Int { get }
var kStylisticAltSeventeenOnSelector: Int { get }
var kStylisticAltSeventeenOffSelector: Int { get }
var kStylisticAltEighteenOnSelector: Int { get }
var kStylisticAltEighteenOffSelector: Int { get }
var kStylisticAltNineteenOnSelector: Int { get }
var kStylisticAltNineteenOffSelector: Int { get }
var kStylisticAltTwentyOnSelector: Int { get }
var kStylisticAltTwentyOffSelector: Int { get }
var kContextualAlternatesOnSelector: Int { get }
var kContextualAlternatesOffSelector: Int { get }
var kSwashAlternatesOnSelector: Int { get }
var kSwashAlternatesOffSelector: Int { get }
var kContextualSwashAlternatesOnSelector: Int { get }
var kContextualSwashAlternatesOffSelector: Int { get }
var kDefaultLowerCaseSelector: Int { get }
var kLowerCaseSmallCapsSelector: Int { get }
var kLowerCasePetiteCapsSelector: Int { get }
var kDefaultUpperCaseSelector: Int { get }
var kUpperCaseSmallCapsSelector: Int { get }
var kUpperCasePetiteCapsSelector: Int { get }
var kHalfWidthCJKRomanSelector: Int { get }
var kProportionalCJKRomanSelector: Int { get }
var kDefaultCJKRomanSelector: Int { get }
var kFullWidthCJKRomanSelector: Int { get }
var kSFNTLookupSimpleArray: Int { get }
var kSFNTLookupSegmentSingle: Int { get }
var kSFNTLookupSegmentArray: Int { get }
var kSFNTLookupSingleTable: Int { get }
var kSFNTLookupTrimmedArray: Int { get }
typealias SFNTLookupTableFormat = UInt16
typealias SFNTLookupValue = UInt16
typealias SFNTLookupOffset = UInt16
typealias SFNTLookupKind = UInt32
struct SFNTLookupBinarySearchHeader {
  var unitSize: UInt16
  var nUnits: UInt16
  var searchRange: UInt16
  var entrySelector: UInt16
  var rangeShift: UInt16
  init()
  init(unitSize: UInt16, nUnits: UInt16, searchRange: UInt16, entrySelector: UInt16, rangeShift: UInt16)
}
struct SFNTLookupArrayHeader {
  var lookupValues: (SFNTLookupValue)
  init()
  init(lookupValues: (SFNTLookupValue))
}
struct SFNTLookupTrimmedArrayHeader {
  var firstGlyph: UInt16
  var count: UInt16
  var valueArray: (SFNTLookupValue)
  init()
  init(firstGlyph: UInt16, count: UInt16, valueArray: (SFNTLookupValue))
}
struct SFNTLookupSegment {
  var lastGlyph: UInt16
  var firstGlyph: UInt16
  var value: (UInt16)
  init()
  init(lastGlyph: UInt16, firstGlyph: UInt16, value: (UInt16))
}
struct SFNTLookupSegmentHeader {
  var binSearch: SFNTLookupBinarySearchHeader
  var segments: (SFNTLookupSegment)
  init()
  init(binSearch: SFNTLookupBinarySearchHeader, segments: (SFNTLookupSegment))
}
struct SFNTLookupSingle {
  var glyph: UInt16
  var value: (UInt16)
  init()
  init(glyph: UInt16, value: (UInt16))
}
struct SFNTLookupSingleHeader {
  var binSearch: SFNTLookupBinarySearchHeader
  var entries: (SFNTLookupSingle)
  init()
  init(binSearch: SFNTLookupBinarySearchHeader, entries: (SFNTLookupSingle))
}
struct SFNTLookupFormatSpecificHeader {
  var theArray: SFNTLookupArrayHeader
  var segment: SFNTLookupSegmentHeader
  var single: SFNTLookupSingleHeader
  var trimmedArray: SFNTLookupTrimmedArrayHeader
  init(theArray: SFNTLookupArrayHeader)
  init(segment: SFNTLookupSegmentHeader)
  init(single: SFNTLookupSingleHeader)
  init(trimmedArray: SFNTLookupTrimmedArrayHeader)
  init()
}
struct SFNTLookupTable {
  var format: SFNTLookupTableFormat
  var fsHeader: SFNTLookupFormatSpecificHeader
  init()
  init(format: SFNTLookupTableFormat, fsHeader: SFNTLookupFormatSpecificHeader)
}
typealias SFNTLookupTablePtr = UnsafeMutablePointer<SFNTLookupTable>
typealias SFNTLookupTableHandle = UnsafeMutablePointer<SFNTLookupTablePtr>
var kSTClassEndOfText: Int { get }
var kSTClassOutOfBounds: Int { get }
var kSTClassDeletedGlyph: Int { get }
var kSTClassEndOfLine: Int { get }
var kSTSetMark: Int { get }
var kSTNoAdvance: Int { get }
var kSTMarkEnd: Int { get }
var kSTLigActionMask: Int { get }
var kSTRearrVerbMask: Int { get }
typealias STClass = UInt8
typealias STEntryIndex = UInt8
struct STHeader {
  var filler: UInt8
  var nClasses: STClass
  var classTableOffset: UInt16
  var stateArrayOffset: UInt16
  var entryTableOffset: UInt16
  init()
  init(filler: UInt8, nClasses: STClass, classTableOffset: UInt16, stateArrayOffset: UInt16, entryTableOffset: UInt16)
}
struct STClassTable {
  var firstGlyph: UInt16
  var nGlyphs: UInt16
  var classes: (STClass)
  init()
  init(firstGlyph: UInt16, nGlyphs: UInt16, classes: (STClass))
}
struct STEntryZero {
  var newState: UInt16
  var flags: UInt16
  init()
  init(newState: UInt16, flags: UInt16)
}
struct STEntryOne {
  var newState: UInt16
  var flags: UInt16
  var offset1: UInt16
  init()
  init(newState: UInt16, flags: UInt16, offset1: UInt16)
}
struct STEntryTwo {
  var newState: UInt16
  var flags: UInt16
  var offset1: UInt16
  var offset2: UInt16
  init()
  init(newState: UInt16, flags: UInt16, offset1: UInt16, offset2: UInt16)
}
var kSTXHasLigAction: Int { get }
typealias STXClass = UInt16
typealias STXStateIndex = UInt16
typealias STXEntryIndex = UInt16
struct STXHeader {
  var nClasses: UInt32
  var classTableOffset: UInt32
  var stateArrayOffset: UInt32
  var entryTableOffset: UInt32
  init()
  init(nClasses: UInt32, classTableOffset: UInt32, stateArrayOffset: UInt32, entryTableOffset: UInt32)
}
typealias STXClassTable = SFNTLookupTable
struct STXEntryZero {
  var newState: STXStateIndex
  var flags: UInt16
  init()
  init(newState: STXStateIndex, flags: UInt16)
}
struct STXEntryOne {
  var newState: STXStateIndex
  var flags: UInt16
  var index1: UInt16
  init()
  init(newState: STXStateIndex, flags: UInt16, index1: UInt16)
}
struct STXEntryTwo {
  var newState: STXStateIndex
  var flags: UInt16
  var index1: UInt16
  var index2: UInt16
  init()
  init(newState: STXStateIndex, flags: UInt16, index1: UInt16, index2: UInt16)
}
var kSTKCrossStreamReset: Int { get }
var kLCARTag: Int { get }
var kLCARCurrentVersion: Int { get }
var kLCARLinearFormat: Int { get }
var kLCARCtlPointFormat: Int { get }
struct LcarCaretClassEntry {
  var count: UInt16
  var partials: (UInt16)
  init()
  init(count: UInt16, partials: (UInt16))
}
struct LcarCaretTable {
  var version: Fixed
  var format: UInt16
  var lookup: SFNTLookupTable
  init()
  init(version: Fixed, format: UInt16, lookup: SFNTLookupTable)
}
typealias LcarCaretTablePtr = UnsafeMutablePointer<LcarCaretTable>
var kJUSTTag: Int { get }
var kJUSTCurrentVersion: Int { get }
var kJUSTStandardFormat: Int { get }
var kJUSTnoGlyphcode: Int { get }
var kJUSTpcDecompositionAction: Int { get }
var kJUSTpcUnconditionalAddAction: Int { get }
var kJUSTpcConditionalAddAction: Int { get }
var kJUSTpcGlyphStretchAction: Int { get }
var kJUSTpcDuctilityAction: Int { get }
var kJUSTpcGlyphRepeatAddAction: Int { get }
var kJUSTKashidaPriority: Int { get }
var kJUSTSpacePriority: Int { get }
var kJUSTLetterPriority: Int { get }
var kJUSTNullPriority: Int { get }
var kJUSTPriorityCount: Int { get }
var kJUSTOverridePriority: Int { get }
var kJUSTOverrideLimits: Int { get }
var kJUSTOverrideUnlimited: Int { get }
var kJUSTUnlimited: Int { get }
var kJUSTPriorityMask: Int { get }
typealias JustPCActionType = UInt16
typealias JustificationFlags = UInt16
struct JustPCDecompositionAction {
  var lowerLimit: Fixed
  var upperLimit: Fixed
  var order: UInt16
  var count: UInt16
  var glyphs: (UInt16)
  init()
  init(lowerLimit: Fixed, upperLimit: Fixed, order: UInt16, count: UInt16, glyphs: (UInt16))
}
typealias JustPCUnconditionalAddAction = UInt16
struct JustPCConditionalAddAction {
  var substThreshold: Fixed
  var addGlyph: UInt16
  var substGlyph: UInt16
  init()
  init(substThreshold: Fixed, addGlyph: UInt16, substGlyph: UInt16)
}
struct JustPCDuctilityAction {
  var ductilityAxis: UInt32
  var minimumLimit: Fixed
  var noStretchValue: Fixed
  var maximumLimit: Fixed
  init()
  init(ductilityAxis: UInt32, minimumLimit: Fixed, noStretchValue: Fixed, maximumLimit: Fixed)
}
struct JustPCGlyphRepeatAddAction {
  var flags: UInt16
  var glyph: UInt16
  init()
  init(flags: UInt16, glyph: UInt16)
}
struct JustPCActionSubrecord {
  var theClass: UInt16
  var theType: JustPCActionType
  var length: UInt32
  var data: UInt32
  init()
  init(theClass: UInt16, theType: JustPCActionType, length: UInt32, data: UInt32)
}
struct JustPCAction {
  var actionCount: UInt32
  var actions: (JustPCActionSubrecord)
  init()
  init(actionCount: UInt32, actions: (JustPCActionSubrecord))
}
struct JustWidthDeltaEntry {
  var justClass: UInt32
  var beforeGrowLimit: Fixed
  var beforeShrinkLimit: Fixed
  var afterGrowLimit: Fixed
  var afterShrinkLimit: Fixed
  var growFlags: JustificationFlags
  var shrinkFlags: JustificationFlags
  init()
  init(justClass: UInt32, beforeGrowLimit: Fixed, beforeShrinkLimit: Fixed, afterGrowLimit: Fixed, afterShrinkLimit: Fixed, growFlags: JustificationFlags, shrinkFlags: JustificationFlags)
}
struct JustWidthDeltaGroup {
  var count: UInt32
  var entries: (JustWidthDeltaEntry)
  init()
  init(count: UInt32, entries: (JustWidthDeltaEntry))
}
struct JustPostcompTable {
  var lookupTable: SFNTLookupTable
  init()
  init(lookupTable: SFNTLookupTable)
}
struct JustDirectionTable {
  var justClass: UInt16
  var widthDeltaClusters: UInt16
  var postcomp: UInt16
  var lookup: SFNTLookupTable
  init()
  init(justClass: UInt16, widthDeltaClusters: UInt16, postcomp: UInt16, lookup: SFNTLookupTable)
}
struct JustTable {
  var version: Fixed
  var format: UInt16
  var horizHeaderOffset: UInt16
  var vertHeaderOffset: UInt16
  init()
  init(version: Fixed, format: UInt16, horizHeaderOffset: UInt16, vertHeaderOffset: UInt16)
}
var kOPBDTag: Int { get }
var kOPBDCurrentVersion: Int { get }
var kOPBDDistanceFormat: Int { get }
var kOPBDControlPointFormat: Int { get }
typealias OpbdTableFormat = UInt16
struct OpbdSideValues {
  var leftSideShift: Int16
  var topSideShift: Int16
  var rightSideShift: Int16
  var bottomSideShift: Int16
  init()
  init(leftSideShift: Int16, topSideShift: Int16, rightSideShift: Int16, bottomSideShift: Int16)
}
struct OpbdTable {
  var version: Fixed
  var format: OpbdTableFormat
  var lookupTable: SFNTLookupTable
  init()
  init(version: Fixed, format: OpbdTableFormat, lookupTable: SFNTLookupTable)
}
var kMORTTag: Int { get }
var kMORTCurrentVersion: Int { get }
var kMORTCoverVertical: Int { get }
var kMORTCoverDescending: Int { get }
var kMORTCoverIgnoreVertical: Int { get }
var kMORTCoverTypeMask: Int { get }
var kMORTRearrangementType: Int { get }
var kMORTContextualType: Int { get }
var kMORTLigatureType: Int { get }
var kMORTSwashType: Int { get }
var kMORTInsertionType: Int { get }
var kMORTLigLastAction: Int { get }
var kMORTLigStoreLigature: Int { get }
var kMORTLigFormOffsetMask: Int { get }
var kMORTLigFormOffsetShift: Int { get }
var kMORTraNoAction: Int { get }
var kMORTraxA: Int { get }
var kMORTraDx: Int { get }
var kMORTraDxA: Int { get }
var kMORTraxAB: Int { get }
var kMORTraxBA: Int { get }
var kMORTraCDx: Int { get }
var kMORTraDCx: Int { get }
var kMORTraCDxA: Int { get }
var kMORTraDCxA: Int { get }
var kMORTraDxAB: Int { get }
var kMORTraDxBA: Int { get }
var kMORTraCDxAB: Int { get }
var kMORTraCDxBA: Int { get }
var kMORTraDCxAB: Int { get }
var kMORTraDCxBA: Int { get }
var kMORTDoInsertionsBefore: Int { get }
var kMORTIsSplitVowelPiece: Int { get }
var kMORTInsertionsCountMask: Int { get }
var kMORTCurrInsertKashidaLike: Int { get }
var kMORTMarkInsertKashidaLike: Int { get }
var kMORTCurrInsertBefore: Int { get }
var kMORTMarkInsertBefore: Int { get }
var kMORTMarkJustTableCountMask: Int { get }
var kMORTMarkJustTableCountShift: Int { get }
var kMORTCurrJustTableCountMask: Int { get }
var kMORTCurrJustTableCountShift: Int { get }
var kMORTCurrInsertCountMask: Int { get }
var kMORTCurrInsertCountShift: Int { get }
var kMORTMarkInsertCountMask: Int { get }
var kMORTMarkInsertCountShift: Int { get }
typealias MortSubtableMaskFlags = UInt32
typealias MortLigatureActionEntry = UInt32
struct MortRearrangementSubtable {
  var header: STHeader
  init()
  init(header: STHeader)
}
struct MortContextualSubtable {
  var header: STHeader
  var substitutionTableOffset: UInt16
  init()
  init(header: STHeader, substitutionTableOffset: UInt16)
}
struct MortLigatureSubtable {
  var header: STHeader
  var ligatureActionTableOffset: UInt16
  var componentTableOffset: UInt16
  var ligatureTableOffset: UInt16
  init()
  init(header: STHeader, ligatureActionTableOffset: UInt16, componentTableOffset: UInt16, ligatureTableOffset: UInt16)
}
struct MortSwashSubtable {
  var lookup: SFNTLookupTable
  init()
  init(lookup: SFNTLookupTable)
}
struct MortInsertionSubtable {
  var header: STHeader
  init()
  init(header: STHeader)
}
struct MortSpecificSubtable {
  var rearrangement: MortRearrangementSubtable
  var contextual: MortContextualSubtable
  var ligature: MortLigatureSubtable
  var swash: MortSwashSubtable
  var insertion: MortInsertionSubtable
  init(rearrangement: MortRearrangementSubtable)
  init(contextual: MortContextualSubtable)
  init(ligature: MortLigatureSubtable)
  init(swash: MortSwashSubtable)
  init(insertion: MortInsertionSubtable)
  init()
}
struct MortSubtable {
  var length: UInt16
  var coverage: UInt16
  var flags: MortSubtableMaskFlags
  var u: MortSpecificSubtable
  init()
  init(length: UInt16, coverage: UInt16, flags: MortSubtableMaskFlags, u: MortSpecificSubtable)
}
struct MortFeatureEntry {
  var featureType: UInt16
  var featureSelector: UInt16
  var enableFlags: MortSubtableMaskFlags
  var disableFlags: MortSubtableMaskFlags
  init()
  init(featureType: UInt16, featureSelector: UInt16, enableFlags: MortSubtableMaskFlags, disableFlags: MortSubtableMaskFlags)
}
struct MortChain {
  var defaultFlags: MortSubtableMaskFlags
  var length: UInt32
  var nFeatures: UInt16
  var nSubtables: UInt16
  var featureEntries: (MortFeatureEntry)
  init()
  init(defaultFlags: MortSubtableMaskFlags, length: UInt32, nFeatures: UInt16, nSubtables: UInt16, featureEntries: (MortFeatureEntry))
}
struct MortTable {
  var version: Fixed
  var nChains: UInt32
  var chains: (MortChain)
  init()
  init(version: Fixed, nChains: UInt32, chains: (MortChain))
}
var kMORXTag: Int { get }
var kMORXCurrentVersion: Int { get }
var kMORXCoverVertical: Int { get }
var kMORXCoverDescending: Int { get }
var kMORXCoverIgnoreVertical: Int { get }
var kMORXCoverLogicalOrder: Int { get }
var kMORXCoverTypeMask: Int { get }
struct MorxRearrangementSubtable {
  var header: STXHeader
  init()
  init(header: STXHeader)
}
struct MorxContextualSubtable {
  var header: STXHeader
  var substitutionTableOffset: UInt32
  init()
  init(header: STXHeader, substitutionTableOffset: UInt32)
}
struct MorxLigatureSubtable {
  var header: STXHeader
  var ligatureActionTableOffset: UInt32
  var componentTableOffset: UInt32
  var ligatureTableOffset: UInt32
  init()
  init(header: STXHeader, ligatureActionTableOffset: UInt32, componentTableOffset: UInt32, ligatureTableOffset: UInt32)
}
struct MorxInsertionSubtable {
  var header: STXHeader
  var insertionGlyphTableOffset: UInt32
  init()
  init(header: STXHeader, insertionGlyphTableOffset: UInt32)
}
struct MorxSpecificSubtable {
  var rearrangement: MorxRearrangementSubtable
  var contextual: MorxContextualSubtable
  var ligature: MorxLigatureSubtable
  var swash: MortSwashSubtable
  var insertion: MorxInsertionSubtable
  init(rearrangement: MorxRearrangementSubtable)
  init(contextual: MorxContextualSubtable)
  init(ligature: MorxLigatureSubtable)
  init(swash: MortSwashSubtable)
  init(insertion: MorxInsertionSubtable)
  init()
}
struct MorxSubtable {
  var length: UInt32
  var coverage: UInt32
  var flags: MortSubtableMaskFlags
  var u: MorxSpecificSubtable
  init()
  init(length: UInt32, coverage: UInt32, flags: MortSubtableMaskFlags, u: MorxSpecificSubtable)
}
struct MorxChain {
  var defaultFlags: MortSubtableMaskFlags
  var length: UInt32
  var nFeatures: UInt32
  var nSubtables: UInt32
  var featureEntries: (MortFeatureEntry)
  init()
  init(defaultFlags: MortSubtableMaskFlags, length: UInt32, nFeatures: UInt32, nSubtables: UInt32, featureEntries: (MortFeatureEntry))
}
struct MorxTable {
  var version: Fixed
  var nChains: UInt32
  var chains: (MorxChain)
  init()
  init(version: Fixed, nChains: UInt32, chains: (MorxChain))
}
var kPROPTag: Int { get }
var kPROPCurrentVersion: Int { get }
var kPROPPairOffsetShift: Int { get }
var kPROPPairOffsetSign: Int { get }
var kPROPIsFloaterMask: Int { get }
var kPROPCanHangLTMask: Int { get }
var kPROPCanHangRBMask: Int { get }
var kPROPUseRLPairMask: Int { get }
var kPROPPairOffsetMask: Int { get }
var kPROPRightConnectMask: Int { get }
var kPROPZeroReserved: Int { get }
var kPROPDirectionMask: Int { get }
var kPROPLDirectionClass: Int { get }
var kPROPRDirectionClass: Int { get }
var kPROPALDirectionClass: Int { get }
var kPROPENDirectionClass: Int { get }
var kPROPESDirectionClass: Int { get }
var kPROPETDirectionClass: Int { get }
var kPROPANDirectionClass: Int { get }
var kPROPCSDirectionClass: Int { get }
var kPROPPSDirectionClass: Int { get }
var kPROPSDirectionClass: Int { get }
var kPROPWSDirectionClass: Int { get }
var kPROPONDirectionClass: Int { get }
var kPROPSENDirectionClass: Int { get }
var kPROPLREDirectionClass: Int { get }
var kPROPLRODirectionClass: Int { get }
var kPROPRLEDirectionClass: Int { get }
var kPROPRLODirectionClass: Int { get }
var kPROPPDFDirectionClass: Int { get }
var kPROPNSMDirectionClass: Int { get }
var kPROPBNDirectionClass: Int { get }
var kPROPNumDirectionClasses: Int { get }
typealias PropCharProperties = UInt16
struct PropTable {
  var version: Fixed
  var format: UInt16
  var defaultProps: PropCharProperties
  var lookup: SFNTLookupTable
  init()
  init(version: Fixed, format: UInt16, defaultProps: PropCharProperties, lookup: SFNTLookupTable)
}
struct PropLookupSegment {
  var lastGlyph: UInt16
  var firstGlyph: UInt16
  var value: UInt16
  init()
  init(lastGlyph: UInt16, firstGlyph: UInt16, value: UInt16)
}
struct PropLookupSingle {
  var glyph: UInt16
  var props: PropCharProperties
  init()
  init(glyph: UInt16, props: PropCharProperties)
}
var kTRAKTag: Int { get }
var kTRAKCurrentVersion: Int { get }
var kTRAKUniformFormat: Int { get }
typealias TrakValue = Int16
struct TrakTableEntry {
  var track: Fixed
  var nameTableIndex: UInt16
  var sizesOffset: UInt16
  init()
  init(track: Fixed, nameTableIndex: UInt16, sizesOffset: UInt16)
}
struct TrakTableData {
  var nTracks: UInt16
  var nSizes: UInt16
  var sizeTableOffset: UInt32
  var trakTable: (TrakTableEntry)
  init()
  init(nTracks: UInt16, nSizes: UInt16, sizeTableOffset: UInt32, trakTable: (TrakTableEntry))
}
struct TrakTable {
  var version: Fixed
  var format: UInt16
  var horizOffset: UInt16
  var vertOffset: UInt16
  init()
  init(version: Fixed, format: UInt16, horizOffset: UInt16, vertOffset: UInt16)
}
var kKERNTag: Int { get }
var kKERNCurrentVersion: Int { get }
var kKERNVertical: Int { get }
var kKERNResetCrossStream: Int { get }
var kKERNCrossStream: Int { get }
var kKERNVariation: Int { get }
var kKERNUnusedBits: Int { get }
var kKERNFormatMask: Int { get }
var kKERNOrderedList: Int { get }
var kKERNStateTable: Int { get }
var kKERNSimpleArray: Int { get }
var kKERNIndexArray: Int { get }
var kKERNLineStart: Int { get }
var kKERNLineEndKerning: Int { get }
var kKERNNoCrossKerning: Int { get }
var kKERNNotesRequested: Int { get }
var kKERNNoStakeNote: Int { get }
var kKERNCrossStreamResetNote: Int { get }
var kKERNNotApplied: Int { get }
typealias KernTableFormat = UInt8
typealias KernSubtableInfo = UInt16
typealias KernKerningValue = Int16
typealias KernArrayOffset = UInt16
struct KernVersion0Header {
  var version: UInt16
  var nTables: UInt16
  var firstSubtable: (UInt16)
  init()
  init(version: UInt16, nTables: UInt16, firstSubtable: (UInt16))
}
struct KernTableHeader {
  var version: Fixed
  var nTables: Int32
  var firstSubtable: (UInt16)
  init()
  init(version: Fixed, nTables: Int32, firstSubtable: (UInt16))
}
typealias KernTableHeaderPtr = UnsafeMutablePointer<KernTableHeader>
typealias KernTableHeaderHandle = UnsafeMutablePointer<KernTableHeaderPtr>
struct KernKerningPair {
  var left: UInt16
  var right: UInt16
  init()
  init(left: UInt16, right: UInt16)
}
struct KernOrderedListEntry {
  var pair: KernKerningPair
  var value: KernKerningValue
  init()
  init(pair: KernKerningPair, value: KernKerningValue)
}
typealias KernOrderedListEntryPtr = UnsafeMutablePointer<KernOrderedListEntry>
struct KernOrderedListHeader {
  var nPairs: UInt16
  var searchRange: UInt16
  var entrySelector: UInt16
  var rangeShift: UInt16
  var table: (UInt16)
  init()
  init(nPairs: UInt16, searchRange: UInt16, entrySelector: UInt16, rangeShift: UInt16, table: (UInt16))
}
struct KernStateHeader {
  var header: STHeader
  var valueTable: UInt16
  var firstTable: (UInt8)
  init()
  init(header: STHeader, valueTable: UInt16, firstTable: (UInt8))
}
struct KernStateEntry {
  var newState: UInt16
  var flags: UInt16
  init()
  init(newState: UInt16, flags: UInt16)
}
struct KernOffsetTable {
  var firstGlyph: UInt16
  var nGlyphs: UInt16
  var offsetTable: (KernArrayOffset)
  init()
  init(firstGlyph: UInt16, nGlyphs: UInt16, offsetTable: (KernArrayOffset))
}
typealias KernOffsetTablePtr = UnsafeMutablePointer<KernOffsetTable>
struct KernSimpleArrayHeader {
  var rowWidth: UInt16
  var leftOffsetTable: UInt16
  var rightOffsetTable: UInt16
  var theArray: KernArrayOffset
  var firstTable: (UInt16)
  init()
  init(rowWidth: UInt16, leftOffsetTable: UInt16, rightOffsetTable: UInt16, theArray: KernArrayOffset, firstTable: (UInt16))
}
struct KernIndexArrayHeader {
  var glyphCount: UInt16
  var kernValueCount: UInt8
  var leftClassCount: UInt8
  var rightClassCount: UInt8
  var flags: UInt8
  var kernValue: (Int16)
  var leftClass: (UInt8)
  var rightClass: (UInt8)
  var kernIndex: (UInt8)
  init()
  init(glyphCount: UInt16, kernValueCount: UInt8, leftClassCount: UInt8, rightClassCount: UInt8, flags: UInt8, kernValue: (Int16), leftClass: (UInt8), rightClass: (UInt8), kernIndex: (UInt8))
}
struct KernFormatSpecificHeader {
  var orderedList: KernOrderedListHeader
  var stateTable: KernStateHeader
  var simpleArray: KernSimpleArrayHeader
  var indexArray: KernIndexArrayHeader
  init(orderedList: KernOrderedListHeader)
  init(stateTable: KernStateHeader)
  init(simpleArray: KernSimpleArrayHeader)
  init(indexArray: KernIndexArrayHeader)
  init()
}
struct KernVersion0SubtableHeader {
  var version: UInt16
  var length: UInt16
  var stInfo: KernSubtableInfo
  var fsHeader: KernFormatSpecificHeader
  init()
  init(version: UInt16, length: UInt16, stInfo: KernSubtableInfo, fsHeader: KernFormatSpecificHeader)
}
struct KernSubtableHeader {
  var length: Int32
  var stInfo: KernSubtableInfo
  var tupleIndex: Int16
  var fsHeader: KernFormatSpecificHeader
  init()
  init(length: Int32, stInfo: KernSubtableInfo, tupleIndex: Int16, fsHeader: KernFormatSpecificHeader)
}
typealias KernSubtableHeaderPtr = UnsafeMutablePointer<KernSubtableHeader>
var kKERXTag: Int { get }
var kKERXCurrentVersion: Int { get }
var kKERXVertical: Int { get }
var kKERXResetCrossStream: Int { get }
var kKERXCrossStream: Int { get }
var kKERXVariation: Int { get }
var kKERXDescending: Int { get }
var kKERXUnusedBits: Int { get }
var kKERXFormatMask: Int { get }
var kKERXOrderedList: Int { get }
var kKERXStateTable: Int { get }
var kKERXSimpleArray: Int { get }
var kKERXIndexArray: Int { get }
var kKERXControlPoint: Int { get }
var kKERXLineStart: Int { get }
var kKERXLineEndKerning: Int { get }
var kKERXNoCrossKerning: Int { get }
var kKERXNotesRequested: Int { get }
var kKERXNoStakeNote: Int { get }
var kKERXCrossStreamResetNote: Int { get }
var kKERXNotApplied: Int { get }
var kKERXActionTypeMask: UInt32 { get }
var kKERXActionTypeControlPoints: UInt32 { get }
var kKERXActionTypeAnchorPoints: UInt32 { get }
var kKERXActionTypeCoordinates: UInt32 { get }
var kKERXUnusedFlags: UInt32 { get }
var kKERXActionOffsetMask: UInt32 { get }
typealias KerxSubtableCoverage = UInt32
typealias KerxArrayOffset = UInt32
struct KerxTableHeader {
  var version: Fixed
  var nTables: UInt32
  var firstSubtable: (UInt32)
  init()
  init(version: Fixed, nTables: UInt32, firstSubtable: (UInt32))
}
typealias KerxTableHeaderPtr = UnsafeMutablePointer<KerxTableHeader>
typealias KerxTableHeaderHandle = UnsafeMutablePointer<KerxTableHeaderPtr>
struct KerxKerningPair {
  var left: UInt16
  var right: UInt16
  init()
  init(left: UInt16, right: UInt16)
}
struct KerxOrderedListEntry {
  var pair: KerxKerningPair
  var value: KernKerningValue
  init()
  init(pair: KerxKerningPair, value: KernKerningValue)
}
typealias KerxOrderedListEntryPtr = UnsafeMutablePointer<KerxOrderedListEntry>
struct KerxOrderedListHeader {
  var nPairs: UInt32
  var searchRange: UInt32
  var entrySelector: UInt32
  var rangeShift: UInt32
  var table: (UInt32)
  init()
  init(nPairs: UInt32, searchRange: UInt32, entrySelector: UInt32, rangeShift: UInt32, table: (UInt32))
}
struct KerxStateHeader {
  var header: STXHeader
  var valueTable: UInt32
  var firstTable: (UInt8)
  init()
  init(header: STXHeader, valueTable: UInt32, firstTable: (UInt8))
}
struct KerxStateEntry {
  var newState: UInt16
  var flags: UInt16
  var valueIndex: UInt16
  init()
  init(newState: UInt16, flags: UInt16, valueIndex: UInt16)
}
struct KerxControlPointHeader {
  var header: STXHeader
  var flags: UInt32
  var firstTable: (UInt8)
  init()
  init(header: STXHeader, flags: UInt32, firstTable: (UInt8))
}
struct KerxControlPointEntry {
  var newState: UInt16
  var flags: UInt16
  var actionIndex: UInt16
  init()
  init(newState: UInt16, flags: UInt16, actionIndex: UInt16)
}
struct KerxControlPointAction {
  var markControlPoint: UInt16
  var currControlPoint: UInt16
  init()
  init(markControlPoint: UInt16, currControlPoint: UInt16)
}
struct KerxAnchorPointAction {
  var markAnchorPoint: UInt16
  var currAnchorPoint: UInt16
  init()
  init(markAnchorPoint: UInt16, currAnchorPoint: UInt16)
}
struct KerxCoordinateAction {
  var markX: UInt16
  var markY: UInt16
  var currX: UInt16
  var currY: UInt16
  init()
  init(markX: UInt16, markY: UInt16, currX: UInt16, currY: UInt16)
}
struct KerxSimpleArrayHeader {
  var rowWidth: UInt32
  var leftOffsetTable: UInt32
  var rightOffsetTable: UInt32
  var theArray: KerxArrayOffset
  var firstTable: (UInt32)
  init()
  init(rowWidth: UInt32, leftOffsetTable: UInt32, rightOffsetTable: UInt32, theArray: KerxArrayOffset, firstTable: (UInt32))
}
struct KerxIndexArrayHeader {
  var glyphCount: UInt16
  var kernValueCount: UInt16
  var leftClassCount: UInt16
  var rightClassCount: UInt16
  var flags: UInt16
  var kernValue: (Int16)
  var leftClass: (UInt16)
  var rightClass: (UInt16)
  var kernIndex: (UInt16)
  init()
  init(glyphCount: UInt16, kernValueCount: UInt16, leftClassCount: UInt16, rightClassCount: UInt16, flags: UInt16, kernValue: (Int16), leftClass: (UInt16), rightClass: (UInt16), kernIndex: (UInt16))
}
struct KerxFormatSpecificHeader {
  var orderedList: KerxOrderedListHeader
  var stateTable: KerxStateHeader
  var simpleArray: KerxSimpleArrayHeader
  var indexArray: KerxIndexArrayHeader
  var controlPoint: KerxControlPointHeader
  init(orderedList: KerxOrderedListHeader)
  init(stateTable: KerxStateHeader)
  init(simpleArray: KerxSimpleArrayHeader)
  init(indexArray: KerxIndexArrayHeader)
  init(controlPoint: KerxControlPointHeader)
  init()
}
struct KerxSubtableHeader {
  var length: UInt32
  var stInfo: KerxSubtableCoverage
  var tupleIndex: UInt32
  var fsHeader: KerxFormatSpecificHeader
  init()
  init(length: UInt32, stInfo: KerxSubtableCoverage, tupleIndex: UInt32, fsHeader: KerxFormatSpecificHeader)
}
typealias KerxSubtableHeaderPtr = UnsafeMutablePointer<KerxSubtableHeader>
var kBSLNTag: Int { get }
var kBSLNCurrentVersion: Int { get }
var kBSLNDistanceFormatNoMap: Int { get }
var kBSLNDistanceFormatWithMap: Int { get }
var kBSLNControlPointFormatNoMap: Int { get }
var kBSLNControlPointFormatWithMap: Int { get }
var kBSLNRomanBaseline: Int { get }
var kBSLNIdeographicCenterBaseline: Int { get }
var kBSLNIdeographicLowBaseline: Int { get }
var kBSLNHangingBaseline: Int { get }
var kBSLNMathBaseline: Int { get }
var kBSLNIdeographicHighBaseline: Int { get }
var kBSLNLastBaseline: Int { get }
var kBSLNNumBaselineClasses: Int { get }
var kBSLNNoBaseline: Int { get }
var kBSLNNoBaselineOverride: Int { get }
typealias BslnBaselineClass = UInt32
typealias BslnBaselineRecord = (Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed)
struct BslnFormat0Part {
  var deltas: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  init()
  init(deltas: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16))
}
struct BslnFormat1Part {
  var deltas: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  var mappingData: SFNTLookupTable
  init()
  init(deltas: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), mappingData: SFNTLookupTable)
}
struct BslnFormat2Part {
  var stdGlyph: UInt16
  var ctlPoints: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  init()
  init(stdGlyph: UInt16, ctlPoints: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16))
}
struct BslnFormat3Part {
  var stdGlyph: UInt16
  var ctlPoints: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  var mappingData: SFNTLookupTable
  init()
  init(stdGlyph: UInt16, ctlPoints: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), mappingData: SFNTLookupTable)
}
struct BslnFormatUnion {
  var fmt0Part: BslnFormat0Part
  var fmt1Part: BslnFormat1Part
  var fmt2Part: BslnFormat2Part
  var fmt3Part: BslnFormat3Part
  init(fmt0Part: BslnFormat0Part)
  init(fmt1Part: BslnFormat1Part)
  init(fmt2Part: BslnFormat2Part)
  init(fmt3Part: BslnFormat3Part)
  init()
}
typealias BslnTableFormat = UInt16
struct BslnTable {
  var version: Fixed
  var format: BslnTableFormat
  var defaultBaseline: UInt16
  var parts: BslnFormatUnion
  init()
  init(version: Fixed, format: BslnTableFormat, defaultBaseline: UInt16, parts: BslnFormatUnion)
}
typealias BslnTablePtr = UnsafeMutablePointer<BslnTable>
struct ALMXHeader {
  var Version: Fixed
  var Flags: UInt16
  var NMasters: UInt16
  var FirstGlyph: UInt16
  var LastGlyph: UInt16
  var lookup: SFNTLookupTable
  init()
  init(Version: Fixed, Flags: UInt16, NMasters: UInt16, FirstGlyph: UInt16, LastGlyph: UInt16, lookup: SFNTLookupTable)
}
struct ALMXGlyphEntry {
  var GlyphIndexOffset: Int16
  var HorizontalAdvance: Int16
  var XOffsetToHOrigin: Int16
  var VerticalAdvance: Int16
  var YOffsetToVOrigin: Int16
  init()
  init(GlyphIndexOffset: Int16, HorizontalAdvance: Int16, XOffsetToHOrigin: Int16, VerticalAdvance: Int16, YOffsetToVOrigin: Int16)
}
struct ROTAHeader {
  var Version: Fixed
  var Flags: UInt16
  var NMasters: UInt16
  var FirstGlyph: UInt16
  var LastGlyph: UInt16
  var lookup: SFNTLookupTable
  init()
  init(Version: Fixed, Flags: UInt16, NMasters: UInt16, FirstGlyph: UInt16, LastGlyph: UInt16, lookup: SFNTLookupTable)
}
struct ROTAGlyphEntry {
  var GlyphIndexOffset: Int16
  var HBaselineOffset: Int16
  var VBaselineOffset: Int16
  init()
  init(GlyphIndexOffset: Int16, HBaselineOffset: Int16, VBaselineOffset: Int16)
}
var kANKRCurrentVersion: Int { get }
struct AnchorPoint {
  var x: Int16
  var y: Int16
  init()
  init(x: Int16, y: Int16)
}
struct AnchorPointTable {
  var nPoints: UInt32
  var points: (AnchorPoint)
  init()
  init(nPoints: UInt32, points: (AnchorPoint))
}
struct AnkrTable {
  var version: UInt16
  var flags: UInt16
  var lookupTableOffset: UInt32
  var anchorPointTableOffset: UInt32
  init()
  init(version: UInt16, flags: UInt16, lookupTableOffset: UInt32, anchorPointTableOffset: UInt32)
}
var kLTAGCurrentVersion: Int { get }
struct LtagStringRange {
  var offset: UInt16
  var length: UInt16
  init()
  init(offset: UInt16, length: UInt16)
}
struct LtagTable {
  var version: UInt32
  var flags: UInt32
  var numTags: UInt32
  var tagRange: (LtagStringRange)
  init()
  init(version: UInt32, flags: UInt32, numTags: UInt32, tagRange: (LtagStringRange))
}
struct sfntDirectoryEntry {
  var tableTag: FourCharCode
  var checkSum: UInt32
  var offset: UInt32
  var length: UInt32
  init()
  init(tableTag: FourCharCode, checkSum: UInt32, offset: UInt32, length: UInt32)
}
struct sfntDirectory {
  var format: FourCharCode
  var numOffsets: UInt16
  var searchRange: UInt16
  var entrySelector: UInt16
  var rangeShift: UInt16
  var table: (sfntDirectoryEntry)
  init()
  init(format: FourCharCode, numOffsets: UInt16, searchRange: UInt16, entrySelector: UInt16, rangeShift: UInt16, table: (sfntDirectoryEntry))
}
var sizeof_sfntDirectory: Int { get }
var cmapFontTableTag: Int { get }
var kFontUnicodePlatform: Int { get }
var kFontMacintoshPlatform: Int { get }
var kFontReservedPlatform: Int { get }
var kFontMicrosoftPlatform: Int { get }
var kFontCustomPlatform: Int { get }
var kFontUnicodeDefaultSemantics: Int { get }
var kFontUnicodeV1_1Semantics: Int { get }
var kFontISO10646_1993Semantics: Int { get }
var kFontUnicodeV2_0BMPOnlySemantics: Int { get }
var kFontUnicodeV2_0FullCoverageSemantics: Int { get }
var kFontUnicodeV4_0VariationSequenceSemantics: Int { get }
var kFontUnicode_FullRepertoire: Int { get }
var kFontRomanScript: Int { get }
var kFontJapaneseScript: Int { get }
var kFontTraditionalChineseScript: Int { get }
var kFontChineseScript: Int { get }
var kFontKoreanScript: Int { get }
var kFontArabicScript: Int { get }
var kFontHebrewScript: Int { get }
var kFontGreekScript: Int { get }
var kFontCyrillicScript: Int { get }
var kFontRussian: Int { get }
var kFontRSymbolScript: Int { get }
var kFontDevanagariScript: Int { get }
var kFontGurmukhiScript: Int { get }
var kFontGujaratiScript: Int { get }
var kFontOriyaScript: Int { get }
var kFontBengaliScript: Int { get }
var kFontTamilScript: Int { get }
var kFontTeluguScript: Int { get }
var kFontKannadaScript: Int { get }
var kFontMalayalamScript: Int { get }
var kFontSinhaleseScript: Int { get }
var kFontBurmeseScript: Int { get }
var kFontKhmerScript: Int { get }
var kFontThaiScript: Int { get }
var kFontLaotianScript: Int { get }
var kFontGeorgianScript: Int { get }
var kFontArmenianScript: Int { get }
var kFontSimpleChineseScript: Int { get }
var kFontTibetanScript: Int { get }
var kFontMongolianScript: Int { get }
var kFontGeezScript: Int { get }
var kFontEthiopicScript: Int { get }
var kFontAmharicScript: Int { get }
var kFontSlavicScript: Int { get }
var kFontEastEuropeanRomanScript: Int { get }
var kFontVietnameseScript: Int { get }
var kFontExtendedArabicScript: Int { get }
var kFontSindhiScript: Int { get }
var kFontUninterpretedScript: Int { get }
var kFontMicrosoftSymbolScript: Int { get }
var kFontMicrosoftStandardScript: Int { get }
var kFontMicrosoftUCS4Script: Int { get }
var kFontCustom8BitScript: Int { get }
var kFontCustom816BitScript: Int { get }
var kFontCustom16BitScript: Int { get }
var kFontEnglishLanguage: Int { get }
var kFontFrenchLanguage: Int { get }
var kFontGermanLanguage: Int { get }
var kFontItalianLanguage: Int { get }
var kFontDutchLanguage: Int { get }
var kFontSwedishLanguage: Int { get }
var kFontSpanishLanguage: Int { get }
var kFontDanishLanguage: Int { get }
var kFontPortugueseLanguage: Int { get }
var kFontNorwegianLanguage: Int { get }
var kFontHebrewLanguage: Int { get }
var kFontJapaneseLanguage: Int { get }
var kFontArabicLanguage: Int { get }
var kFontFinnishLanguage: Int { get }
var kFontGreekLanguage: Int { get }
var kFontIcelandicLanguage: Int { get }
var kFontMalteseLanguage: Int { get }
var kFontTurkishLanguage: Int { get }
var kFontCroatianLanguage: Int { get }
var kFontTradChineseLanguage: Int { get }
var kFontUrduLanguage: Int { get }
var kFontHindiLanguage: Int { get }
var kFontThaiLanguage: Int { get }
var kFontKoreanLanguage: Int { get }
var kFontLithuanianLanguage: Int { get }
var kFontPolishLanguage: Int { get }
var kFontHungarianLanguage: Int { get }
var kFontEstonianLanguage: Int { get }
var kFontLettishLanguage: Int { get }
var kFontLatvianLanguage: Int { get }
var kFontSaamiskLanguage: Int { get }
var kFontLappishLanguage: Int { get }
var kFontFaeroeseLanguage: Int { get }
var kFontFarsiLanguage: Int { get }
var kFontPersianLanguage: Int { get }
var kFontRussianLanguage: Int { get }
var kFontSimpChineseLanguage: Int { get }
var kFontFlemishLanguage: Int { get }
var kFontIrishLanguage: Int { get }
var kFontAlbanianLanguage: Int { get }
var kFontRomanianLanguage: Int { get }
var kFontCzechLanguage: Int { get }
var kFontSlovakLanguage: Int { get }
var kFontSlovenianLanguage: Int { get }
var kFontYiddishLanguage: Int { get }
var kFontSerbianLanguage: Int { get }
var kFontMacedonianLanguage: Int { get }
var kFontBulgarianLanguage: Int { get }
var kFontUkrainianLanguage: Int { get }
var kFontByelorussianLanguage: Int { get }
var kFontUzbekLanguage: Int { get }
var kFontKazakhLanguage: Int { get }
var kFontAzerbaijaniLanguage: Int { get }
var kFontAzerbaijanArLanguage: Int { get }
var kFontArmenianLanguage: Int { get }
var kFontGeorgianLanguage: Int { get }
var kFontMoldavianLanguage: Int { get }
var kFontKirghizLanguage: Int { get }
var kFontTajikiLanguage: Int { get }
var kFontTurkmenLanguage: Int { get }
var kFontMongolianLanguage: Int { get }
var kFontMongolianCyrLanguage: Int { get }
var kFontPashtoLanguage: Int { get }
var kFontKurdishLanguage: Int { get }
var kFontKashmiriLanguage: Int { get }
var kFontSindhiLanguage: Int { get }
var kFontTibetanLanguage: Int { get }
var kFontNepaliLanguage: Int { get }
var kFontSanskritLanguage: Int { get }
var kFontMarathiLanguage: Int { get }
var kFontBengaliLanguage: Int { get }
var kFontAssameseLanguage: Int { get }
var kFontGujaratiLanguage: Int { get }
var kFontPunjabiLanguage: Int { get }
var kFontOriyaLanguage: Int { get }
var kFontMalayalamLanguage: Int { get }
var kFontKannadaLanguage: Int { get }
var kFontTamilLanguage: Int { get }
var kFontTeluguLanguage: Int { get }
var kFontSinhaleseLanguage: Int { get }
var kFontBurmeseLanguage: Int { get }
var kFontKhmerLanguage: Int { get }
var kFontLaoLanguage: Int { get }
var kFontVietnameseLanguage: Int { get }
var kFontIndonesianLanguage: Int { get }
var kFontTagalogLanguage: Int { get }
var kFontMalayRomanLanguage: Int { get }
var kFontMalayArabicLanguage: Int { get }
var kFontAmharicLanguage: Int { get }
var kFontTigrinyaLanguage: Int { get }
var kFontGallaLanguage: Int { get }
var kFontOromoLanguage: Int { get }
var kFontSomaliLanguage: Int { get }
var kFontSwahiliLanguage: Int { get }
var kFontRuandaLanguage: Int { get }
var kFontRundiLanguage: Int { get }
var kFontChewaLanguage: Int { get }
var kFontMalagasyLanguage: Int { get }
var kFontEsperantoLanguage: Int { get }
var kFontWelshLanguage: Int { get }
var kFontBasqueLanguage: Int { get }
var kFontCatalanLanguage: Int { get }
var kFontLatinLanguage: Int { get }
var kFontQuechuaLanguage: Int { get }
var kFontGuaraniLanguage: Int { get }
var kFontAymaraLanguage: Int { get }
var kFontTatarLanguage: Int { get }
var kFontUighurLanguage: Int { get }
var kFontDzongkhaLanguage: Int { get }
var kFontJavaneseRomLanguage: Int { get }
var kFontSundaneseRomLanguage: Int { get }
var kFontNoPlatformCode: UInt32 { get }
var kFontNoScriptCode: UInt32 { get }
var kFontNoLanguageCode: UInt32 { get }
struct sfntCMapSubHeader {
  var format: UInt16
  var length: UInt16
  var languageID: UInt16
  init()
  init(format: UInt16, length: UInt16, languageID: UInt16)
}
var sizeof_sfntCMapSubHeader: Int { get }
struct sfntCMapExtendedSubHeader {
  var format: UInt16
  var reserved: UInt16
  var length: UInt32
  var language: UInt32
  init()
  init(format: UInt16, reserved: UInt16, length: UInt32, language: UInt32)
}
var sizeof_sfntCMapExtendedSubHeader: Int { get }
struct sfntCMapEncoding {
  var platformID: UInt16
  var scriptID: UInt16
  var offset: UInt32
  init()
  init(platformID: UInt16, scriptID: UInt16, offset: UInt32)
}
var sizeof_sfntCMapEncoding: Int { get }
struct sfntCMapHeader {
  var version: UInt16
  var numTables: UInt16
  var encoding: (sfntCMapEncoding)
  init()
  init(version: UInt16, numTables: UInt16, encoding: (sfntCMapEncoding))
}
var sizeof_sfntCMapHeader: Int { get }
var nameFontTableTag: Int { get }
var kFontCopyrightName: Int { get }
var kFontFamilyName: Int { get }
var kFontStyleName: Int { get }
var kFontUniqueName: Int { get }
var kFontFullName: Int { get }
var kFontVersionName: Int { get }
var kFontPostscriptName: Int { get }
var kFontTrademarkName: Int { get }
var kFontManufacturerName: Int { get }
var kFontDesignerName: Int { get }
var kFontDescriptionName: Int { get }
var kFontVendorURLName: Int { get }
var kFontDesignerURLName: Int { get }
var kFontLicenseDescriptionName: Int { get }
var kFontLicenseInfoURLName: Int { get }
var kFontPreferredFamilyName: Int { get }
var kFontPreferredSubfamilyName: Int { get }
var kFontMacCompatibleFullName: Int { get }
var kFontSampleTextName: Int { get }
var kFontPostScriptCIDName: Int { get }
var kFontLastReservedName: Int { get }
var kFontNoNameCode: UInt32 { get }
struct sfntNameRecord {
  var platformID: UInt16
  var scriptID: UInt16
  var languageID: UInt16
  var nameID: UInt16
  var length: UInt16
  var offset: UInt16
  init()
  init(platformID: UInt16, scriptID: UInt16, languageID: UInt16, nameID: UInt16, length: UInt16, offset: UInt16)
}
var sizeof_sfntNameRecord: Int { get }
struct sfntNameHeader {
  var format: UInt16
  var count: UInt16
  var stringOffset: UInt16
  var rec: (sfntNameRecord)
  init()
  init(format: UInt16, count: UInt16, stringOffset: UInt16, rec: (sfntNameRecord))
}
var sizeof_sfntNameHeader: Int { get }
var variationFontTableTag: Int { get }
struct sfntVariationAxis {
  var axisTag: FourCharCode
  var minValue: Fixed
  var defaultValue: Fixed
  var maxValue: Fixed
  var flags: Int16
  var nameID: Int16
  init()
  init(axisTag: FourCharCode, minValue: Fixed, defaultValue: Fixed, maxValue: Fixed, flags: Int16, nameID: Int16)
}
var sizeof_sfntVariationAxis: Int { get }
struct sfntInstance {
  var nameID: Int16
  var flags: Int16
  var coord: (Fixed)
  init()
  init(nameID: Int16, flags: Int16, coord: (Fixed))
}
var sizeof_sfntInstance: Int { get }
struct sfntVariationHeader {
  var version: Fixed
  var offsetToData: UInt16
  var countSizePairs: UInt16
  var axisCount: UInt16
  var axisSize: UInt16
  var instanceCount: UInt16
  var instanceSize: UInt16
  var axis: (sfntVariationAxis)
  var instance: (sfntInstance)
  init()
  init(version: Fixed, offsetToData: UInt16, countSizePairs: UInt16, axisCount: UInt16, axisSize: UInt16, instanceCount: UInt16, instanceSize: UInt16, axis: (sfntVariationAxis), instance: (sfntInstance))
}
var sizeof_sfntVariationHeader: Int { get }
var descriptorFontTableTag: Int { get }
struct sfntFontDescriptor {
  var name: FourCharCode
  var value: Fixed
  init()
  init(name: FourCharCode, value: Fixed)
}
struct sfntDescriptorHeader {
  var version: Fixed
  var descriptorCount: Int32
  var descriptor: (sfntFontDescriptor)
  init()
  init(version: Fixed, descriptorCount: Int32, descriptor: (sfntFontDescriptor))
}
var sizeof_sfntDescriptorHeader: Int { get }
var featureFontTableTag: Int { get }
struct sfntFeatureName {
  var featureType: UInt16
  var settingCount: UInt16
  var offsetToSettings: Int32
  var featureFlags: UInt16
  var nameID: Int16
  init()
  init(featureType: UInt16, settingCount: UInt16, offsetToSettings: Int32, featureFlags: UInt16, nameID: Int16)
}
struct sfntFontFeatureSetting {
  var setting: UInt16
  var nameID: Int16
  init()
  init(setting: UInt16, nameID: Int16)
}
struct sfntFontRunFeature {
  var featureType: UInt16
  var setting: UInt16
  init()
  init(featureType: UInt16, setting: UInt16)
}
struct sfntFeatureHeader {
  var version: Int32
  var featureNameCount: UInt16
  var featureSetCount: UInt16
  var reserved: Int32
  var names: (sfntFeatureName)
  var settings: (sfntFontFeatureSetting)
  var runs: (sfntFontRunFeature)
  init()
  init(version: Int32, featureNameCount: UInt16, featureSetCount: UInt16, reserved: Int32, names: (sfntFeatureName), settings: (sfntFontFeatureSetting), runs: (sfntFontRunFeature))
}
var os2FontTableTag: Int { get }
var nonGlyphID: Int { get }
typealias FontNameCode = UInt32
typealias FontPlatformCode = UInt32
typealias FontScriptCode = UInt32
typealias FontLanguageCode = UInt32
struct FontVariation {
  var name: FourCharCode
  var value: Fixed
  init()
  init(name: FourCharCode, value: Fixed)
}
