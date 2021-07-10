import Foundation
import EOSSDK

/** Input parameters for the EOS_Connect_CopyProductUserInfo function. */
public struct SwiftEOS_Connect_CopyProductUserInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_COPYPRODUCTUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product user ID to look for when copying external account info from the cache.  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CopyProductUserInfoOptions {
        _tagEOS_Connect_CopyProductUserInfoOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CopyProductUserInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_CONNECT_COPYPRODUCTUSERINFO_API_LATEST. 
     * - Parameter TargetUserId:  Product user ID to look for when copying external account info from the cache. 
     */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_COPYPRODUCTUSERINFO_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
