import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_CopySessionHandleByUiEventId function. */
public struct SwiftEOS_Sessions_CopySessionHandleByUiEventIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST. */
    public let ApiVersion: Int32

    /** UI Event associated with the session */
    public let UiEventId: EOS_UI_EventId

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CopySessionHandleByUiEventIdOptions {
        _tagEOS_Sessions_CopySessionHandleByUiEventIdOptions(
            ApiVersion: ApiVersion,
            UiEventId: UiEventId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CopySessionHandleByUiEventIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UiEventId = sdkObject.UiEventId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST.
    - Parameter UiEventId: UI Event associated with the session
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST,
        UiEventId: EOS_UI_EventId
    ) {
        self.ApiVersion = ApiVersion
        self.UiEventId = UiEventId
    }
}
