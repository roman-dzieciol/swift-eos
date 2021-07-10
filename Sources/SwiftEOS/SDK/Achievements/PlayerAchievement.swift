import Foundation
import EOSSDK

/**
 * Contains information about a single player achievement.
 * 
 * - see: release func: EOS_Achievements_PlayerAchievement_Release
 */
public struct SwiftEOS_Achievements_PlayerAchievement: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_PLAYERACHIEVEMENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** This achievement's unique identifier.  */
    public let AchievementId: String?

    /** Progress towards completing this achievement (as a percentage).  */
    public let Progress: Double

    /** The POSIX timestamp when the achievement was unlocked. If the achievement has not been unlocked, this value will be EOS_ACHIEVEMENTS_ACHIEVEMENT_UNLOCKTIME_UNDEFINED.  */
    public let UnlockTime: Int

    /**
     * Array of EOS_Achievements_PlayerStatInfo structures containing information about stat thresholds used to unlock the achievement and the player's current values for those stats. 
     * 
     * - Note: ``EOS/_tagEOS_Achievements_PlayerAchievement/StatInfoCount``:
     * The number of player stat info entries associated with this achievement. 
     */
    public let StatInfo: [SwiftEOS_Achievements_PlayerStatInfo]?

    /**
     * 
     * Localized display name for the achievement based on this specific player's current progress on the achievement. 
     * 
     * - Note:  The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
     */
    public let DisplayName: String?

    /**
     * 
     * Localized description for the achievement based on this specific player's current progress on the achievement.
     * 
     * - Note:  The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
     */
    public let Description: String?

    /**
     * URL of an icon to display for the achievement based on this specific player's current progress on the achievement. This may be null if there is no data configured in the dev portal.
     * 
     * - Note:  The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
     */
    public let IconURL: String?

    /** Localized flavor text that can be used by the game in an arbitrary manner. This may be null if there is no data configured in the dev portal.  */
    public let FlavorText: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_PlayerAchievement {
        try _tagEOS_Achievements_PlayerAchievement(
            ApiVersion: ApiVersion,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString),
            Progress: Progress,
            UnlockTime: try safeNumericCast(exactly: UnlockTime),
            StatInfoCount: try safeNumericCast(exactly: StatInfo?.count ?? .zero),
            StatInfo: try pointerManager.managedPointerToBuffer(copyingArray: StatInfo?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) }),
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString),
            Description: pointerManager.managedPointerToBuffer(copyingArray: Description?.utf8CString),
            IconURL: pointerManager.managedPointerToBuffer(copyingArray: IconURL?.utf8CString),
            FlavorText: pointerManager.managedPointerToBuffer(copyingArray: FlavorText?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_PlayerAchievement?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementId = String(cString: sdkObject.AchievementId)
        self.Progress = sdkObject.Progress
        self.UnlockTime = try safeNumericCast(exactly: sdkObject.UnlockTime)
        self.StatInfo = try sdkObject.StatInfo.array(safeNumericCast(exactly: sdkObject.StatInfoCount)).compactMap { 
            try SwiftEOS_Achievements_PlayerStatInfo.init(sdkObject: $0.pointee) }
        self.DisplayName = String(cString: sdkObject.DisplayName)
        self.Description = String(cString: sdkObject.Description)
        self.IconURL = String(cString: sdkObject.IconURL)
        self.FlavorText = String(cString: sdkObject.FlavorText)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ACHIEVEMENTS_PLAYERACHIEVEMENT_API_LATEST. 
     * - Parameter AchievementId:  This achievement's unique identifier. 
     * - Parameter Progress:  Progress towards completing this achievement (as a percentage). 
     * - Parameter UnlockTime:  The POSIX timestamp when the achievement was unlocked. If the achievement has not been unlocked, this value will be EOS_ACHIEVEMENTS_ACHIEVEMENT_UNLOCKTIME_UNDEFINED. 
     * - Parameter StatInfo:  Array of EOS_Achievements_PlayerStatInfo structures containing information about stat thresholds used to unlock the achievement and the player's current values for those stats. 
     * 
     * - Note: ``EOS/_tagEOS_Achievements_PlayerAchievement/StatInfoCount``:
     * The number of player stat info entries associated with this achievement. 
     * - Parameter DisplayName:  
     * Localized display name for the achievement based on this specific player's current progress on the achievement. 
     * 
     * - Note:  The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
     * - Parameter Description:  
     * Localized description for the achievement based on this specific player's current progress on the achievement.
     * 
     * - Note:  The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
     * - Parameter IconURL:  URL of an icon to display for the achievement based on this specific player's current progress on the achievement. This may be null if there is no data configured in the dev portal.
     * 
     * - Note:  The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
     * - Parameter FlavorText:  Localized flavor text that can be used by the game in an arbitrary manner. This may be null if there is no data configured in the dev portal. 
     */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_PLAYERACHIEVEMENT_API_LATEST,
        AchievementId: String?,
        Progress: Double,
        UnlockTime: Int,
        StatInfo: [SwiftEOS_Achievements_PlayerStatInfo]?,
        DisplayName: String?,
        Description: String?,
        IconURL: String?,
        FlavorText: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementId = AchievementId
        self.Progress = Progress
        self.UnlockTime = UnlockTime
        self.StatInfo = StatInfo
        self.DisplayName = DisplayName
        self.Description = Description
        self.IconURL = IconURL
        self.FlavorText = FlavorText
    }
}
