import Foundation
import EOSSDK

/** Input parameters for the `EOS_Connect_UnlinkAccount` Function. */
public struct SwiftEOS_Connect_UnlinkAccountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_UNLINKACCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Existing logged in product user that is subject for the unlinking operation.
    The external account that was used to login to the product user will be unlinked from the owning keychain.

    On a successful operation, the product user will be logged out as the external account used to authenticate the user was unlinked from the owning keychain.
    */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_UnlinkAccountOptions {
        _tagEOS_Connect_UnlinkAccountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_UnlinkAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_UNLINKACCOUNT_API_LATEST`.
    - Parameter LocalUserId: Existing logged in product user that is subject for the unlinking operation.
    The external account that was used to login to the product user will be unlinked from the owning keychain.
    On a successful operation, the product user will be logged out as the external account used to authenticate the user was unlinked from the owning keychain.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_UNLINKACCOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
