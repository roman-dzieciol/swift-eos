import Foundation
import EOSSDK

/** Input parameters for the EOS_Connect_QueryProductUserIdMappings function. */
public struct SwiftEOS_Connect_QueryProductUserIdMappingsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_QUERYPRODUCTUSERIDMAPPINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the existing, logged-in user who is querying account mappings.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Deprecated - all external mappings are included in this call, it is no longer necessary to specify this value.  */
    public let AccountIdType_DEPRECATED: EOS_EExternalAccountType

    /**
     * An array of Product User IDs to query for the given external account representation. 
     * - array num: ProductUserIdCount
     */
    public let ProductUserIds: [EOS_ProductUserId]?

    /**
     * Number of Product User IDs to query. 
     * - array buffer: ProductUserIds
     */
    public let ProductUserIdCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_QueryProductUserIdMappingsOptions {
        try _tagEOS_Connect_QueryProductUserIdMappingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            AccountIdType_DEPRECATED: AccountIdType_DEPRECATED,
            ProductUserIds: pointerManager.managedMutablePointerToBuffer(copyingArray: ProductUserIds),
            ProductUserIdCount: try safeNumericCast(exactly: ProductUserIdCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_QueryProductUserIdMappingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.AccountIdType_DEPRECATED = sdkObject.AccountIdType_DEPRECATED
        self.ProductUserIds = try trivialOptionalArrayFromTrivialOptionalPointer(
            start: sdkObject.ProductUserIds,
            count: sdkObject.ProductUserIdCount
        )
        self.ProductUserIdCount = try safeNumericCast(exactly: sdkObject.ProductUserIdCount)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_QUERYPRODUCTUSERIDMAPPINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        AccountIdType_DEPRECATED: EOS_EExternalAccountType,
        ProductUserIds: [EOS_ProductUserId]?,
        ProductUserIdCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.AccountIdType_DEPRECATED = AccountIdType_DEPRECATED
        self.ProductUserIds = ProductUserIds
        self.ProductUserIdCount = ProductUserIdCount
    }
}
