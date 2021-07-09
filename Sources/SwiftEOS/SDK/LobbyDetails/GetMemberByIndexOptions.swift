import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyDetails_GetMemberByIndex function. */
public struct SwiftEOS_LobbyDetails_GetMemberByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_GETMEMBERBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the member to retrieve  */
    public let MemberIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_GetMemberByIndexOptions {
        try _tagEOS_LobbyDetails_GetMemberByIndexOptions(
            ApiVersion: ApiVersion,
            MemberIndex: try safeNumericCast(exactly: MemberIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_GetMemberByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MemberIndex = try safeNumericCast(exactly: sdkObject.MemberIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_GETMEMBERBYINDEX_API_LATEST,
        MemberIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MemberIndex = MemberIndex
    }
}
