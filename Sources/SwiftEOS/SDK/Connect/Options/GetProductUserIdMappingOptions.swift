import Foundation
import EOSSDK

/** Input parameters for the EOS_Connect_GetProductUserIdMapping function. */
public struct SwiftEOS_Connect_GetProductUserIdMappingOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_GETPRODUCTUSERIDMAPPING_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the existing, logged-in user that is querying account mappings.  */
    public let LocalUserId: EOS_ProductUserId?

    /** External auth service mapping to retrieve.  */
    public let AccountIdType: EOS_EExternalAccountType

    /** The Product User ID of the user whose information is being requested.  */
    public let TargetProductUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_GetProductUserIdMappingOptions {
        _tagEOS_Connect_GetProductUserIdMappingOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            AccountIdType: AccountIdType,
            TargetProductUserId: TargetProductUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_GetProductUserIdMappingOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.AccountIdType = sdkObject.AccountIdType
        self.TargetProductUserId = sdkObject.TargetProductUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_CONNECT_GETPRODUCTUSERIDMAPPING_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the existing, logged-in user that is querying account mappings. 
     * - Parameter AccountIdType:  External auth service mapping to retrieve. 
     * - Parameter TargetProductUserId:  The Product User ID of the user whose information is being requested. 
     */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_GETPRODUCTUSERIDMAPPING_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        TargetProductUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.AccountIdType = AccountIdType
        self.TargetProductUserId = TargetProductUserId
    }
}
