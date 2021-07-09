import Foundation
import EOSSDK

/** Input parameters for the EOS_Connect_QueryExternalAccountMappings function. */
public struct SwiftEOS_Connect_QueryExternalAccountMappingsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_QUERYEXTERNALACCOUNTMAPPINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the existing, logged-in user who is querying account mappings.  */
    public let LocalUserId: EOS_ProductUserId?

    /** External auth service supplying the account IDs in string form.  */
    public let AccountIdType: EOS_EExternalAccountType

    /**
     * An array of external account IDs to map to the product user ID representation. 
     * - array num: ExternalAccountIdCount
     */
    public let ExternalAccountIds: [String]?

    /**
     * Number of account IDs to query. 
     * - array buffer: ExternalAccountIds
     */
    public let ExternalAccountIdCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_QueryExternalAccountMappingsOptions {
        try _tagEOS_Connect_QueryExternalAccountMappingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            AccountIdType: AccountIdType,
            ExternalAccountIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: ExternalAccountIds?.map { 
                    $0.utf8CString }),
            ExternalAccountIdCount: try safeNumericCast(exactly: ExternalAccountIdCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_QueryExternalAccountMappingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.AccountIdType = sdkObject.AccountIdType
        self.ExternalAccountIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.ExternalAccountIds,
            count: sdkObject.ExternalAccountIdCount
        )
        self.ExternalAccountIdCount = try safeNumericCast(exactly: sdkObject.ExternalAccountIdCount)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_QUERYEXTERNALACCOUNTMAPPINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        ExternalAccountIds: [String]?,
        ExternalAccountIdCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.AccountIdType = AccountIdType
        self.ExternalAccountIds = ExternalAccountIds
        self.ExternalAccountIdCount = ExternalAccountIdCount
    }
}