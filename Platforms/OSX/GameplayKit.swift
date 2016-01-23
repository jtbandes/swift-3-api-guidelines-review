
protocol GKAgentDelegate : NSObjectProtocol {
  optional func agentWillUpdate(agent: GKAgent)
  optional func agentDidUpdate(agent: GKAgent)
}
class GKAgent : GKComponent {
  weak var delegate: @sil_weak GKAgentDelegate?
  var behavior: GKBehavior?
  var mass: Float
  var radius: Float
  var speed: Float { get }
  var maxAcceleration: Float
  var maxSpeed: Float
  init()
}
class GKAgent2D : GKAgent {
  var position: vector_float2
  var velocity: vector_float2 { get }
  var rotation: Float
  func updateWithDeltaTime(seconds: NSTimeInterval)
  init()
}
class GKBehavior : NSObject, NSFastEnumeration {
  var goalCount: Int { get }
  convenience init(goal: GKGoal, weight: Float)
  convenience init(goals: [GKGoal])
  convenience init(goals: [GKGoal], andWeights weights: [NSNumber])
  convenience init(weightedGoals: [GKGoal : NSNumber])
  func setWeight(weight: Float, forGoal goal: GKGoal)
  func weightForGoal(goal: GKGoal) -> Float
  func removeGoal(goal: GKGoal)
  func removeAllGoals()
  subscript (idx: Int) -> GKGoal { get }
  subscript (goal: GKGoal) -> NSNumber
  init()
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class GKComponent : NSObject, NSCopying {
  weak var entity: @sil_weak GKEntity? { get }
  func updateWithDeltaTime(seconds: NSTimeInterval)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class GKComponentSystem : NSObject, NSFastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript (idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(component: GKComponent)
  func addComponentWithEntity(entity: GKEntity)
  func removeComponentWithEntity(entity: GKEntity)
  func removeComponent(component: GKComponent)
  func updateWithDeltaTime(seconds: NSTimeInterval)
  init()
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class GKEntity : NSObject, NSCopying {
  init()
  func updateWithDeltaTime(seconds: NSTimeInterval)
  var components: [GKComponent] { get }
  func addComponent(component: GKComponent)
  func removeComponentForClass(componentClass: AnyClass)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension GKEntity {
  /// Returns the component instance of the indicated class contained by the
  /// entity. Returns nil if entity does not have this component.
  @warn_unused_result
  func componentForClass<ComponentType : GKComponent>(componentClass: ComponentType.Type) -> ComponentType?
}
let GKGameModelMaxScore: Int
let GKGameModelMinScore: Int
protocol GKGameModelUpdate : NSObjectProtocol {
  var value: Int { get set }
}
protocol GKGameModelPlayer : NSObjectProtocol {
  var playerId: Int { get }
}
protocol GKGameModel : NSObjectProtocol, NSCopying {
  var players: [GKGameModelPlayer]? { get }
  var activePlayer: GKGameModelPlayer? { get }
  func setGameModel(gameModel: GKGameModel)
  func gameModelUpdatesForPlayer(player: GKGameModelPlayer) -> [GKGameModelUpdate]?
  func applyGameModelUpdate(gameModelUpdate: GKGameModelUpdate)
  optional func scoreForPlayer(player: GKGameModelPlayer) -> Int
  optional func isWinForPlayer(player: GKGameModelPlayer) -> Bool
  optional func isLossForPlayer(player: GKGameModelPlayer) -> Bool
  optional func unapplyGameModelUpdate(gameModelUpdate: GKGameModelUpdate)
}
class GKGoal : NSObject, NSCopying {
  convenience init(toSeekAgent agent: GKAgent)
  convenience init(toFleeAgent agent: GKAgent)
  convenience init(toAvoidObstacles obstacles: [GKObstacle], maxPredictionTime: NSTimeInterval)
  convenience init(toAvoidAgents agents: [GKAgent], maxPredictionTime: NSTimeInterval)
  convenience init(toSeparateFromAgents agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toAlignWithAgents agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toCohereWithAgents agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toReachTargetSpeed targetSpeed: Float)
  convenience init(toWander speed: Float)
  convenience init(toInterceptAgent target: GKAgent, maxPredictionTime: NSTimeInterval)
  convenience init(toFollowPath path: GKPath, maxPredictionTime: NSTimeInterval, forward: Bool)
  convenience init(toStayOnPath path: GKPath, maxPredictionTime: NSTimeInterval)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class GKGraph : NSObject {
  var nodes: [GKGraphNode]? { get }
  init(nodes: [GKGraphNode])
  func connectNodeToLowestCostNode(node: GKGraphNode, bidirectional: Bool)
  func removeNodes(nodes: [GKGraphNode])
  func addNodes(nodes: [GKGraphNode])
  func findPathFromNode(startNode: GKGraphNode, toNode endNode: GKGraphNode) -> [GKGraphNode]
  init()
}
class GKObstacleGraph : GKGraph {
  var obstacles: [GKPolygonObstacle] { get }
  var bufferRadius: Float { get }
  init(obstacles: [GKPolygonObstacle], bufferRadius: Float)
  func connectNodeUsingObstacles(node: GKGraphNode2D)
  func connectNodeUsingObstacles(node: GKGraphNode2D, ignoringObstacles obstaclesToIgnore: [GKPolygonObstacle])
  func connectNodeUsingObstacles(node: GKGraphNode2D, ignoringBufferRadiusOfObstacles obstaclesBufferRadiusToIgnore: [GKPolygonObstacle])
  func addObstacles(obstacles: [GKPolygonObstacle])
  func removeObstacles(obstacles: [GKPolygonObstacle])
  func removeAllObstacles()
  func nodesForObstacle(obstacle: GKPolygonObstacle) -> [GKGraphNode2D]
  func lockConnectionFromNode(startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D)
  func unlockConnectionFromNode(startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D)
  func isConnectionLockedFromNode(startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D) -> Bool
  init(nodes: [GKGraphNode])
  init()
}
class GKGridGraph : GKGraph {
  var gridOrigin: vector_int2 { get }
  var gridWidth: Int { get }
  var gridHeight: Int { get }
  var diagonalsAllowed: Bool { get }
  init(fromGridStartingAt position: vector_int2, width: Int32, height: Int32, diagonalsAllowed: Bool)
  func nodeAtGridPosition(position: vector_int2) -> GKGridGraphNode?
  func connectNodeToAdjacentNodes(node: GKGridGraphNode)
  init(nodes: [GKGraphNode])
  init()
}
class GKGraphNode : NSObject {
  var connectedNodes: [GKGraphNode] { get }
  func addConnectionsToNodes(nodes: [GKGraphNode], bidirectional: Bool)
  func removeConnectionsToNodes(nodes: [GKGraphNode], bidirectional: Bool)
  func estimatedCostToNode(node: GKGraphNode) -> Float
  func costToNode(node: GKGraphNode) -> Float
  func findPathToNode(goalNode: GKGraphNode) -> [GKGraphNode]
  func findPathFromNode(startNode: GKGraphNode) -> [GKGraphNode]
  init()
}
class GKGraphNode2D : GKGraphNode {
  var position: vector_float2
  class func nodeWithPoint(point: vector_float2) -> Self
  init(point: vector_float2)
  convenience init()
}
class GKGridGraphNode : GKGraphNode {
  var gridPosition: vector_int2
  init(gridPosition: vector_int2)
  convenience init()
}
class GKMinmaxStrategist : NSObject, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMoveForPlayer(player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMoveForPlayer(player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  init()
  var gameModel: GKGameModel?
  var randomSource: GKRandom?
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
class GKObstacle : NSObject {
  init()
}
class GKCircleObstacle : GKObstacle {
  var radius: Float
  var position: vector_float2
  init(radius: Float)
  convenience init()
}
class GKPolygonObstacle : GKObstacle {
  var vertexCount: Int { get }
  init(points: UnsafeMutablePointer<vector_float2>, count numPoints: Int)
  func vertexAtIndex(index: Int) -> vector_float2
  convenience init()
}
class GKPath : NSObject {
  var radius: Float
  var cyclical: Bool
  var numPoints: Int { get }
  init(points: UnsafeMutablePointer<vector_float2>, count: Int, radius: Float, cyclical: Bool)
  convenience init(graphNodes: [GKGraphNode2D], radius: Float)
  func pointAtIndex(index: Int) -> vector_float2
  convenience init()
}
class GKRandomDistribution : NSObject, GKRandom {
  var lowestValue: Int { get }
  var highestValue: Int { get }
  var numberOfPossibleOutcomes: Int { get }
  init(randomSource source: GKRandom, lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  func nextInt() -> Int
  func nextIntWithUpperBound(upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
  convenience init(lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  convenience init(forDieWithSideCount sideCount: Int)
  class func d6() -> Self
  class func d20() -> Self
  convenience init()
}
class GKGaussianDistribution : GKRandomDistribution {
  var mean: Float { get }
  var deviation: Float { get }
  init(randomSource source: GKRandom, lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  init(randomSource source: GKRandom, mean: Float, deviation: Float)
  convenience init(lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  convenience init(forDieWithSideCount sideCount: Int)
  convenience init()
}
class GKShuffledDistribution : GKRandomDistribution {
  init(randomSource source: GKRandom, lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  convenience init(lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  convenience init(forDieWithSideCount sideCount: Int)
  convenience init()
}
protocol GKRandom {
  func nextInt() -> Int
  func nextIntWithUpperBound(upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
class GKRandomSource : NSObject, GKRandom, NSSecureCoding, NSCopying {
  init()
  init(coder aDecoder: NSCoder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjectsInArray(array: [AnyObject]) -> [AnyObject]
  func nextInt() -> Int
  func nextIntWithUpperBound(upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: NSData
  convenience init()
  init(seed: NSData)
  func dropValuesWithCount(count: Int)
  init(coder aDecoder: NSCoder)
}
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: NSCoder)
}
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: NSCoder)
}
class GKRuleSystem : NSObject {
  init()
  func evaluate()
  var state: NSMutableDictionary { get }
  var rules: [GKRule] { get }
  func addRule(rule: GKRule)
  func addRulesFromArray(rules: [GKRule])
  func removeAllRules()
  var agenda: [GKRule] { get }
  var executed: [GKRule] { get }
  var facts: [AnyObject] { get }
  func gradeForFact(fact: NSObjectProtocol) -> Float
  func minimumGradeForFacts(facts: [AnyObject]) -> Float
  func maximumGradeForFacts(facts: [AnyObject]) -> Float
  func assertFact(fact: NSObjectProtocol)
  func assertFact(fact: NSObjectProtocol, grade: Float)
  func retractFact(fact: NSObjectProtocol)
  func retractFact(fact: NSObjectProtocol, grade: Float)
  func reset()
}
class GKRule : NSObject {
  var salience: Int
  func evaluatePredicateWithSystem(system: GKRuleSystem) -> Bool
  func performActionWithSystem(system: GKRuleSystem)
  convenience init(predicate: NSPredicate, assertingFact fact: NSObjectProtocol, grade: Float)
  convenience init(predicate: NSPredicate, retractingFact fact: NSObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
class GKNSPredicateRule : GKRule {
  var predicate: NSPredicate { get }
  init(predicate: NSPredicate)
  func evaluatePredicateWithSystem(system: GKRuleSystem) -> Bool
  convenience init(predicate: NSPredicate, assertingFact fact: NSObjectProtocol, grade: Float)
  convenience init(predicate: NSPredicate, retractingFact fact: NSObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
class GKState : NSObject {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  init()
  func isValidNextState(stateClass: AnyClass) -> Bool
  func didEnterWithPreviousState(previousState: GKState?)
  func updateWithDeltaTime(seconds: NSTimeInterval)
  func willExitWithNextState(nextState: GKState)
}
class GKStateMachine : NSObject {
  var currentState: GKState? { get }
  init(states: [GKState])
  func updateWithDeltaTime(sec: NSTimeInterval)
  func canEnterState(stateClass: AnyClass) -> Bool
  func enterState(stateClass: AnyClass) -> Bool
  convenience init()
}
extension GKStateMachine {
  /// Returns the state instance of the indicated class contained by the state
  /// machine. Returns nil if state machine does not have this state.
  @warn_unused_result
  func stateForClass<StateType : GKState>(stateClass: StateType.Type) -> StateType?
}
protocol GKStrategist : NSObjectProtocol {
  var gameModel: GKGameModel? { get set }
  var randomSource: GKRandom? { get set }
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
