import Foundation
import EOSSDK

/** Input parameters for the EOS_Achievements_AddNotifyAchievementsUnlocked function. */
public struct SwiftEOS_Achievements_AddNotifyAchievementsUnlockedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_ADDNOTIFYACHIEVEMENTSUNLOCKED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_AddNotifyAchievementsUnlockedOptions {
        _tagEOS_Achievements_AddNotifyAchievementsUnlockedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_AddNotifyAchievementsUnlockedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_ADDNOTIFYACHIEVEMENTSUNLOCKED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Achievements_AddNotifyAchievementsUnlocked function. */
public struct SwiftEOS_Achievements_AddNotifyAchievementsUnlockedV2Options: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_ADDNOTIFYACHIEVEMENTSUNLOCKEDV2_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_AddNotifyAchievementsUnlockedV2Options {
        _tagEOS_Achievements_AddNotifyAchievementsUnlockedV2Options(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_AddNotifyAchievementsUnlockedV2Options?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_ADDNOTIFYACHIEVEMENTSUNLOCKEDV2_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Achievements_CopyAchievementDefinitionByAchievementId function. */
public struct SwiftEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYDEFINITIONBYACHIEVEMENTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** Achievement ID to look for when copying definition from the cache  */
    public let AchievementId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions {
        _tagEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions(
            ApiVersion: ApiVersion,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyAchievementDefinitionByAchievementIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementId = String(cString: sdkObject.AchievementId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYDEFINITIONBYACHIEVEMENTID_API_LATEST,
        AchievementId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementId = AchievementId
    }
}

/** Input parameters for the EOS_Achievements_CopyAchievementDefinitionByIndex function. */
public struct SwiftEOS_Achievements_CopyAchievementDefinitionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYDEFINITIONBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the achievement definition to retrieve from the cache  */
    public let AchievementIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyAchievementDefinitionByIndexOptions {
        try _tagEOS_Achievements_CopyAchievementDefinitionByIndexOptions(
            ApiVersion: ApiVersion,
            AchievementIndex: try safeNumericCast(exactly: AchievementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyAchievementDefinitionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementIndex = try safeNumericCast(exactly: sdkObject.AchievementIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYDEFINITIONBYINDEX_API_LATEST,
        AchievementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementIndex = AchievementIndex
    }
}

/** Input parameters for the EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId function. */
public struct SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYACHIEVEMENTDEFINITIONV2BYACHIEVEMENTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** Achievement ID to look for when copying the definition from the cache.  */
    public let AchievementId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions {
        _tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions(
            ApiVersion: ApiVersion,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementId = String(cString: sdkObject.AchievementId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYACHIEVEMENTDEFINITIONV2BYACHIEVEMENTID_API_LATEST,
        AchievementId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementId = AchievementId
    }
}

/** Input parameters for the EOS_Achievements_CopyAchievementDefinitionByIndex function. */
public struct SwiftEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYACHIEVEMENTDEFINITIONV2BYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the achievement definition to retrieve from the cache.  */
    public let AchievementIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions {
        try _tagEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions(
            ApiVersion: ApiVersion,
            AchievementIndex: try safeNumericCast(exactly: AchievementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyAchievementDefinitionV2ByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementIndex = try safeNumericCast(exactly: sdkObject.AchievementIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYACHIEVEMENTDEFINITIONV2BYINDEX_API_LATEST,
        AchievementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementIndex = AchievementIndex
    }
}

/** Input parameters for the EOS_Achievements_CopyPlayerAchievementByAchievementId function. */
public struct SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYACHIEVEMENTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievement is to be retrieved.  */
    public let TargetUserId: EOS_ProductUserId?

    /** Achievement ID to search for when retrieving player achievement data from the cache.  */
    public let AchievementId: String?

    /** The Product User ID for the user who is querying for a player achievement. For a Dedicated Server this should be null.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions {
        _tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyPlayerAchievementByAchievementIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AchievementId = String(cString: sdkObject.AchievementId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYACHIEVEMENTID_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AchievementId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AchievementId = AchievementId
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Achievements_CopyPlayerAchievementByIndex function. */
public struct SwiftEOS_Achievements_CopyPlayerAchievementByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievement is to be retrieved.  */
    public let TargetUserId: EOS_ProductUserId?

    /** The index of the player achievement data to retrieve from the cache.  */
    public let AchievementIndex: Int

    /** The Product User ID for the user who is querying for a player achievement. For a Dedicated Server this should be null.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyPlayerAchievementByIndexOptions {
        try _tagEOS_Achievements_CopyPlayerAchievementByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AchievementIndex: try safeNumericCast(exactly: AchievementIndex),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyPlayerAchievementByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AchievementIndex = try safeNumericCast(exactly: sdkObject.AchievementIndex)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AchievementIndex: Int,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AchievementIndex = AchievementIndex
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Achievements_CopyUnlockedAchievementByAchievementId function. */
public struct SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user who is copying the unlocked achievement  */
    public let UserId: EOS_ProductUserId?

    /** AchievementId of the unlocked achievement to retrieve from the cache  */
    public let AchievementId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions {
        _tagEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions(
            ApiVersion: ApiVersion,
            UserId: UserId,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyUnlockedAchievementByAchievementIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.AchievementId = String(cString: sdkObject.AchievementId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYACHIEVEMENTID_API_LATEST,
        UserId: EOS_ProductUserId?,
        AchievementId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.AchievementId = AchievementId
    }
}

/** Input parameters for the EOS_Achievements_CopyUnlockedAchievementByIndex function. */
public struct SwiftEOS_Achievements_CopyUnlockedAchievementByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user who is copying the unlocked achievement  */
    public let UserId: EOS_ProductUserId?

    /** Index of the unlocked achievement to retrieve from the cache  */
    public let AchievementIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_CopyUnlockedAchievementByIndexOptions {
        try _tagEOS_Achievements_CopyUnlockedAchievementByIndexOptions(
            ApiVersion: ApiVersion,
            UserId: UserId,
            AchievementIndex: try safeNumericCast(exactly: AchievementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_CopyUnlockedAchievementByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.AchievementIndex = try safeNumericCast(exactly: sdkObject.AchievementIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_COPYUNLOCKEDACHIEVEMENTBYINDEX_API_LATEST,
        UserId: EOS_ProductUserId?,
        AchievementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.AchievementIndex = AchievementIndex
    }
}

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

    /**
     * The number of stat thresholds. 
     * - array buffer: StatThresholds
     */
    public let StatThresholdsCount: Int

    /**
     * Array of stat thresholds that need to be satisfied to unlock the achievement. 
     * - array num: StatThresholdsCount
     */
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
        self.StatThresholds = try sdkObject.StatThresholds?.array(safeNumericCast(exactly: sdkObject.StatThresholdsCount)).compactMap { 
            try SwiftEOS_Achievements_StatThresholds.init(sdkObject: $0.pointee) }
    }
}

/**
 * Contains information about a single achievement definition with localized text.
 * 
 * - see: release func: EOS_Achievements_DefinitionV2_Release
 */
public struct SwiftEOS_Achievements_DefinitionV2: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_DEFINITIONV2_API_LATEST.  */
    public let ApiVersion: Int32

    /** Achievement ID that can be used to uniquely identify the achievement.  */
    public let AchievementId: String?

    /** Localized display name for the achievement when it has been unlocked.  */
    public let UnlockedDisplayName: String?

    /** Localized description for the achievement when it has been unlocked.  */
    public let UnlockedDescription: String?

    /** Localized display name for the achievement when it is locked or hidden.  */
    public let LockedDisplayName: String?

    /** Localized description for the achievement when it is locked or hidden.  */
    public let LockedDescription: String?

    /** Localized flavor text that can be used by the game in an arbitrary manner. This may be null if there is no data configured in the dev portal.  */
    public let FlavorText: String?

    /** URL of an icon to display for the achievement when it is unlocked. This may be null if there is no data configured in the dev portal.  */
    public let UnlockedIconURL: String?

    /** URL of an icon to display for the achievement when it is locked or hidden. This may be null if there is no data configured in the dev portal.  */
    public let LockedIconURL: String?

    /** EOS_TRUE if the achievement is hidden; EOS_FALSE otherwise.  */
    public let bIsHidden: Bool

    /**
     * The number of stat thresholds used to monitor progress towards this achievement. 
     * - array buffer: StatThresholds
     */
    public let StatThresholdsCount: Int

    /**
     * Array of `EOS_Achievements_StatThresholds` that need to be satisfied to unlock this achievement. Consists of Name and Threshold Value. 
     * - array num: StatThresholdsCount
     */
    public let StatThresholds: [SwiftEOS_Achievements_StatThresholds]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_DefinitionV2 {
        try _tagEOS_Achievements_DefinitionV2(
            ApiVersion: ApiVersion,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString),
            UnlockedDisplayName: pointerManager.managedPointerToBuffer(copyingArray: UnlockedDisplayName?.utf8CString),
            UnlockedDescription: pointerManager.managedPointerToBuffer(copyingArray: UnlockedDescription?.utf8CString),
            LockedDisplayName: pointerManager.managedPointerToBuffer(copyingArray: LockedDisplayName?.utf8CString),
            LockedDescription: pointerManager.managedPointerToBuffer(copyingArray: LockedDescription?.utf8CString),
            FlavorText: pointerManager.managedPointerToBuffer(copyingArray: FlavorText?.utf8CString),
            UnlockedIconURL: pointerManager.managedPointerToBuffer(copyingArray: UnlockedIconURL?.utf8CString),
            LockedIconURL: pointerManager.managedPointerToBuffer(copyingArray: LockedIconURL?.utf8CString),
            bIsHidden: eosBoolFromSwiftBool(bIsHidden),
            StatThresholdsCount: try safeNumericCast(exactly: StatThresholdsCount),
            StatThresholds: try pointerManager.managedPointerToBuffer(copyingArray: StatThresholds?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_DefinitionV2?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementId = String(cString: sdkObject.AchievementId)
        self.UnlockedDisplayName = String(cString: sdkObject.UnlockedDisplayName)
        self.UnlockedDescription = String(cString: sdkObject.UnlockedDescription)
        self.LockedDisplayName = String(cString: sdkObject.LockedDisplayName)
        self.LockedDescription = String(cString: sdkObject.LockedDescription)
        self.FlavorText = String(cString: sdkObject.FlavorText)
        self.UnlockedIconURL = String(cString: sdkObject.UnlockedIconURL)
        self.LockedIconURL = String(cString: sdkObject.LockedIconURL)
        self.bIsHidden = try swiftBoolFromEosBool(sdkObject.bIsHidden)
        self.StatThresholdsCount = try safeNumericCast(exactly: sdkObject.StatThresholdsCount)
        self.StatThresholds = try sdkObject.StatThresholds?.array(safeNumericCast(exactly: sdkObject.StatThresholdsCount)).compactMap { 
            try SwiftEOS_Achievements_StatThresholds.init(sdkObject: $0.pointee) }
    }
}

/** Input parameters for the EOS_Achievements_GetAchievementDefinitionCount function. */
public struct SwiftEOS_Achievements_GetAchievementDefinitionCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_GETACHIEVEMENTDEFINITIONCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_GetAchievementDefinitionCountOptions {
        _tagEOS_Achievements_GetAchievementDefinitionCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_GetAchievementDefinitionCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_GETACHIEVEMENTDEFINITIONCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Achievements_GetPlayerAchievementCount function. */
public struct SwiftEOS_Achievements_GetPlayerAchievementCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_GETPLAYERACHIEVEMENTCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievement count is being retrieved.  */
    public let UserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_GetPlayerAchievementCountOptions {
        _tagEOS_Achievements_GetPlayerAchievementCountOptions(
            ApiVersion: ApiVersion,
            UserId: UserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_GetPlayerAchievementCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_GETPLAYERACHIEVEMENTCOUNT_API_LATEST,
        UserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}

/** Input parameters for the EOS_Achievements_GetUnlockedAchievementCount function. */
public struct SwiftEOS_Achievements_GetUnlockedAchievementCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_GETUNLOCKEDACHIEVEMENTCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID for which to retrieve the unlocked achievement count  */
    public let UserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_GetUnlockedAchievementCountOptions {
        _tagEOS_Achievements_GetUnlockedAchievementCountOptions(
            ApiVersion: ApiVersion,
            UserId: UserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_GetUnlockedAchievementCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_GETUNLOCKEDACHIEVEMENTCOUNT_API_LATEST,
        UserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}

/** Output parameters for the EOS_Achievements_OnAchievementsUnlockedCallback Function. */
public struct SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo {

    /** The Product User ID for the user who received the unlocked achievements notification  */
    public let UserId: EOS_ProductUserId?

    /**
     * The number of achievements. 
     * - array buffer: AchievementIds
     */
    public let AchievementsCount: Int

    /**
     * This member is not used and will always be set to NULL. 
     * - array num: AchievementsCount
     */
    public let AchievementIds: [String]?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.UserId = sdkObject.UserId
        self.AchievementsCount = try safeNumericCast(exactly: sdkObject.AchievementsCount)
        self.AchievementIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.AchievementIds,
            count: sdkObject.AchievementsCount
        )
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Achievements_OnAchievementsUnlockedCallbackV2 Function. */
public struct SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info {

    /** The Product User ID for the user who received the unlocked achievements notification  */
    public let UserId: EOS_ProductUserId?

    /** The Achievement ID for the achievement that was unlocked. Pass this to EOS_Achievements_CopyPlayerAchievementByAchievementId to get the full achievement information.  */
    public let AchievementId: String?

    /** POSIX timestamp when the achievement was unlocked.  */
    public let UnlockTime: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnAchievementsUnlockedCallbackV2Info?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.UserId = sdkObject.UserId
        self.AchievementId = String(cString: sdkObject.AchievementId)
        self.UnlockTime = try safeNumericCast(exactly: sdkObject.UnlockTime)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnAchievementsUnlockedCallbackV2Info>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Data containing the result information for a query definitions request. */
public struct SwiftEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data containing the result information for querying a player's achievements request. */
public struct SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let UserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.UserId = sdkObject.UserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data containing the result information for unlocking achievements request. */
public struct SwiftEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let UserId: EOS_ProductUserId?

    /** The number of achievements that the operation unlocked.  */
    public let AchievementsCount: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.UserId = sdkObject.UserId
        self.AchievementsCount = try safeNumericCast(exactly: sdkObject.AchievementsCount)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Achievements_OnUnlockAchievementsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

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
     * The number of player stat info entries associated with this achievement. 
     * - array buffer: StatInfo
     */
    public let StatInfoCount: Int

    /**
     * Array of EOS_Achievements_PlayerStatInfo structures containing information about stat thresholds used to unlock the achievement and the player's current values for those stats. 
     * - array num: StatInfoCount
     */
    public let StatInfo: [SwiftEOS_Achievements_PlayerStatInfo]?

    /**
     * 
     * Localized display name for the achievement based on this specific player's current progress on the achievement. 
     * 
     * @note The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
     */
    public let DisplayName: String?

    /**
     * 
     * Localized description for the achievement based on this specific player's current progress on the achievement.
     * 
     * @note The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
     */
    public let Description: String?

    /**
     * URL of an icon to display for the achievement based on this specific player's current progress on the achievement. This may be null if there is no data configured in the dev portal.
     * 
     * @note The current progress is updated when EOS_Achievements_QueryPlayerAchievements succeeds and when an achievement is unlocked.
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
            StatInfoCount: try safeNumericCast(exactly: StatInfoCount),
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
        self.StatInfoCount = try safeNumericCast(exactly: sdkObject.StatInfoCount)
        self.StatInfo = try sdkObject.StatInfo?.array(safeNumericCast(exactly: sdkObject.StatInfoCount)).compactMap { 
            try SwiftEOS_Achievements_PlayerStatInfo.init(sdkObject: $0.pointee) }
        self.DisplayName = String(cString: sdkObject.DisplayName)
        self.Description = String(cString: sdkObject.Description)
        self.IconURL = String(cString: sdkObject.IconURL)
        self.FlavorText = String(cString: sdkObject.FlavorText)
    }
}

/**
 * Contains information about a collection of stat info data.
 * 
 * @see EOS_Achievements_PlayerAchievement
 */
public struct SwiftEOS_Achievements_PlayerStatInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_PLAYERSTATINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The name of the stat.  */
    public let Name: String?

    /** The current value of the stat.  */
    public let CurrentValue: Int

    /** The threshold value of the stat, used in determining when to unlock an achievement.  */
    public let ThresholdValue: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_PlayerStatInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Name = String(cString: sdkObject.Name)
        self.CurrentValue = try safeNumericCast(exactly: sdkObject.CurrentValue)
        self.ThresholdValue = try safeNumericCast(exactly: sdkObject.ThresholdValue)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_PlayerStatInfo {
        try _tagEOS_Achievements_PlayerStatInfo(
            ApiVersion: ApiVersion,
            Name: pointerManager.managedPointerToBuffer(copyingArray: Name?.utf8CString),
            CurrentValue: try safeNumericCast(exactly: CurrentValue),
            ThresholdValue: try safeNumericCast(exactly: ThresholdValue)
        )
    }
}

/** Input parameters for the EOS_Achievements_QueryDefinitions function. */
public struct SwiftEOS_Achievements_QueryDefinitionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_QUERYDEFINITIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Product User ID for user who is querying definitions.
     * The localized text returned will be based on the locale code of the given user if they have a linked Epic Online Services Account ID.
     * The localized text returned can also be overridden using EOS_Platform_SetOverrideLocaleCode to override the locale.
     * If the locale code is not overridden and LocalUserId is not valid, default text will be returned.
     */
    public let LocalUserId: EOS_ProductUserId?

    /** Deprecated  */
    public let EpicUserId_DEPRECATED: EOS_EpicAccountId?

    /**
     * Deprecated 
     * - array num: HiddenAchievementsCount_DEPRECATED
     */
    public let HiddenAchievementIds_DEPRECATED: [String]?

    /**
     * Deprecated 
     * - array buffer: HiddenAchievementIds_DEPRECATED
     */
    public let HiddenAchievementsCount_DEPRECATED: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_QueryDefinitionsOptions {
        try _tagEOS_Achievements_QueryDefinitionsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EpicUserId_DEPRECATED: EpicUserId_DEPRECATED,
            HiddenAchievementIds_DEPRECATED: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: HiddenAchievementIds_DEPRECATED?.map { 
                    $0.utf8CString }),
            HiddenAchievementsCount_DEPRECATED: try safeNumericCast(exactly: HiddenAchievementsCount_DEPRECATED)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_QueryDefinitionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EpicUserId_DEPRECATED = sdkObject.EpicUserId_DEPRECATED
        self.HiddenAchievementIds_DEPRECATED = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.HiddenAchievementIds_DEPRECATED,
            count: sdkObject.HiddenAchievementsCount_DEPRECATED
        )
        self.HiddenAchievementsCount_DEPRECATED = try safeNumericCast(exactly: sdkObject.HiddenAchievementsCount_DEPRECATED)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_QUERYDEFINITIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        EpicUserId_DEPRECATED: EOS_EpicAccountId?,
        HiddenAchievementIds_DEPRECATED: [String]?,
        HiddenAchievementsCount_DEPRECATED: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EpicUserId_DEPRECATED = EpicUserId_DEPRECATED
        self.HiddenAchievementIds_DEPRECATED = HiddenAchievementIds_DEPRECATED
        self.HiddenAchievementsCount_DEPRECATED = HiddenAchievementsCount_DEPRECATED
    }
}

/** Input parameters for the EOS_Achievements_QueryPlayerAchievements function. */
public struct SwiftEOS_Achievements_QueryPlayerAchievementsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_QUERYPLAYERACHIEVEMENTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievements are to be retrieved.  */
    public let TargetUserId: EOS_ProductUserId?

    /** The Product User ID for the user who is querying for player achievements. For a Dedicated Server this should be null.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_QueryPlayerAchievementsOptions {
        _tagEOS_Achievements_QueryPlayerAchievementsOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_QueryPlayerAchievementsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_QUERYPLAYERACHIEVEMENTS_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.LocalUserId = LocalUserId
    }
}

/**
 * Contains information about a collection of stat threshold data.
 * The threshold will depend on the stat aggregate type:
 *   LATEST (Tracks the latest value)
 *   MAX (Tracks the maximum value)
 *   MIN (Tracks the minimum value)
 *   SUM (Generates a rolling sum of the value)
 * 
 * @see EOS_Achievements_Definition
 */
public struct SwiftEOS_Achievements_StatThresholds: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_STATTHRESHOLDS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The name of the stat.  */
    public let Name: String?

    /** The value that the stat must surpass to satisfy the requirement for unlocking an achievement.  */
    public let Threshold: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_StatThresholds?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Name = String(cString: sdkObject.Name)
        self.Threshold = try safeNumericCast(exactly: sdkObject.Threshold)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_StatThresholds {
        try _tagEOS_Achievements_StatThresholds(
            ApiVersion: ApiVersion,
            Name: pointerManager.managedPointerToBuffer(copyingArray: Name?.utf8CString),
            Threshold: try safeNumericCast(exactly: Threshold)
        )
    }
}

/** Input parameters for the EOS_Achievements_UnlockAchievements function. */
public struct SwiftEOS_Achievements_UnlockAchievementsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_UNLOCKACHIEVEMENTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose achievements we want to unlock.  */
    public let UserId: EOS_ProductUserId?

    /**
     * An array of Achievement IDs to unlock. 
     * - array num: AchievementsCount
     */
    public let AchievementIds: [String]?

    /**
     * The number of achievements to unlock. 
     * - array buffer: AchievementIds
     */
    public let AchievementsCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_UnlockAchievementsOptions {
        try _tagEOS_Achievements_UnlockAchievementsOptions(
            ApiVersion: ApiVersion,
            UserId: UserId,
            AchievementIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: AchievementIds?.map { 
                    $0.utf8CString }),
            AchievementsCount: try safeNumericCast(exactly: AchievementsCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_UnlockAchievementsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.AchievementIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.AchievementIds,
            count: sdkObject.AchievementsCount
        )
        self.AchievementsCount = try safeNumericCast(exactly: sdkObject.AchievementsCount)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_UNLOCKACHIEVEMENTS_API_LATEST,
        UserId: EOS_ProductUserId?,
        AchievementIds: [String]?,
        AchievementsCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.AchievementIds = AchievementIds
        self.AchievementsCount = AchievementsCount
    }
}

/**
 * Contains information about a single unlocked achievement.
 * 
 * - see: release func: EOS_Achievements_UnlockedAchievement_Release
 */
public struct SwiftEOS_Achievements_UnlockedAchievement: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_UNLOCKEDACHIEVEMENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Achievement ID that can be used to uniquely identify the unlocked achievement.  */
    public let AchievementId: String?

    /** If not EOS_ACHIEVEMENTS_ACHIEVEMENT_UNLOCKTIME_UNDEFINED then this is the POSIX timestamp that the achievement was unlocked.  */
    public let UnlockTime: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_UnlockedAchievement {
        try _tagEOS_Achievements_UnlockedAchievement(
            ApiVersion: ApiVersion,
            AchievementId: pointerManager.managedPointerToBuffer(copyingArray: AchievementId?.utf8CString),
            UnlockTime: try safeNumericCast(exactly: UnlockTime)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_UnlockedAchievement?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AchievementId = String(cString: sdkObject.AchievementId)
        self.UnlockTime = try safeNumericCast(exactly: sdkObject.UnlockTime)
    }
}
