import Foundation
import EOSSDK

/** Input parameters for the `EOS_Stats_CopyStatByIndex` function. */
public struct SwiftEOS_Stats_CopyStatByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_STATS_COPYSTATBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the user who owns the stat */
    public let TargetUserId: EOS_ProductUserId?

    /** Index of the stat to retrieve from the cache */
    public let StatIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_CopyStatByIndexOptions {
        try _tagEOS_Stats_CopyStatByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            StatIndex: try safeNumericCast(exactly: StatIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_CopyStatByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.StatIndex = try safeNumericCast(exactly: sdkObject.StatIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_STATS_COPYSTATBYINDEX_API_LATEST`.
    - Parameter TargetUserId: The Product User ID of the user who owns the stat
    - Parameter StatIndex: Index of the stat to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_STATS_COPYSTATBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        StatIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.StatIndex = StatIndex
    }
}
