import Foundation
import EOSSDK

/**
Contains information about a collection of stat threshold data.

The threshold will depend on the stat aggregate type:LATEST (Tracks the latest value)MAX (Tracks the maximum value)MIN (Tracks the minimum value)SUM (Generates a rolling sum of the value)

- SeeAlso: EOS_Achievements_Definition
*/
public struct SwiftEOS_Achievements_StatThresholds: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_STATTHRESHOLDS_API_LATEST. */
    public let ApiVersion: Int32

    /** The name of the stat. */
    public let Name: String?

    /** The value that the stat must surpass to satisfy the requirement for unlocking an achievement. */
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
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ACHIEVEMENTS_STATTHRESHOLDS_API_LATEST.
    - Parameter Name: The name of the stat.
    - Parameter Threshold: The value that the stat must surpass to satisfy the requirement for unlocking an achievement.
    */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_STATTHRESHOLDS_API_LATEST,
        Name: String?,
        Threshold: Int
    ) {
        self.ApiVersion = ApiVersion
        self.Name = Name
        self.Threshold = Threshold
    }
}
