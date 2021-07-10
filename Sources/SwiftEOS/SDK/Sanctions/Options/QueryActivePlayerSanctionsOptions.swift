import Foundation
import EOSSDK

/** Input parameters for the `EOS_Sanctions_QueryActivePlayerSanctions` API. */
public struct SwiftEOS_Sanctions_QueryActivePlayerSanctionsOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SANCTIONS_QUERYACTIVEPLAYERSANCTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /** Product User ID of the user whose active sanctions are to be retrieved. */
    public let TargetUserId: EOS_ProductUserId?

    /** The Product User ID of the local user who initiated this request. Dedicated servers should set this to null. */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sanctions_QueryActivePlayerSanctionsOptions {
        _tagEOS_Sanctions_QueryActivePlayerSanctionsOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_QueryActivePlayerSanctionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SANCTIONS_QUERYACTIVEPLAYERSANCTIONS_API_LATEST`.
    - Parameter TargetUserId: Product User ID of the user whose active sanctions are to be retrieved.
    - Parameter LocalUserId: The Product User ID of the local user who initiated this request. Dedicated servers should set this to null.
    */
    public init(
        ApiVersion: Int32 = EOS_SANCTIONS_QUERYACTIVEPLAYERSANCTIONS_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.LocalUserId = LocalUserId
    }
}
