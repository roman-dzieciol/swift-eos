import Foundation
import EOSSDK

/**
Contains information about a collection of stat info data.

- SeeAlso: `EOS_Achievements_PlayerAchievement`
*/
public struct SwiftEOS_Achievements_PlayerStatInfo: SwiftEOSObject {

    /** API Version: Set this to `EOS_ACHIEVEMENTS_PLAYERSTATINFO_API_LATEST`. */
    public let ApiVersion: Int32

    /** The name of the stat. */
    public let Name: String?

    /** The current value of the stat. */
    public let CurrentValue: Int

    /** The threshold value of the stat, used in determining when to unlock an achievement. */
    public let ThresholdValue: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_PlayerStatInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Name = stringFromOptionalCStringPointer(sdkObject.Name)
        self.CurrentValue = try safeNumericCast(exactly: sdkObject.CurrentValue)
        self.ThresholdValue = try safeNumericCast(exactly: sdkObject.ThresholdValue)
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ACHIEVEMENTS_PLAYERSTATINFO_API_LATEST`.
    - Parameter Name: The name of the stat.
    - Parameter CurrentValue: The current value of the stat.
    - Parameter ThresholdValue: The threshold value of the stat, used in determining when to unlock an achievement.
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_PLAYERSTATINFO_API_LATEST,
        Name: String?,
        CurrentValue: Int,
        ThresholdValue: Int
    ) {
        self.ApiVersion = ApiVersion
        self.Name = Name
        self.CurrentValue = CurrentValue
        self.ThresholdValue = ThresholdValue
    }
}
