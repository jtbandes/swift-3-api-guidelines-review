
var NSCoreDataVersionNumber: Double
var NSCoreDataVersionNumber10_4: Double { get }
var NSCoreDataVersionNumber10_4_3: Double { get }
var NSCoreDataVersionNumber10_5: Double { get }
var NSCoreDataVersionNumber10_5_3: Double { get }
var NSCoreDataVersionNumber10_6: Double { get }
var NSCoreDataVersionNumber10_6_2: Double { get }
var NSCoreDataVersionNumber10_6_3: Double { get }
var NSCoreDataVersionNumber10_7: Double { get }
var NSCoreDataVersionNumber10_7_2: Double { get }
var NSCoreDataVersionNumber10_7_3: Double { get }
var NSCoreDataVersionNumber10_7_4: Double { get }
var NSCoreDataVersionNumber10_8: Double { get }
var NSCoreDataVersionNumber10_8_2: Double { get }
var NSCoreDataVersionNumber10_9: Double { get }
var NSCoreDataVersionNumber10_9_2: Double { get }
var NSCoreDataVersionNumber10_9_3: Double { get }
var NSCoreDataVersionNumber10_10: Double { get }
var NSCoreDataVersionNumber10_10_2: Double { get }
var NSCoreDataVersionNumber10_10_3: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_3_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_3_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_3_2: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_4_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_4_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_4_2: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_4_3: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_5_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_5_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_6_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_6_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_7_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_7_1: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_8_0: Double { get }
var NSCoreDataVersionNumber_iPhoneOS_8_3: Double { get }
let NSDetailedErrorsKey: String
let NSValidationObjectErrorKey: String
let NSValidationKeyErrorKey: String
let NSValidationPredicateErrorKey: String
let NSValidationValueErrorKey: String
let NSAffectedStoresErrorKey: String
let NSAffectedObjectsErrorKey: String
let NSPersistentStoreSaveConflictsErrorKey: String
let NSSQLiteErrorDomain: String
var NSManagedObjectValidationError: Int { get }
var NSManagedObjectConstraintValidationError: Int { get }
var NSValidationMultipleErrorsError: Int { get }
var NSValidationMissingMandatoryPropertyError: Int { get }
var NSValidationRelationshipLacksMinimumCountError: Int { get }
var NSValidationRelationshipExceedsMaximumCountError: Int { get }
var NSValidationRelationshipDeniedDeleteError: Int { get }
var NSValidationNumberTooLargeError: Int { get }
var NSValidationNumberTooSmallError: Int { get }
var NSValidationDateTooLateError: Int { get }
var NSValidationDateTooSoonError: Int { get }
var NSValidationInvalidDateError: Int { get }
var NSValidationStringTooLongError: Int { get }
var NSValidationStringTooShortError: Int { get }
var NSValidationStringPatternMatchingError: Int { get }
var NSManagedObjectContextLockingError: Int { get }
var NSPersistentStoreCoordinatorLockingError: Int { get }
var NSManagedObjectReferentialIntegrityError: Int { get }
var NSManagedObjectExternalRelationshipError: Int { get }
var NSManagedObjectMergeError: Int { get }
var NSManagedObjectConstraintMergeError: Int { get }
var NSPersistentStoreInvalidTypeError: Int { get }
var NSPersistentStoreTypeMismatchError: Int { get }
var NSPersistentStoreIncompatibleSchemaError: Int { get }
var NSPersistentStoreSaveError: Int { get }
var NSPersistentStoreIncompleteSaveError: Int { get }
var NSPersistentStoreSaveConflictsError: Int { get }
var NSCoreDataError: Int { get }
var NSPersistentStoreOperationError: Int { get }
var NSPersistentStoreOpenError: Int { get }
var NSPersistentStoreTimeoutError: Int { get }
var NSPersistentStoreUnsupportedRequestTypeError: Int { get }
var NSPersistentStoreIncompatibleVersionHashError: Int { get }
var NSMigrationError: Int { get }
var NSMigrationConstraintViolationError: Int { get }
var NSMigrationCancelledError: Int { get }
var NSMigrationMissingSourceModelError: Int { get }
var NSMigrationMissingMappingModelError: Int { get }
var NSMigrationManagerSourceStoreError: Int { get }
var NSMigrationManagerDestinationStoreError: Int { get }
var NSEntityMigrationPolicyError: Int { get }
var NSSQLiteError: Int { get }
var NSInferredMappingModelError: Int { get }
var NSExternalRecordImportError: Int { get }
class NSAtomicStore : NSPersistentStore {
  init(persistentStoreCoordinator coordinator: NSPersistentStoreCoordinator?, configurationName: String?, url: URL, options: [Object : AnyObject]? = [:])
  func load() throws
  func save() throws
  func newCacheNodeFor(managedObject: NSManagedObject) -> NSAtomicStoreCacheNode
  func updateCacheNode(node: NSAtomicStoreCacheNode, from managedObject: NSManagedObject)
  func cacheNodes() -> Set<NSAtomicStoreCacheNode>
  func addCacheNodes(cacheNodes: Set<NSAtomicStoreCacheNode>)
  func willRemoveCacheNodes(cacheNodes: Set<NSAtomicStoreCacheNode>)
  func cacheNodeFor(objectID: NSManagedObjectID) -> NSAtomicStoreCacheNode?
  func objectIDForEntity(entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func newReferenceObjectFor(managedObject: NSManagedObject) -> AnyObject
  func referenceObjectFor(objectID: NSManagedObjectID) -> AnyObject
}
class NSAtomicStoreCacheNode : Object {
  init(objectID moid: NSManagedObjectID)
  var objectID: NSManagedObjectID { get }
  var propertyCache: MutableDictionary?
  func valueForKey(key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  init()
}
enum NSAttributeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UndefinedAttributeType
  case Integer16AttributeType
  case Integer32AttributeType
  case Integer64AttributeType
  case DecimalAttributeType
  case DoubleAttributeType
  case FloatAttributeType
  case StringAttributeType
  case BooleanAttributeType
  case DateAttributeType
  case BinaryDataAttributeType
  case TransformableAttributeType
  case ObjectIDAttributeType
}
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: AnyObject?
  @NSCopying var versionHash: Data { get }
  var valueTransformerName: String?
  var allowsExternalBinaryDataStorage: Bool
  init()
  init?(coder aDecoder: Coder)
}
struct __attributeDescriptionFlags {
  var _hasMaxValueInExtraIvars: UInt32
  var _hasMinValueInExtraIvars: UInt32
  var _storeBinaryDataExternally: UInt32
  var _reservedAttributeDescription: UInt32
  init()
  init(_hasMaxValueInExtraIvars: UInt32, _hasMinValueInExtraIvars: UInt32, _storeBinaryDataExternally: UInt32, _reservedAttributeDescription: UInt32)
}
class NSBatchDeleteRequest : NSPersistentStoreRequest {
  init(fetchRequest fetch: NSFetchRequest)
  convenience init(objectIDs objects: [NSManagedObjectID])
  var resultType: NSBatchDeleteRequestResultType
  @NSCopying var fetchRequest: NSFetchRequest { get }
}
class NSBatchUpdateRequest : NSPersistentStoreRequest {
  init(entityName: String)
  init(entity: NSEntityDescription)
  var entityName: String { get }
  var entity: NSEntityDescription { get }
  var predicate: Predicate?
  var includesSubentities: Bool
  var resultType: NSBatchUpdateRequestResultType
  var propertiesToUpdate: [Object : AnyObject]?
  init()
}
struct _requestFlags {
  var includesSubentities: UInt32
  var resultType: UInt32
  var entityIsName: UInt32
  var _RESERVED: UInt32
  init()
  init(includesSubentities: UInt32, resultType: UInt32, entityIsName: UInt32, _RESERVED: UInt32)
}
class NSEntityDescription : Object, Coding, Copying, FastEnumeration {
  class func entityForName(entityName: String, in context: NSManagedObjectContext) -> NSEntityDescription?
  class func insertNewObjectForEntityForName(entityName: String, in context: NSManagedObjectContext) -> NSManagedObject
  unowned(unsafe) var managedObjectModel: @sil_unmanaged NSManagedObjectModel { get }
  var managedObjectClassName: String!
  var name: String?
  var isAbstract: Bool
  var subentitiesByName: [String : NSEntityDescription] { get }
  var subentities: [NSEntityDescription]
  unowned(unsafe) var superentity: @sil_unmanaged NSEntityDescription? { get }
  var propertiesByName: [String : NSPropertyDescription] { get }
  var properties: [NSPropertyDescription]
  var userInfo: [Object : AnyObject]?
  var attributesByName: [String : NSAttributeDescription] { get }
  var relationshipsByName: [String : NSRelationshipDescription] { get }
  func relationshipsWithDestinationEntity(entity: NSEntityDescription) -> [NSRelationshipDescription]
  func isKindOfEntity(entity: NSEntityDescription) -> Bool
  @NSCopying var versionHash: Data { get }
  var versionHashModifier: String?
  var renamingIdentifier: String?
  var compoundIndexes: [[AnyObject]]
  var uniquenessConstraints: [[AnyObject]]
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct __entityDescriptionFlags {
  var _isAbstract: UInt32
  var _shouldValidateOnSave: UInt32
  var _isImmutable: UInt32
  var _isFlattened: UInt32
  var _skipValidation: UInt32
  var _hasPropertiesIndexedBySpotlight: UInt32
  var _hasPropertiesStoredInTruthFile: UInt32
  var _rangesAreInDataBlob: UInt32
  var _hasAttributesWithExternalDataReferences: UInt32
  var _hasNonstandardPrimitiveProperties: UInt32
  var _hasUniqueProperties: UInt32
  var _validationUniqueProperties: UInt32
  var _reservedEntityDescription: UInt32
  init()
  init(_isAbstract: UInt32, _shouldValidateOnSave: UInt32, _isImmutable: UInt32, _isFlattened: UInt32, _skipValidation: UInt32, _hasPropertiesIndexedBySpotlight: UInt32, _hasPropertiesStoredInTruthFile: UInt32, _rangesAreInDataBlob: UInt32, _hasAttributesWithExternalDataReferences: UInt32, _hasNonstandardPrimitiveProperties: UInt32, _hasUniqueProperties: UInt32, _validationUniqueProperties: UInt32, _reservedEntityDescription: UInt32)
}
enum NSEntityMappingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UndefinedEntityMappingType
  case CustomEntityMappingType
  case AddEntityMappingType
  case RemoveEntityMappingType
  case CopyEntityMappingType
  case TransformEntityMappingType
}
class NSEntityMapping : Object {
  var name: String!
  var mappingType: NSEntityMappingType
  var sourceEntityName: String?
  @NSCopying var sourceEntityVersionHash: Data?
  var destinationEntityName: String?
  @NSCopying var destinationEntityVersionHash: Data?
  var attributeMappings: [NSPropertyMapping]?
  var relationshipMappings: [NSPropertyMapping]?
  var sourceExpression: Expression?
  var userInfo: [Object : AnyObject]?
  var entityMigrationPolicyClassName: String?
  init()
}
struct __entityMappingFlags {
  var _isInUse: UInt32
  var _reservedEntityMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedEntityMapping: UInt32)
}
let NSMigrationManagerKey: String
let NSMigrationSourceObjectKey: String
let NSMigrationDestinationObjectKey: String
let NSMigrationEntityMappingKey: String
let NSMigrationPropertyMappingKey: String
let NSMigrationEntityPolicyKey: String
class NSEntityMigrationPolicy : Object {
  func begin(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createDestinationInstancesForSourceInstance(sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endInstanceCreationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createRelationshipsForDestinationInstance(dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endRelationshipCreationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func performCustomValidationFor(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func end(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  init()
}
class NSExpressionDescription : NSPropertyDescription {
  var expression: Expression?
  var expressionResultType: NSAttributeType
  init()
  init?(coder aDecoder: Coder)
}
struct NSFetchRequestResultType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ManagedObjectResultType: NSFetchRequestResultType { get }
  static var ManagedObjectIDResultType: NSFetchRequestResultType { get }
  static var DictionaryResultType: NSFetchRequestResultType { get }
  static var CountResultType: NSFetchRequestResultType { get }
}
class NSFetchRequest : NSPersistentStoreRequest, Coding {
  init()
  convenience init(entityName: String)
  var entity: NSEntityDescription?
  var entityName: String? { get }
  var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]?
  var fetchLimit: Int
  var affectedStores: [NSPersistentStore]?
  var resultType: NSFetchRequestResultType
  var includesSubentities: Bool
  var includesPropertyValues: Bool
  var returnsObjectsAsFaults: Bool
  var relationshipKeyPathsForPrefetching: [String]?
  var includesPendingChanges: Bool
  var returnsDistinctResults: Bool
  var propertiesToFetch: [AnyObject]?
  var fetchOffset: Int
  var fetchBatchSize: Int
  var shouldRefreshRefetchedObjects: Bool
  var propertiesToGroupBy: [AnyObject]?
  var havingPredicate: Predicate?
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct _fetchRequestFlags {
  var distinctValuesOnly: UInt32
  var includesSubentities: UInt32
  var includesPropertyValues: UInt32
  var resultType: UInt32
  var returnsObjectsAsFaults: UInt32
  var excludePendingChanges: UInt32
  var isInUse: UInt32
  var entityIsName: UInt32
  var refreshesRefetched: UInt32
  var propertiesValidated: UInt32
  var disableCaching: UInt32
  var _RESERVED: UInt32
  init()
  init(distinctValuesOnly: UInt32, includesSubentities: UInt32, includesPropertyValues: UInt32, resultType: UInt32, returnsObjectsAsFaults: UInt32, excludePendingChanges: UInt32, isInUse: UInt32, entityIsName: UInt32, refreshesRefetched: UInt32, propertiesValidated: UInt32, disableCaching: UInt32, _RESERVED: UInt32)
}
let NSFetchRequestExpressionType: ExpressionType
class NSFetchRequestExpression : Expression {
  class func expressionForFetch(fetch: Expression, context: Expression, countOnly countFlag: Bool) -> Expression
  var requestExpression: Expression { get }
  var contextExpression: Expression { get }
  var isCountOnlyRequest: Bool { get }
  init(expressionType type: ExpressionType)
  init?(coder: Coder)
  convenience init()
}
struct _fetchExpressionFlags {
  var isCountOnly: UInt32
  var _RESERVED: UInt32
  init()
  init(isCountOnly: UInt32, _RESERVED: UInt32)
}
class NSFetchedPropertyDescription : NSPropertyDescription {
  var fetchRequest: NSFetchRequest?
  init()
  init?(coder aDecoder: Coder)
}
class NSFetchedResultsController : Object {
  init(fetchRequest: NSFetchRequest, managedObjectContext context: NSManagedObjectContext, sectionNameKeyPath: String?, cacheName name: String?)
  func performFetch() throws
  var fetchRequest: NSFetchRequest { get }
  var managedObjectContext: NSManagedObjectContext { get }
  var sectionNameKeyPath: String? { get }
  var cacheName: String? { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSFetchedResultsControllerDelegate?
  class func deleteCacheWithName(name: String?)
  var fetchedObjects: [AnyObject]? { get }
  func objectAt(indexPath: IndexPath) -> AnyObject
  func indexPathFor(object: AnyObject) -> IndexPath?
  func sectionIndexTitleForSectionName(sectionName: String) -> String?
  var sectionIndexTitles: [String] { get }
  var sections: [NSFetchedResultsSectionInfo]? { get }
  func sectionForSectionIndexTitle(title: String, at sectionIndex: Int) -> Int
  init()
}
struct _fetchResultsControllerFlags {
  var _sendObjectChangeNotifications: UInt32
  var _sendSectionChangeNotifications: UInt32
  var _sendDidChangeContentNotifications: UInt32
  var _sendWillChangeContentNotifications: UInt32
  var _sendSectionIndexTitleForSectionName: UInt32
  var _changedResultsSinceLastSave: UInt32
  var _hasMutableFetchedResults: UInt32
  var _hasBatchedArrayResults: UInt32
  var _hasSections: UInt32
  var _usesNonpersistedProperties: UInt32
  var _includesSubentities: UInt32
  var _reservedFlags: UInt32
  init()
  init(_sendObjectChangeNotifications: UInt32, _sendSectionChangeNotifications: UInt32, _sendDidChangeContentNotifications: UInt32, _sendWillChangeContentNotifications: UInt32, _sendSectionIndexTitleForSectionName: UInt32, _changedResultsSinceLastSave: UInt32, _hasMutableFetchedResults: UInt32, _hasBatchedArrayResults: UInt32, _hasSections: UInt32, _usesNonpersistedProperties: UInt32, _includesSubentities: UInt32, _reservedFlags: UInt32)
}
protocol NSFetchedResultsSectionInfo {
  var name: String { get }
  var indexTitle: String? { get }
  var numberOfObjects: Int { get }
  var objects: [AnyObject]? { get }
}
protocol NSFetchedResultsControllerDelegate : ObjectProtocol {
  optional func controller(controller: NSFetchedResultsController, didChange anObject: AnyObject, at indexPath: IndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: IndexPath?)
  optional func controller(controller: NSFetchedResultsController, didChangeSection sectionInfo: NSFetchedResultsSectionInfo, at sectionIndex: Int, forChangeType type: NSFetchedResultsChangeType)
  optional func controllerWillChangeContent(controller: NSFetchedResultsController)
  optional func controllerDidChangeContent(controller: NSFetchedResultsController)
  optional func controller(controller: NSFetchedResultsController, sectionIndexTitleForSectionName sectionName: String) -> String?
}
enum NSFetchedResultsChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Insert
  case Delete
  case Move
  case Update
}
class NSIncrementalStore : NSPersistentStore {
  func loadMetadata() throws
  func execute(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext?) throws -> AnyObject
  func newValuesForObjectWith(objectID: NSManagedObjectID, withContext context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValueForRelationship(relationship: NSRelationshipDescription, forObjectWith objectID: NSManagedObjectID, withContext context: NSManagedObjectContext?) throws -> AnyObject
  class func identifierForNewStoreAt(storeURL: URL) -> AnyObject
  func obtainPermanentIDsFor(array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjectsWithIDs(objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjectsWithIDs(objectIDs: [NSManagedObjectID])
  func newObjectIDForEntity(entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func referenceObjectFor(objectID: NSManagedObjectID) -> AnyObject
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, url: URL, options: [Object : AnyObject]? = [:])
}
class NSIncrementalStoreNode : Object {
  init(objectID: NSManagedObjectID, withValues values: [String : AnyObject], version: UInt64)
  func updateWithValues(values: [String : AnyObject], version: UInt64)
  var objectID: NSManagedObjectID { get }
  var version: UInt64 { get }
  func valueFor(prop: NSPropertyDescription) -> AnyObject?
  init()
}
struct NSSnapshotEventType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UndoInsertion: NSSnapshotEventType { get }
  static var UndoDeletion: NSSnapshotEventType { get }
  static var UndoUpdate: NSSnapshotEventType { get }
  static var Rollback: NSSnapshotEventType { get }
  static var Refresh: NSSnapshotEventType { get }
  static var MergePolicy: NSSnapshotEventType { get }
}
class NSManagedObject : Object {
  class func contextShouldIgnoreUnmodeledPropertyChanges() -> Bool
  init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var isInserted: Bool { get }
  var isUpdated: Bool { get }
  var isDeleted: Bool { get }
  var hasChanges: Bool { get }
  var hasPersistentChangedValues: Bool { get }
  var isFault: Bool { get }
  func hasFaultForRelationshipNamed(key: String) -> Bool
  func objectIDsForRelationshipNamed(key: String) -> [NSManagedObjectID]
  var faultingState: Int { get }
  func willAccessValueForKey(key: String?)
  func didAccessValueForKey(key: String?)
  func willChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  func willChangeValueForKey(inKey: String, withSetMutation inMutationKind: KeyValueSetMutationKind, usingObjects inObjects: Set<Object>)
  func didChangeValueForKey(inKey: String, withSetMutation inMutationKind: KeyValueSetMutationKind, usingObjects inObjects: Set<Object>)
  func awakeFromFetch()
  func awakeFromInsert()
  func awakeFromSnapshotEvents(flags: NSSnapshotEventType)
  func prepareForDeletion()
  func willSave()
  func didSave()
  func willTurnIntoFault()
  func didTurnIntoFault()
  func valueForKey(key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  func primitiveValueForKey(key: String) -> AnyObject?
  func setPrimitiveValue(value: AnyObject?, forKey key: String)
  func committedValuesForKeys(keys: [String]?) -> [String : AnyObject]
  func changedValues() -> [String : AnyObject]
  func changedValuesForCurrentEvent() -> [String : AnyObject]
  func validateValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
  convenience init()
}
let NSManagedObjectContextWillSaveNotification: String
let NSManagedObjectContextDidSaveNotification: String
let NSManagedObjectContextObjectsDidChangeNotification: String
let NSInsertedObjectsKey: String
let NSUpdatedObjectsKey: String
let NSDeletedObjectsKey: String
let NSRefreshedObjectsKey: String
let NSInvalidatedObjectsKey: String
let NSInvalidatedAllObjectsKey: String
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ConfinementConcurrencyType
  case PrivateQueueConcurrencyType
  case MainQueueConcurrencyType
}
class NSManagedObjectContext : Object, Coding {
  class func new() -> Self
  convenience init()
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  func perform(block: () -> Void)
  func performBlockAndWait(block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  var parent: NSManagedObjectContext?
  var name: String?
  var undoManager: UndoManager?
  var hasChanges: Bool { get }
  var userInfo: MutableDictionary { get }
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func objectRegisteredFor(objectID: NSManagedObjectID) -> NSManagedObject?
  func objectWith(objectID: NSManagedObjectID) -> NSManagedObject
  func existingObjectWith(objectID: NSManagedObjectID) throws -> NSManagedObject
  func execute(request: NSFetchRequest) throws -> [AnyObject]
  func countFor(request: NSFetchRequest, error: ErrorPointer) -> Int
  func execute(request: NSPersistentStoreRequest) throws -> NSPersistentStoreResult
  func insert(object: NSManagedObject)
  func delete(object: NSManagedObject)
  func refreshObject(object: NSManagedObject, mergeChanges flag: Bool)
  func detectConflictsFor(object: NSManagedObject)
  func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func processPendingChanges()
  func assign(object: AnyObject, to store: NSPersistentStore)
  var insertedObjects: Set<NSManagedObject> { get }
  var updatedObjects: Set<NSManagedObject> { get }
  var deletedObjects: Set<NSManagedObject> { get }
  var registeredObjects: Set<NSManagedObject> { get }
  func undo()
  func redo()
  func reset()
  func rollback()
  func save() throws
  func refreshAllObjects()
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  var shouldDeleteInaccessibleFaults: Bool
  func shouldHandleInaccessibleFault(fault: NSManagedObject, forObjectID oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: TimeInterval
  var mergePolicy: AnyObject
  func obtainPermanentIDsFor(objects: [NSManagedObject]) throws
  func mergeChangesFromContextDidSave(notification: Notification)
  class func mergeChangesFromRemoteContextSave(changeNotificationData: [Object : AnyObject], into contexts: [NSManagedObjectContext])
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct _managedObjectContextFlags {
  var _registeredForCallback: UInt32
  var _propagatesDeletesAtEndOfEvent: UInt32
  var _exhaustiveValidation: UInt32
  var _processingChanges: UInt32
  var _useCommittedSnapshot: UInt32
  var _registeredUndoTransactionID: UInt32
  var _retainsAllRegisteredObjects: UInt32
  var _savingInProgress: UInt32
  var _wasDisposed: UInt32
  var _unprocessedChangesPending: UInt32
  var _isDirty: UInt32
  var _ignoreUndoCheckpoints: UInt32
  var _propagatingDeletes: UInt32
  var _isNSEditorEditing: UInt32
  var _isMainThreadBlessed: UInt32
  var _isImportContext: UInt32
  var _preflightSaveInProgress: UInt32
  var _disableDiscardEditing: UInt32
  var _isParentStoreContext: UInt32
  var _postSaveNotifications: UInt32
  var _isMerging: UInt32
  var _concurrencyType: UInt32
  var _deleteInaccessible: UInt32
  var _reservedFlags: UInt32
  init()
  init(_registeredForCallback: UInt32, _propagatesDeletesAtEndOfEvent: UInt32, _exhaustiveValidation: UInt32, _processingChanges: UInt32, _useCommittedSnapshot: UInt32, _registeredUndoTransactionID: UInt32, _retainsAllRegisteredObjects: UInt32, _savingInProgress: UInt32, _wasDisposed: UInt32, _unprocessedChangesPending: UInt32, _isDirty: UInt32, _ignoreUndoCheckpoints: UInt32, _propagatingDeletes: UInt32, _isNSEditorEditing: UInt32, _isMainThreadBlessed: UInt32, _isImportContext: UInt32, _preflightSaveInProgress: UInt32, _disableDiscardEditing: UInt32, _isParentStoreContext: UInt32, _postSaveNotifications: UInt32, _isMerging: UInt32, _concurrencyType: UInt32, _deleteInaccessible: UInt32, _reservedFlags: UInt32)
}
class NSManagedObjectID : Object, Copying {
  var entity: NSEntityDescription { get }
  weak var persistentStore: @sil_weak NSPersistentStore? { get }
  var isTemporaryID: Bool { get }
  func uriRepresentation() -> URL
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class NSManagedObjectModel : Object, Coding, Copying, FastEnumeration {
  class func mergedModelFrom(bundles: [Bundle]?) -> NSManagedObjectModel?
   init?(byMerging models: [NSManagedObjectModel]?)
  init()
  convenience init?(contentsOf url: URL)
  var entitiesByName: [String : NSEntityDescription] { get }
  var entities: [NSEntityDescription]
  var configurations: [String] { get }
  func entitiesForConfiguration(configuration: String?) -> [NSEntityDescription]?
  func setEntities(entities: [NSEntityDescription], forConfiguration configuration: String)
  func setFetchRequestTemplate(fetchRequestTemplate: NSFetchRequest?, forName name: String)
  func fetchRequestTemplateForName(name: String) -> NSFetchRequest?
  func fetchRequestFromTemplateWithName(name: String, substitutionVariables variables: [String : AnyObject]) -> NSFetchRequest?
  var localizationDictionary: [String : String]?
  class func mergedModelFrom(bundles: [Bundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
   init?(byMerging models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  var versionIdentifiers: Set<Object>
  func isConfiguration(configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  var entityVersionHashesByName: [String : Data] { get }
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct __managedObjectModelFlags {
  var _isInUse: UInt32
  var _isImmutable: UInt32
  var _isOptimizedForEncoding: UInt32
  var _hasEntityWithConstraints: UInt32
  var _reservedEntityDescription: UInt32
  init()
  init(_isInUse: UInt32, _isImmutable: UInt32, _isOptimizedForEncoding: UInt32, _hasEntityWithConstraints: UInt32, _reservedEntityDescription: UInt32)
}
class NSMappingModel : Object {
   init?(from bundles: [Bundle]?, forSourceModel sourceModel: NSManagedObjectModel?, destinationModel: NSManagedObjectModel?)
  class func inferredMappingModelForSourceModel(sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel) throws -> NSMappingModel
  init?(contentsOf url: URL?)
  var entityMappings: [NSEntityMapping]!
  var entityMappingsByName: [String : NSEntityMapping] { get }
  init()
}
struct __modelMappingFlags {
  var _isInUse: UInt32
  var _reservedModelMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedModelMapping: UInt32)
}
var NSErrorMergePolicy: AnyObject
var NSMergeByPropertyStoreTrumpMergePolicy: AnyObject
var NSMergeByPropertyObjectTrumpMergePolicy: AnyObject
var NSOverwriteMergePolicy: AnyObject
var NSRollbackMergePolicy: AnyObject
enum NSMergePolicyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ErrorMergePolicyType
  case MergeByPropertyStoreTrumpMergePolicyType
  case MergeByPropertyObjectTrumpMergePolicyType
  case OverwriteMergePolicyType
  case RollbackMergePolicyType
}
class NSMergeConflict : Object {
  var sourceObject: NSManagedObject { get }
  var objectSnapshot: [String : AnyObject]? { get }
  var cachedSnapshot: [String : AnyObject]? { get }
  var persistedSnapshot: [String : AnyObject]? { get }
  var newVersionNumber: Int { get }
  var oldVersionNumber: Int { get }
  init(source srcObject: NSManagedObject, newVersion newvers: Int, oldVersion oldvers: Int, cachedSnapshot cachesnap: [String : AnyObject]?, persistedSnapshot persnap: [String : AnyObject]?)
}
class NSConstraintConflict : Object {
  var constraint: [String] { get }
  var constraintValues: [String : AnyObject] { get }
  var databaseObject: NSManagedObject? { get }
  var databaseSnapshot: [String : AnyObject]? { get }
  var conflictingObjects: [NSManagedObject] { get }
  var conflictingSnapshots: [[Object : AnyObject]] { get }
  init(constraint contraint: [String], databaseObject: NSManagedObject?, databaseSnapshot: [Object : AnyObject]?, conflictingObjects: [NSManagedObject], conflictingSnapshots: [AnyObject])
  convenience init()
}
class NSMergePolicy : Object {
  var mergeType: NSMergePolicyType { get }
  init(merge ty: NSMergePolicyType)
  func resolveConflicts(list: [AnyObject]) throws
  func resolveOptimisticLockingVersionConflicts(list: [NSMergeConflict]) throws
  func resolve(list: [NSConstraintConflict]) throws
}
class NSMigrationManager : Object {
  init(sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel)
  func migrateStoreFrom(sourceURL: URL, type sStoreType: String, options sOptions: [Object : AnyObject]? = [:], withMappingModel mappings: NSMappingModel?, toDestinationURL dURL: URL, destinationType dStoreType: String, destinationOptions dOptions: [Object : AnyObject]? = [:]) throws
  var usesStoreSpecificMigrationManager: Bool
  func reset()
  var mappingModel: NSMappingModel { get }
  var sourceModel: NSManagedObjectModel { get }
  var destinationModel: NSManagedObjectModel { get }
  var sourceContext: NSManagedObjectContext { get }
  var destinationContext: NSManagedObjectContext { get }
  func sourceEntityFor(mEntity: NSEntityMapping) -> NSEntityDescription?
  func destinationEntityFor(mEntity: NSEntityMapping) -> NSEntityDescription?
  func associateSourceInstance(sourceInstance: NSManagedObject, withDestinationInstance destinationInstance: NSManagedObject, forEntityMapping entityMapping: NSEntityMapping)
  func destinationInstancesForEntityMappingNamed(mappingName: String, sourceInstances: [NSManagedObject]?) -> [NSManagedObject]
  func sourceInstancesForEntityMappingNamed(mappingName: String, destinationInstances: [NSManagedObject]?) -> [NSManagedObject]
  var currentEntityMapping: NSEntityMapping { get }
  var migrationProgress: Float { get }
  var userInfo: [Object : AnyObject]?
  func cancelMigrationWithError(error: Error)
  init()
}
struct _migrationManagerFlags {
  var _migrationWasCancelled: UInt32
  var _usesStoreSpecificMigrationManager: UInt32
  var _reservedMigrationManager: UInt32
  init()
  init(_migrationWasCancelled: UInt32, _usesStoreSpecificMigrationManager: UInt32, _reservedMigrationManager: UInt32)
}
class NSPersistentStore : Object {
  class func metadataForPersistentStoreWith(url: URL) throws -> [String : AnyObject]
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreWith url: URL) throws
  class func migrationManagerClass() -> AnyClass
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, url: URL, options: [Object : AnyObject]? = [:])
  func loadMetadata() throws
  weak var persistentStoreCoordinator: @sil_weak NSPersistentStoreCoordinator? { get }
  var configurationName: String { get }
  var options: [Object : AnyObject]? { get }
  var url: URL?
  var identifier: String!
  var type: String { get }
  var isReadOnly: Bool
  var metadata: [String : AnyObject]!
  func didAddTo(coordinator: NSPersistentStoreCoordinator)
  func willRemoveFrom(coordinator: NSPersistentStoreCoordinator?)
}
struct _objectStoreFlags {
  var isReadOnly: UInt32
  var cleanOnRemove: UInt32
  var isMDDirty: UInt32
  var _RESERVED: UInt32
  init()
  init(isReadOnly: UInt32, cleanOnRemove: UInt32, isMDDirty: UInt32, _RESERVED: UInt32)
}
let NSSQLiteStoreType: String
let NSBinaryStoreType: String
let NSInMemoryStoreType: String
let NSStoreTypeKey: String
let NSStoreUUIDKey: String
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
let NSAddedPersistentStoresKey: String
let NSRemovedPersistentStoresKey: String
let NSUUIDChangedPersistentStoresKey: String
let NSReadOnlyPersistentStoreOption: String
let NSPersistentStoreTimeoutOption: String
let NSSQLitePragmasOption: String
let NSSQLiteAnalyzeOption: String
let NSSQLiteManualVacuumOption: String
let NSIgnorePersistentStoreVersioningOption: String
let NSMigratePersistentStoresAutomaticallyOption: String
let NSInferMappingModelAutomaticallyOption: String
let NSStoreModelVersionHashesKey: String
let NSStoreModelVersionIdentifiersKey: String
let NSPersistentStoreOSCompatibility: String
let NSPersistentStoreForceDestroyOption: String
let NSPersistentStoreFileProtectionKey: String
class NSPersistentStoreCoordinator : Object {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  var name: String?
  func persistentStoreFor(URL: URL) -> NSPersistentStore?
  func urlFor(store: NSPersistentStore) -> URL
  func setURL(url: URL, forPersistentStore store: NSPersistentStore) -> Bool
  func addPersistentStoreWithType(storeType: String, configuration: String?, url storeURL: URL?, options: [Object : AnyObject]? = [:]) throws -> NSPersistentStore
  func removePersistentStore(store: NSPersistentStore) throws
  func setMetadata(metadata: [String : AnyObject]?, forPersistentStore store: NSPersistentStore)
  func metadataFor(store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectIDForURIRepresentation(url: URL) -> NSManagedObjectID?
  func execute(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext) throws -> AnyObject
  class func registeredStoreTypes() -> [String : Value]
  class func registerStoreClass(storeClass: AnyClass, forStoreType storeType: String)
  class func metadataForPersistentStoreOfType(storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws -> [String : AnyObject]
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws
  class func metadataForPersistentStoreOfType(storeType: String?, url: URL) throws -> [String : AnyObject]
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, url: URL) throws
  func migratePersistentStore(store: NSPersistentStore, to URL: URL, options: [Object : AnyObject]? = [:], withType storeType: String) throws -> NSPersistentStore
  func destroyPersistentStoreAt(url: URL, withType storeType: String, options: [Object : AnyObject]? = [:]) throws
  func replacePersistentStoreAt(destinationURL: URL, destinationOptions: [Object : AnyObject]? = [:], withPersistentStoreFrom sourceURL: URL, sourceOptions: [Object : AnyObject]? = [:], storeType: String) throws
  func perform(block: () -> Void)
  func performBlockAndWait(block: () -> Void)
  convenience init()
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered: UInt32, _reservedFlags: UInt32)
}
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case FetchRequestType
  case SaveRequestType
  case BatchUpdateRequestType
  case BatchDeleteRequestType
}
class NSPersistentStoreRequest : Object, Copying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias NSPersistentStoreAsynchronousFetchResultCompletionBlock = (NSAsynchronousFetchResult) -> Void
class NSAsynchronousFetchRequest : NSPersistentStoreRequest {
  var fetchRequest: NSFetchRequest { get }
  var completionBlock: NSPersistentStoreAsynchronousFetchResultCompletionBlock? { get }
  var estimatedResultCount: Int
  init(fetchRequest request: NSFetchRequest, completionBlock blk: NSPersistentStoreAsynchronousFetchResultCompletionBlock? = nil)
  init()
}
enum NSBatchUpdateRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case StatusOnlyResultType
  case UpdatedObjectIDsResultType
  case UpdatedObjectsCountResultType
}
enum NSBatchDeleteRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ResultTypeStatusOnly
  case ResultTypeObjectIDs
  case ResultTypeCount
}
class NSPersistentStoreResult : Object {
  init()
}
class NSPersistentStoreAsynchronousResult : NSPersistentStoreResult {
  var managedObjectContext: NSManagedObjectContext { get }
  var operationError: Error? { get }
  var progress: Progress? { get }
  func cancel()
  init()
}
class NSAsynchronousFetchResult : NSPersistentStoreAsynchronousResult {
  var fetchRequest: NSAsynchronousFetchRequest { get }
  var finalResult: [AnyObject]? { get }
  init()
}
class NSBatchUpdateResult : NSPersistentStoreResult {
  var result: AnyObject? { get }
  var resultType: NSBatchUpdateRequestResultType { get }
  init()
}
class NSBatchDeleteResult : NSPersistentStoreResult {
  var result: AnyObject? { get }
  var resultType: NSBatchDeleteRequestResultType { get }
  init()
}
class NSPropertyDescription : Object, Coding, Copying {
  unowned(unsafe) var entity: @sil_unmanaged NSEntityDescription { get }
  var name: String
  var isOptional: Bool
  var isTransient: Bool
  var validationPredicates: [Predicate] { get }
  var validationWarnings: [AnyObject] { get }
  func setValidationPredicates(validationPredicates: [Predicate]?, withValidationWarnings validationWarnings: [String]?)
  var userInfo: [Object : AnyObject]?
  var isIndexed: Bool
  @NSCopying var versionHash: Data { get }
  var versionHashModifier: String?
  var isIndexedBySpotlight: Bool
  var isStoredInExternalRecord: Bool
  var renamingIdentifier: String?
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
struct __propertyDescriptionFlags {
  var _isReadOnly: UInt32
  var _isTransient: UInt32
  var _isOptional: UInt32
  var _isIndexed: UInt32
  var _skipValidation: UInt32
  var _isIndexedBySpotlight: UInt32
  var _isStoredInExternalRecord: UInt32
  var _extraIvarsAreInDataBlob: UInt32
  var _isOrdered: UInt32
  var _reservedPropertyDescription: UInt32
  init()
  init(_isReadOnly: UInt32, _isTransient: UInt32, _isOptional: UInt32, _isIndexed: UInt32, _skipValidation: UInt32, _isIndexedBySpotlight: UInt32, _isStoredInExternalRecord: UInt32, _extraIvarsAreInDataBlob: UInt32, _isOrdered: UInt32, _reservedPropertyDescription: UInt32)
}
class NSPropertyMapping : Object {
  var name: String?
  var valueExpression: Expression?
  var userInfo: [Object : AnyObject]?
  init()
}
struct __propertyMappingFlags {
  var _isInUse: UInt32
  var _reservedPropertyMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedPropertyMapping: UInt32)
}
enum NSDeleteRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoActionDeleteRule
  case NullifyDeleteRule
  case CascadeDeleteRule
  case DenyDeleteRule
}
class NSRelationshipDescription : NSPropertyDescription {
  unowned(unsafe) var destinationEntity: @sil_unmanaged NSEntityDescription?
  unowned(unsafe) var inverseRelationship: @sil_unmanaged NSRelationshipDescription?
  var maxCount: Int
  var minCount: Int
  var deleteRule: NSDeleteRule
  var isToMany: Bool { get }
  @NSCopying var versionHash: Data { get }
  var isOrdered: Bool
  init()
  init?(coder aDecoder: Coder)
}
class NSSaveChangesRequest : NSPersistentStoreRequest {
  init(insertedObjects: Set<NSManagedObject>?, updatedObjects: Set<NSManagedObject>?, deletedObjects: Set<NSManagedObject>?, lockedObjects: Set<NSManagedObject>?)
  var insertedObjects: Set<NSManagedObject>? { get }
  var updatedObjects: Set<NSManagedObject>? { get }
  var deletedObjects: Set<NSManagedObject>? { get }
  var lockedObjects: Set<NSManagedObject>? { get }
  init()
}
