import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyDetails_GetMemberCount function. */
public struct SwiftEOS_LobbyDetails_GetMemberCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_GETMEMBERCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_GetMemberCountOptions {
        _tagEOS_LobbyDetails_GetMemberCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_GetMemberCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_GETMEMBERCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
