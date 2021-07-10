import Foundation
import EOSSDK

/** Input parameters for the EOS_Stats_GetStatsCount function. */
public struct SwiftEOS_Stats_GetStatCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_STATS_GETSTATSCOUNT_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose stats are being counted */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Stats_GetStatCountOptions {
        _tagEOS_Stats_GetStatCountOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_GetStatCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_STATS_GETSTATSCOUNT_API_LATEST.
    - Parameter TargetUserId: The Product User ID for the user whose stats are being counted
    */
    public init(
        ApiVersion: Int32 = EOS_STATS_GETSTATSCOUNT_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
