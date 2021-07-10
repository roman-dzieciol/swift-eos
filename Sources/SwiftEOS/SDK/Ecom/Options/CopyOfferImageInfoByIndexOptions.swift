import Foundation
import EOSSDK

/** Input parameters for the `EOS_Ecom_CopyOfferImageInfoByIndex` function. */
public struct SwiftEOS_Ecom_CopyOfferImageInfoByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_COPYOFFERIMAGEINFOBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer image is being copied. */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the offer to get the images for. */
    public let OfferId: String?

    /** The index of the image to get. */
    public let ImageInfoIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyOfferImageInfoByIndexOptions {
        try _tagEOS_Ecom_CopyOfferImageInfoByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString),
            ImageInfoIndex: try safeNumericCast(exactly: ImageInfoIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyOfferImageInfoByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferId = String(cString: sdkObject.OfferId)
        self.ImageInfoIndex = try safeNumericCast(exactly: sdkObject.ImageInfoIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_COPYOFFERIMAGEINFOBYINDEX_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offer image is being copied.
    - Parameter OfferId: The ID of the offer to get the images for.
    - Parameter ImageInfoIndex: The index of the image to get.
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYOFFERIMAGEINFOBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?,
        ImageInfoIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferId = OfferId
        self.ImageInfoIndex = ImageInfoIndex
    }
}
