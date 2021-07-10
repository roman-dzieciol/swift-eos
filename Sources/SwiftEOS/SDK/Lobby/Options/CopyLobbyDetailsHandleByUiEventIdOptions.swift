import Foundation
import EOSSDK

/** Input parameters for the `EOS_Lobby_CopyLobbyDetailsHandleByUiEventId` function. */
public struct SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYUIEVENTID_API_LATEST`. */
    public let ApiVersion: Int32

    /** UI Event associated with the lobby */
    public let UiEventId: EOS_UI_EventId

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions {
        _tagEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions(
            ApiVersion: ApiVersion,
            UiEventId: UiEventId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UiEventId = sdkObject.UiEventId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYUIEVENTID_API_LATEST`.
    - Parameter UiEventId: UI Event associated with the lobby
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYUIEVENTID_API_LATEST,
        UiEventId: EOS_UI_EventId
    ) {
        self.ApiVersion = ApiVersion
        self.UiEventId = UiEventId
    }
}
