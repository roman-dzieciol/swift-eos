import Foundation
import EOSSDK

/** Input parameters for the `EOS_LobbyModification_SetMaxMembers` function. */
public struct SwiftEOS_LobbyModification_SetMaxMembersOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYMODIFICATION_SETMAXMEMBERS_API_LATEST`. */
    public let ApiVersion: Int32

    /** New maximum number of lobby members */
    public let MaxMembers: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_SetMaxMembersOptions {
        try _tagEOS_LobbyModification_SetMaxMembersOptions(
            ApiVersion: ApiVersion,
            MaxMembers: try safeNumericCast(exactly: MaxMembers)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_SetMaxMembersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxMembers = try safeNumericCast(exactly: sdkObject.MaxMembers)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYMODIFICATION_SETMAXMEMBERS_API_LATEST`.
    - Parameter MaxMembers: New maximum number of lobby members
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_SETMAXMEMBERS_API_LATEST,
        MaxMembers: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxMembers = MaxMembers
    }
}
