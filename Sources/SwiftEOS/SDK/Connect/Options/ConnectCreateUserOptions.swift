import Foundation
import EOSSDK

/** Input parameters for the `EOS_Connect_CreateUser` function. */
public struct SwiftEOS_Connect_CreateUserOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_CREATEUSER_API_LATEST`. */
    public let ApiVersion: Int32

    /** Continuance token from previous call to `EOS_Connect_Login` */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CreateUserOptions {
        _tagEOS_Connect_CreateUserOptions(
            ApiVersion: ApiVersion,
            ContinuanceToken: ContinuanceToken
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CreateUserOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ContinuanceToken = sdkObject.ContinuanceToken
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_CREATEUSER_API_LATEST`.
    - Parameter ContinuanceToken: Continuance token from previous call to `EOS_Connect_Login`
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_CREATEUSER_API_LATEST,
        ContinuanceToken: EOS_ContinuanceToken?
    ) {
        self.ApiVersion = ApiVersion
        self.ContinuanceToken = ContinuanceToken
    }
}
