
protocol GKAgentDelegate : ObjectProtocol {
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
  func updateWithDeltaTime(seconds: TimeInterval)
  init()
}
class GKBehavior : Object, FastEnumeration {
  var goalCount: Int { get }
  convenience init(goal: GKGoal, weight: Float)
  convenience init(goals: [GKGoal])
  convenience init(goals: [GKGoal], andWeights weights: [Number])
  convenience init(weightedGoals: [GKGoal : Number])
  func setWeight(weight: Float, forGoal goal: GKGoal)
  func weightFor(goal: GKGoal) -> Float
  func remove(goal: GKGoal)
  func removeAllGoals()
  subscript (idx: Int) -> GKGoal { get }
  subscript (goal: GKGoal) -> Number
  init()
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class GKComponent : Object, Copying {
  weak var entity: @sil_weak GKEntity? { get }
  func updateWithDeltaTime(seconds: TimeInterval)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class GKComponentSystem : Object, FastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript (idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(component: GKComponent)
  func addComponentWith(entity: GKEntity)
  func removeComponentWith(entity: GKEntity)
  func removeComponent(component: GKComponent)
  func updateWithDeltaTime(seconds: TimeInterval)
  init()
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class GKEntity : Object, Copying {
  init()
  func updateWithDeltaTime(seconds: TimeInterval)
  var components: [GKComponent] { get }
  func addComponent(component: GKComponent)
  func removeComponentFor(componentClass: AnyClass)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension GKEntity {
  /// Returns the component instance of the indicated class contained by the
  /// entity. Returns nil if entity does not have this component.
  @warn_unused_result
  func componentForClass<ComponentType : GKComponent>(componentClass: ComponentType.Type) -> ComponentType?
}
let GKGameModelMaxScore: Int
let GKGameModelMinScore: Int
protocol GKGameModelUpdate : ObjectProtocol {
  var value: Int { get set }
}
protocol GKGameModelPlayer : ObjectProtocol {
  var playerId: Int { get }
}
protocol GKGameModel : ObjectProtocol, Copying {
  var players: [GKGameModelPlayer]? { get }
  var activePlayer: GKGameModelPlayer? { get }
  func setGameModel(gameModel: GKGameModel)
  func gameModelUpdatesFor(player: GKGameModelPlayer) -> [GKGameModelUpdate]?
  func apply(gameModelUpdate: GKGameModelUpdate)
  optional func scoreFor(player: GKGameModelPlayer) -> Int
  optional func isWinFor(player: GKGameModelPlayer) -> Bool
  optional func isLossFor(player: GKGameModelPlayer) -> Bool
  optional func unapplyGameModelUpdate(gameModelUpdate: GKGameModelUpdate)
}
class GKGoal : Object, Copying {
  convenience init(toSeekAgent agent: GKAgent)
  convenience init(toFleeAgent agent: GKAgent)
  convenience init(toAvoid obstacles: [GKObstacle], maxPredictionTime: TimeInterval)
  convenience init(toAvoid agents: [GKAgent], maxPredictionTime: TimeInterval)
  convenience init(toSeparateFrom agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toAlignWith agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toCohereWith agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toReachTargetSpeed targetSpeed: Float)
  convenience init(toWander speed: Float)
  convenience init(toInterceptAgent target: GKAgent, maxPredictionTime: TimeInterval)
  convenience init(toFollow path: GKPath, maxPredictionTime: TimeInterval, forward: Bool)
  convenience init(toStayOn path: GKPath, maxPredictionTime: TimeInterval)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class GKGraph : Object {
  var nodes: [GKGraphNode]? { get }
  init(nodes: [GKGraphNode])
  func connectNodeToLowestCostNode(node: GKGraphNode, bidirectional: Bool)
  func removeNodes(nodes: [GKGraphNode])
  func addNodes(nodes: [GKGraphNode])
  func findPathFrom(startNode: GKGraphNode, to endNode: GKGraphNode) -> [GKGraphNode]
  init()
}
class GKObstacleGraph : GKGraph {
  var obstacles: [GKPolygonObstacle] { get }
  var bufferRadius: Float { get }
  init(obstacles: [GKPolygonObstacle], bufferRadius: Float)
  func connectNodeUsingObstacles(node: GKGraphNode2D)
  func connectNodeUsingObstacles(node: GKGraphNode2D, ignoring obstaclesToIgnore: [GKPolygonObstacle])
  func connectNodeUsingObstacles(node: GKGraphNode2D, ignoringBufferRadiusOf obstaclesBufferRadiusToIgnore: [GKPolygonObstacle])
  func addObstacles(obstacles: [GKPolygonObstacle])
  func removeObstacles(obstacles: [GKPolygonObstacle])
  func removeAllObstacles()
  func nodesFor(obstacle: GKPolygonObstacle) -> [GKGraphNode2D]
  func lockConnectionFrom(startNode: GKGraphNode2D, to endNode: GKGraphNode2D)
  func unlockConnectionFrom(startNode: GKGraphNode2D, to endNode: GKGraphNode2D)
  func isConnectionLockedFrom(startNode: GKGraphNode2D, to endNode: GKGraphNode2D) -> Bool
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
class GKGraphNode : Object {
  var connectedNodes: [GKGraphNode] { get }
  func addConnectionsTo(nodes: [GKGraphNode], bidirectional: Bool)
  func removeConnectionsTo(nodes: [GKGraphNode], bidirectional: Bool)
  func estimatedCostTo(node: GKGraphNode) -> Float
  func costTo(node: GKGraphNode) -> Float
  func findPathTo(goalNode: GKGraphNode) -> [GKGraphNode]
  func findPathFrom(startNode: GKGraphNode) -> [GKGraphNode]
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
class GKMinmaxStrategist : Object, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMoveFor(player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMoveFor(player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  init()
  var gameModel: GKGameModel?
  var randomSource: GKRandom?
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
class GKObstacle : Object {
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
  func vertexAt(index: Int) -> vector_float2
  convenience init()
}
class GKPath : Object {
  var radius: Float
  var isCyclical: Bool
  var numPoints: Int { get }
  init(points: UnsafeMutablePointer<vector_float2>, count: Int, radius: Float, cyclical: Bool)
  convenience init(graphNodes: [GKGraphNode2D], radius: Float)
  func pointAt(index: Int) -> vector_float2
  convenience init()
}
class GKRandomDistribution : Object, GKRandom {
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
class GKRandomSource : Object, GKRandom, SecureCoding, Copying {
  init()
  init(coder aDecoder: Coder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjectsIn(array: [AnyObject]) -> [AnyObject]
  func nextInt() -> Int
  func nextIntWithUpperBound(upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: Data
  convenience init()
  init(seed: Data)
  func dropValuesWithCount(count: Int)
  init(coder aDecoder: Coder)
}
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: Coder)
}
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: Coder)
}
class GKRuleSystem : Object {
  init()
  func evaluate()
  var state: MutableDictionary { get }
  var rules: [GKRule] { get }
  func addRule(rule: GKRule)
  func addRulesFrom(rules: [GKRule])
  func removeAllRules()
  var agenda: [GKRule] { get }
  var executed: [GKRule] { get }
  var facts: [AnyObject] { get }
  func gradeForFact(fact: ObjectProtocol) -> Float
  func minimumGradeForFacts(facts: [AnyObject]) -> Float
  func maximumGradeForFacts(facts: [AnyObject]) -> Float
  func assertFact(fact: ObjectProtocol)
  func assertFact(fact: ObjectProtocol, grade: Float)
  func retractFact(fact: ObjectProtocol)
  func retractFact(fact: ObjectProtocol, grade: Float)
  func reset()
}
class GKRule : Object {
  var salience: Int
  func evaluatePredicateWith(system: GKRuleSystem) -> Bool
  func performActionWith(system: GKRuleSystem)
  convenience init(predicate: Predicate, assertingFact fact: ObjectProtocol, grade: Float)
  convenience init(predicate: Predicate, retractingFact fact: ObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
class GKNSPredicateRule : GKRule {
  var predicate: Predicate { get }
  init(predicate: Predicate)
  func evaluatePredicateWith(system: GKRuleSystem) -> Bool
  convenience init(predicate: Predicate, assertingFact fact: ObjectProtocol, grade: Float)
  convenience init(predicate: Predicate, retractingFact fact: ObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
class GKState : Object {
  weak var stateMachine: @sil_weak GKStateMachine? { get }
  init()
  func isValidNextState(stateClass: AnyClass) -> Bool
  func didEnterWithPreviousState(previousState: GKState?)
  func updateWithDeltaTime(seconds: TimeInterval)
  func willExitWithNextState(nextState: GKState)
}
class GKStateMachine : Object {
  var currentState: GKState? { get }
  init(states: [GKState])
  func updateWithDeltaTime(sec: TimeInterval)
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
protocol GKStrategist : ObjectProtocol {
  var gameModel: GKGameModel? { get set }
  var randomSource: GKRandom? { get set }
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
