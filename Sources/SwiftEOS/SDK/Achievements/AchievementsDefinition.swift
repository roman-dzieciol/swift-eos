import Foundation
import EOSSDK

/**
 * Contains information about a single achievement definition with localized text.
 * 
 * - see: release func: EOS_Achievements_Definition_Release
 */
public struct SwiftEOS_Achievements_Definition: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_DEFINITION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Achievement ID that can be used to uniquely identify the achievement.  */
    public let AchievementId: String?

    /** Text representing the Name to display in-game when achievement has been unlocked.  */
    public let DisplayName: String?

    /** Text representing the description to display in-game when achievement has been unlocked.  */
    public let Description: String?

    /** Text representing the name to display in-game when achievement is locked.  */
    public let LockedDisplayName: String?

    /** Text representing the description of what needs to be done to trigger the unlock of this achievement.  */
    public let LockedDescription: String?

    /** Text representing the description to display in-game when achievement is hidden.  */
    public let HiddenDescription: String?

    /** Text representing the description of what happens when the achievement is unlocked.  */
    public let CompletionDescription: String?

    /** Text representing the icon to display in-game when achievement is unlocked.  */
    public let UnlockedIconId: String?

    /** Text representing the icon to display in-game when achievement is locked.  */
    public let LockedIconId: String?

    /** True if achievement is hidden, false otherwise.  */
    public let bIsHidden: Bool

    /** The number of stat thresholds.  */
    public let StatThresholdsCount: Int

    /** Array of stat thresholds that need to be satisfied to unlock the achievement.  */
    public let StatThresholds: [SwiftEOS_Achievements_StatThresholds]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_Definition {
        try _tagEOS_Achievements_Definition(
            ApiVersion: ApiVersion,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString),
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString),
            Description: pointerManager.managedPointerToBuffer(copyingArray: Description?.utf8CString),
            LockedDisplayName: pointerManager.managedPointerToBuffer(copyingArray: LockedDisplayName?.utf8CString),
            LockedDescription: pointerManager.managedPointerToBuffer(copyingArray: LockedDescription?.utf8CString),
            HiddenDescription: pointerManager.managedPointerToBuffer(copyingArray: HiddenDescription?.utf8CString),
            CompletionDescription: pointerManager.managedPointerToBuffer(copyingArray: CompletionDescription?.utf8CString),
            UnlockedIconId: pointerManager.managedPointerToBuffer(copyingArray: UnlockedIconId?.utf8CString),
            LockedIconId: pointerManager.managedPointerToBuffer(copyingArray: LockedIconId?.utf8CString),
            bIsHidden: eosBoolFromSwiftBool(bIsHidden),
            StatThresholdsCount: try safeNumericCast(exactly: StatThresholdsCount),
            StatThresholds: try pointerManager.managedPointerToBuffer(copyingArray: StatThresholds?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_Definition?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementId = String(cString: sdkObject.AchievementId)
        self.DisplayName = String(cString: sdkObject.DisplayName)
        self.Description = String(cString: sdkObject.Description)
        self.LockedDisplayName = String(cString: sdkObject.LockedDisplayName)
        self.LockedDescription = String(cString: sdkObject.LockedDescription)
        self.HiddenDescription = String(cString: sdkObject.HiddenDescription)
        self.CompletionDescription = String(cString: sdkObject.CompletionDescription)
        self.UnlockedIconId = String(cString: sdkObject.UnlockedIconId)
        self.LockedIconId = String(cString: sdkObject.LockedIconId)
        self.bIsHidden = try swiftBoolFromEosBool(sdkObject.bIsHidden)
        self.StatThresholdsCount = try safeNumericCast(exactly: sdkObject.StatThresholdsCount)
        self.StatThresholds = try sdkObject.StatThresholds.array(safeNumericCast(exactly: sdkObject.StatThresholdsCount)).compactMap { 
            try SwiftEOS_Achievements_StatThresholds.init(sdkObject: $0.pointee) }
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ACHIEVEMENTS_DEFINITION_API_LATEST. 
     * - Parameter AchievementId:  Achievement ID that can be used to uniquely identify the achievement. 
     * - Parameter DisplayName:  Text representing the Name to display in-game when achievement has been unlocked. 
     * - Parameter Description:  Text representing the description to display in-game when achievement has been unlocked. 
     * - Parameter LockedDisplayName:  Text representing the name to display in-game when achievement is locked. 
     * - Parameter LockedDescription:  Text representing the description of what needs to be done to trigger the unlock of this achievement. 
     * - Parameter HiddenDescription:  Text representing the description to display in-game when achievement is hidden. 
     * - Parameter CompletionDescription:  Text representing the description of what happens when the achievement is unlocked. 
     * - Parameter UnlockedIconId:  Text representing the icon to display in-game when achievement is unlocked. 
     * - Parameter LockedIconId:  Text representing the icon to display in-game when achievement is locked. 
     * - Parameter bIsHidden:  True if achievement is hidden, false otherwise. 
     * - Parameter StatThresholdsCount:  The number of stat thresholds. 
     * - Parameter StatThresholds:  Array of stat thresholds that need to be satisfied to unlock the achievement. 
     */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_DEFINITION_API_LATEST,
        AchievementId: String?,
        DisplayName: String?,
        Description: String?,
        LockedDisplayName: String?,
        LockedDescription: String?,
        HiddenDescription: String?,
        CompletionDescription: String?,
        UnlockedIconId: String?,
        LockedIconId: String?,
        bIsHidden: Bool,
        StatThresholdsCount: Int,
        StatThresholds: [SwiftEOS_Achievements_StatThresholds]?
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementId = AchievementId
        self.DisplayName = DisplayName
        self.Description = Description
        self.LockedDisplayName = LockedDisplayName
        self.LockedDescription = LockedDescription
        self.HiddenDescription = HiddenDescription
        self.CompletionDescription = CompletionDescription
        self.UnlockedIconId = UnlockedIconId
        self.LockedIconId = LockedIconId
        self.bIsHidden = bIsHidden
        self.StatThresholdsCount = StatThresholdsCount
        self.StatThresholds = StatThresholds
    }
}
