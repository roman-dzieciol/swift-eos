import Foundation
import EOSSDK

/**
Contains information about a request to purchase a single offer.  This structure is set as part
of the `EOS_Ecom_CheckoutOptions` structure.
*/
public struct SwiftEOS_Ecom_CheckoutEntry: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_CHECKOUTENTRY_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID of the offer to purchase */
    public let OfferId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CheckoutEntry?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.OfferId = stringFromOptionalCStringPointer(sdkObject.OfferId)
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CheckoutEntry {
        _tagEOS_Ecom_CheckoutEntry(
            ApiVersion: ApiVersion,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString)
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_CHECKOUTENTRY_API_LATEST`.
    - Parameter OfferId: The ID of the offer to purchase
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_CHECKOUTENTRY_API_LATEST,
        OfferId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.OfferId = OfferId
    }
}
