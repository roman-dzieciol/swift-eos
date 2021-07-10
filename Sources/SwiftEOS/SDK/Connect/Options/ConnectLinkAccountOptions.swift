import Foundation
import EOSSDK

/** Input parameters for the EOS_Connect_LinkAccount function. */
public struct SwiftEOS_Connect_LinkAccountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_LINKACCOUNT_API_LATEST. */
    public let ApiVersion: Int32

    /** The existing logged in product user for which to link the external account described by the continuance token. */
    public let LocalUserId: EOS_ProductUserId?

    /** Continuance token from previous call to EOS_Connect_Login. */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_LinkAccountOptions {
        _tagEOS_Connect_LinkAccountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ContinuanceToken: ContinuanceToken
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LinkAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ContinuanceToken = sdkObject.ContinuanceToken
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_CONNECT_LINKACCOUNT_API_LATEST.
    - Parameter LocalUserId: The existing logged in product user for which to link the external account described by the continuance token.
    - Parameter ContinuanceToken: Continuance token from previous call to EOS_Connect_Login.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_LINKACCOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        ContinuanceToken: EOS_ContinuanceToken?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ContinuanceToken = ContinuanceToken
    }
}
