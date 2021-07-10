import Foundation
import EOSSDK

/** Input parameters for the EOS_Sanctions_GetPlayerSanctionCount function. */
public struct SwiftEOS_Sanctions_GetPlayerSanctionCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SANCTIONS_GETPLAYERSANCTIONCOUNT_API_LATEST. */
    public let ApiVersion: Int32

    /** Product User ID of the user whose sanction count should be returned */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sanctions_GetPlayerSanctionCountOptions {
        _tagEOS_Sanctions_GetPlayerSanctionCountOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_GetPlayerSanctionCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_SANCTIONS_GETPLAYERSANCTIONCOUNT_API_LATEST.
    - Parameter TargetUserId: Product User ID of the user whose sanction count should be returned
    */
    public init(
        ApiVersion: Int32 = EOS_SANCTIONS_GETPLAYERSANCTIONCOUNT_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
