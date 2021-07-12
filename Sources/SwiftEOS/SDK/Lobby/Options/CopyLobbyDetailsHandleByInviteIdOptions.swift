import Foundation
import EOSSDK

/** Input parameters for the `EOS_Lobby_CopyLobbyDetailsHandleByInviteId` function. */
public struct SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYINVITEID_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID of an invitation to join the lobby */
    public let InviteId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions {
        _tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions(
            ApiVersion: ApiVersion,
            InviteId: pointerManager.managedPointerToBuffer(copyingArray: InviteId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.InviteId = stringFromOptionalCStringPointer(sdkObject.InviteId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYINVITEID_API_LATEST`.
    - Parameter InviteId: The ID of an invitation to join the lobby
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYINVITEID_API_LATEST,
        InviteId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.InviteId = InviteId
    }
}
