import Foundation
import EOSSDK


/** Input parameters for the `EOS_Connect_GetProductUserExternalAccountCount` function. */
public struct SwiftEOS_Connect_GetProductUserExternalAccountCountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_GETPRODUCTUSEREXTERNALACCOUNTCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID to look for when getting external account info count from the cache. */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_GetProductUserExternalAccountCountOptions {
        _tagEOS_Connect_GetProductUserExternalAccountCountOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_GetProductUserExternalAccountCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_GETPRODUCTUSEREXTERNALACCOUNTCOUNT_API_LATEST`.
    - Parameter TargetUserId: The Product User ID to look for when getting external account info count from the cache.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_GETPRODUCTUSEREXTERNALACCOUNTCOUNT_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
