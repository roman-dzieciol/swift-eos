import Foundation
import EOSSDK


/**
Contains information about a single achievement definition with localized text.

- Note: Release func: ``EOS_Achievements_DefinitionV2_Release``
*/
public struct SwiftEOS_Achievements_DefinitionV2: SwiftEOSObject {

    /** API Version: Set this to `EOS_ACHIEVEMENTS_DEFINITIONV2_API_LATEST`. */
    public let ApiVersion: Int32

    /** Achievement ID that can be used to uniquely identify the achievement. */
    public let AchievementId: String?

    /** Localized display name for the achievement when it has been unlocked. */
    public let UnlockedDisplayName: String?

    /** Localized description for the achievement when it has been unlocked. */
    public let UnlockedDescription: String?

    /** Localized display name for the achievement when it is locked or hidden. */
    public let LockedDisplayName: String?

    /** Localized description for the achievement when it is locked or hidden. */
    public let LockedDescription: String?

    /** Localized flavor text that can be used by the game in an arbitrary manner. This may be null if there is no data configured in the dev portal. */
    public let FlavorText: String?

    /** URL of an icon to display for the achievement when it is unlocked. This may be null if there is no data configured in the dev portal. */
    public let UnlockedIconURL: String?

    /** URL of an icon to display for the achievement when it is locked or hidden. This may be null if there is no data configured in the dev portal. */
    public let LockedIconURL: String?

    /** `EOS_TRUE` if the achievement is hidden; `EOS_FALSE` otherwise. */
    public let bIsHidden: Bool

    /**
    Array of `EOS_Achievements_StatThresholds` that need to be satisfied to unlock this achievement. Consists of Name and Threshold Value.

    - Note: ``EOS/_tagEOS_Achievements_DefinitionV2/StatThresholdsCount``:
    The number of stat thresholds used to monitor progress towards this achievement.
    */
    public let StatThresholds: [SwiftEOS_Achievements_StatThresholds]?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
            StatThresholdsCount: try safeNumericCast(exactly: StatThresholds?.count ?? .zero),
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
        self.AchievementId = stringFromOptionalCStringPointer(sdkObject.AchievementId)
        self.UnlockedDisplayName = stringFromOptionalCStringPointer(sdkObject.UnlockedDisplayName)
        self.UnlockedDescription = stringFromOptionalCStringPointer(sdkObject.UnlockedDescription)
        self.LockedDisplayName = stringFromOptionalCStringPointer(sdkObject.LockedDisplayName)
        self.LockedDescription = stringFromOptionalCStringPointer(sdkObject.LockedDescription)
        self.FlavorText = stringFromOptionalCStringPointer(sdkObject.FlavorText)
        self.UnlockedIconURL = stringFromOptionalCStringPointer(sdkObject.UnlockedIconURL)
        self.LockedIconURL = stringFromOptionalCStringPointer(sdkObject.LockedIconURL)
        self.bIsHidden = try swiftBoolFromEosBool(sdkObject.bIsHidden)
        self.StatThresholds = try sdkObject.StatThresholds?.array(safeNumericCast(exactly: sdkObject.StatThresholdsCount)).compactMap { 
            try SwiftEOS_Achievements_StatThresholds.init(sdkObject: $0.pointee) }
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ACHIEVEMENTS_DEFINITIONV2_API_LATEST`.
    - Parameter AchievementId: Achievement ID that can be used to uniquely identify the achievement.
    - Parameter UnlockedDisplayName: Localized display name for the achievement when it has been unlocked.
    - Parameter UnlockedDescription: Localized description for the achievement when it has been unlocked.
    - Parameter LockedDisplayName: Localized display name for the achievement when it is locked or hidden.
    - Parameter LockedDescription: Localized description for the achievement when it is locked or hidden.
    - Parameter FlavorText: Localized flavor text that can be used by the game in an arbitrary manner. This may be null if there is no data configured in the dev portal.
    - Parameter UnlockedIconURL: URL of an icon to display for the achievement when it is unlocked. This may be null if there is no data configured in the dev portal.
    - Parameter LockedIconURL: URL of an icon to display for the achievement when it is locked or hidden. This may be null if there is no data configured in the dev portal.
    - Parameter bIsHidden: `EOS_TRUE` if the achievement is hidden; `EOS_FALSE` otherwise.
    - Parameter StatThresholds: Array of `EOS_Achievements_StatThresholds` that need to be satisfied to unlock this achievement. Consists of Name and Threshold Value.
    - Note: ``EOS/_tagEOS_Achievements_DefinitionV2/StatThresholdsCount``:
    The number of stat thresholds used to monitor progress towards this achievement.
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_DEFINITIONV2_API_LATEST,
        AchievementId: String?,
        UnlockedDisplayName: String?,
        UnlockedDescription: String?,
        LockedDisplayName: String?,
        LockedDescription: String?,
        FlavorText: String?,
        UnlockedIconURL: String?,
        LockedIconURL: String?,
        bIsHidden: Bool,
        StatThresholds: [SwiftEOS_Achievements_StatThresholds]?
    ) {
        self.ApiVersion = ApiVersion
        self.AchievementId = AchievementId
        self.UnlockedDisplayName = UnlockedDisplayName
        self.UnlockedDescription = UnlockedDescription
        self.LockedDisplayName = LockedDisplayName
        self.LockedDescription = LockedDescription
        self.FlavorText = FlavorText
        self.UnlockedIconURL = UnlockedIconURL
        self.LockedIconURL = LockedIconURL
        self.bIsHidden = bIsHidden
        self.StatThresholds = StatThresholds
    }
}
