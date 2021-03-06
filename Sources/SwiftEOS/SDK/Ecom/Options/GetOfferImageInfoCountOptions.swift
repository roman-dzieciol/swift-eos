import Foundation
import EOSSDK


/** Input parameters for the `EOS_Ecom_GetOfferImageInfoCount` function. */
public struct SwiftEOS_Ecom_GetOfferImageInfoCountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_GETOFFERIMAGEINFOCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer image is being accessed. */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the offer to get the images for. */
    public let OfferId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetOfferImageInfoCountOptions {
        _tagEOS_Ecom_GetOfferImageInfoCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetOfferImageInfoCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferId = stringFromOptionalCStringPointer(sdkObject.OfferId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_GETOFFERIMAGEINFOCOUNT_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offer image is being accessed.
    - Parameter OfferId: The ID of the offer to get the images for.
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETOFFERIMAGEINFOCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferId = OfferId
    }
}
