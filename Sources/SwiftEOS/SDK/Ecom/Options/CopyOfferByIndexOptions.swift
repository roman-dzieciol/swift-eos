import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_CopyOfferByIndex function. */
public struct SwiftEOS_Ecom_CopyOfferByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYOFFERBYINDEX_API_LATEST. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer is being copied */
    public let LocalUserId: EOS_EpicAccountId?

    /** The index of the offer to get. */
    public let OfferIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyOfferByIndexOptions {
        try _tagEOS_Ecom_CopyOfferByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferIndex: try safeNumericCast(exactly: OfferIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyOfferByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferIndex = try safeNumericCast(exactly: sdkObject.OfferIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ECOM_COPYOFFERBYINDEX_API_LATEST.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offer is being copied
    - Parameter OfferIndex: The index of the offer to get.
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYOFFERBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferIndex = OfferIndex
    }
}
