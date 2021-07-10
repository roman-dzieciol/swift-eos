import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_QueryOwnership function. */
public struct SwiftEOS_Ecom_QueryOwnershipOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_QUERYOWNERSHIP_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose ownership to query  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * The array of Catalog Item IDs to check for ownership 
     * - array num: CatalogItemIdCount
     */
    public let CatalogItemIds: [String]?

    /**
     * The number of Catalog Item IDs to in the array 
     * - array buffer: CatalogItemIds
     */
    public let CatalogItemIdCount: Int

    /** Optional product namespace, if not the one specified during initialization  */
    public let CatalogNamespace: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_QueryOwnershipOptions {
        try _tagEOS_Ecom_QueryOwnershipOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            CatalogItemIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: CatalogItemIds?.map { 
                    $0.utf8CString }),
            CatalogItemIdCount: try safeNumericCast(exactly: CatalogItemIdCount),
            CatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: CatalogNamespace?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOwnershipOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.CatalogItemIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.CatalogItemIds,
            count: sdkObject.CatalogItemIdCount
        )
        self.CatalogItemIdCount = try safeNumericCast(exactly: sdkObject.CatalogItemIdCount)
        self.CatalogNamespace = String(cString: sdkObject.CatalogNamespace)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ECOM_QUERYOWNERSHIP_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user whose ownership to query 
     * - Parameter CatalogItemIds:  The array of Catalog Item IDs to check for ownership 
     * - array num: CatalogItemIdCount
     * - Parameter CatalogItemIdCount:  The number of Catalog Item IDs to in the array 
     * - array buffer: CatalogItemIds
     * - Parameter CatalogNamespace:  Optional product namespace, if not the one specified during initialization 
     */
    public init(
        ApiVersion: Int32 = EOS_ECOM_QUERYOWNERSHIP_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        CatalogItemIds: [String]?,
        CatalogItemIdCount: Int,
        CatalogNamespace: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.CatalogItemIds = CatalogItemIds
        self.CatalogItemIdCount = CatalogItemIdCount
        self.CatalogNamespace = CatalogNamespace
    }
}
