import Foundation
import EOSSDK


/** Input parameters for the `EOS_Ecom_CopyEntitlementByIndex` function. */
public struct SwiftEOS_Ecom_CopyEntitlementByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_COPYENTITLEMENTBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose entitlement is being copied */
    public let LocalUserId: EOS_EpicAccountId?

    /** Index of the entitlement to retrieve from the cache */
    public let EntitlementIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyEntitlementByIndexOptions {
        try _tagEOS_Ecom_CopyEntitlementByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementIndex: try safeNumericCast(exactly: EntitlementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyEntitlementByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementIndex = try safeNumericCast(exactly: sdkObject.EntitlementIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_COPYENTITLEMENTBYINDEX_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose entitlement is being copied
    - Parameter EntitlementIndex: Index of the entitlement to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYENTITLEMENTBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementIndex = EntitlementIndex
    }
}
