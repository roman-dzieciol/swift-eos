import Foundation
import EOSSDK

/**
Contains information about a single item ownership associated with an account. This structure is
returned as part of the EOS_Ecom_QueryOwnershipCallbackInfo structure.
*/
public struct SwiftEOS_Ecom_ItemOwnership {

    /** API Version: Set this to EOS_ECOM_ITEMOWNERSHIP_API_LATEST. */
    public let ApiVersion: Int32

    /** ID of the catalog item */
    public let Id: String?

    /** Is this catalog item owned by the local user */
    public let OwnershipStatus: EOS_EOwnershipStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_ItemOwnership?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Id = String(cString: sdkObject.Id)
        self.OwnershipStatus = sdkObject.OwnershipStatus
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ECOM_ITEMOWNERSHIP_API_LATEST.
    - Parameter Id: ID of the catalog item
    - Parameter OwnershipStatus: Is this catalog item owned by the local user
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_ITEMOWNERSHIP_API_LATEST,
        Id: String?,
        OwnershipStatus: EOS_EOwnershipStatus
    ) {
        self.ApiVersion = ApiVersion
        self.Id = Id
        self.OwnershipStatus = OwnershipStatus
    }
}
