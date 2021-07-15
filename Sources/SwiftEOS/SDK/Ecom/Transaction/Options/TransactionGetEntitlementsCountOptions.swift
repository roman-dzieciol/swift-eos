import Foundation
import EOSSDK


/** Input parameters for the `EOS_Ecom_Transaction_GetEntitlementsCount` function. */
public struct SwiftEOS_Ecom_Transaction_GetEntitlementsCountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_TRANSACTION_GETENTITLEMENTSCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_Transaction_GetEntitlementsCountOptions {
        _tagEOS_Ecom_Transaction_GetEntitlementsCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_Transaction_GetEntitlementsCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_TRANSACTION_GETENTITLEMENTSCOUNT_API_LATEST`.
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_TRANSACTION_GETENTITLEMENTSCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
