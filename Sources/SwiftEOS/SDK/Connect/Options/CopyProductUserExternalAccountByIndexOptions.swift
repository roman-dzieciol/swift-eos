import Foundation
import EOSSDK

/** Input parameters for the EOS_Connect_CopyProductUserExternalAccountByIndex function. */
public struct SwiftEOS_Connect_CopyProductUserExternalAccountByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to look for when copying external account info from the cache.  */
    public let TargetUserId: EOS_ProductUserId?

    /** Index of the external account info to retrieve from the cache.  */
    public let ExternalAccountInfoIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions {
        try _tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            ExternalAccountInfoIndex: try safeNumericCast(exactly: ExternalAccountInfoIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.ExternalAccountInfoIndex = try safeNumericCast(exactly: sdkObject.ExternalAccountInfoIndex)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYINDEX_API_LATEST. 
     * - Parameter TargetUserId:  The Product User ID to look for when copying external account info from the cache. 
     * - Parameter ExternalAccountInfoIndex:  Index of the external account info to retrieve from the cache. 
     */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        ExternalAccountInfoIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.ExternalAccountInfoIndex = ExternalAccountInfoIndex
    }
}
