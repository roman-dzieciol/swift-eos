import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_GetOfferItemCount function. */
public struct SwiftEOS_Ecom_GetOfferItemCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETOFFERITEMCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who made the initial request for the Catalog Offer through EOS_Ecom_QueryOffers  */
    public let LocalUserId: EOS_EpicAccountId?

    /** An ID that corresponds to a cached Catalog Offer (retrieved by EOS_Ecom_CopyOfferByIndex)  */
    public let OfferId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetOfferItemCountOptions {
        _tagEOS_Ecom_GetOfferItemCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetOfferItemCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferId = String(cString: sdkObject.OfferId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETOFFERITEMCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferId = OfferId
    }
}
