import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_QueryOffers function. */
public struct SwiftEOS_Ecom_QueryOffersOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_QUERYOFFERS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer to query  */
    public let LocalUserId: EOS_EpicAccountId?

    /** If not provided then the SandboxId is used as the catalog namespace  */
    public let OverrideCatalogNamespace: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_QueryOffersOptions {
        _tagEOS_Ecom_QueryOffersOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OverrideCatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: OverrideCatalogNamespace?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOffersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OverrideCatalogNamespace = String(cString: sdkObject.OverrideCatalogNamespace)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_QUERYOFFERS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OverrideCatalogNamespace: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OverrideCatalogNamespace = OverrideCatalogNamespace
    }
}
