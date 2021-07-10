import Foundation
import EOSSDK

/** Input parameters for the EOS_Sanctions_CopyPlayerSanctionByIndex function */
public struct SwiftEOS_Sanctions_CopyPlayerSanctionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST. */
    public let ApiVersion: Int32

    /** Product User ID of the user whose active sanctions are to be copied */
    public let TargetUserId: EOS_ProductUserId?

    /** Index of the sanction to retrieve from the cache */
    public let SanctionIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sanctions_CopyPlayerSanctionByIndexOptions {
        try _tagEOS_Sanctions_CopyPlayerSanctionByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            SanctionIndex: try safeNumericCast(exactly: SanctionIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_CopyPlayerSanctionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.SanctionIndex = try safeNumericCast(exactly: sdkObject.SanctionIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST.
    - Parameter TargetUserId: Product User ID of the user whose active sanctions are to be copied
    - Parameter SanctionIndex: Index of the sanction to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        SanctionIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.SanctionIndex = SanctionIndex
    }
}
