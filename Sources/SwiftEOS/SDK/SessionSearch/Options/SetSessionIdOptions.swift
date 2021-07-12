import Foundation
import EOSSDK

/** Input parameters for the `EOS_SessionSearch_SetSessionId` function. */
public struct SwiftEOS_SessionSearch_SetSessionIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONDETAILS_SETTINGS_API_LATEST`. */
    public let ApiVersion: Int32

    /** Search sessions for a specific session ID, returning at most one session */
    public let SessionId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionSearch_SetSessionIdOptions {
        _tagEOS_SessionSearch_SetSessionIdOptions(
            ApiVersion: ApiVersion,
            SessionId: pointerManager.managedPointerToBuffer(copyingArray: SessionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionSearch_SetSessionIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionId = stringFromOptionalCStringPointer(sdkObject.SessionId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONDETAILS_SETTINGS_API_LATEST`.
    - Parameter SessionId: Search sessions for a specific session ID, returning at most one session
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        SessionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionId = SessionId
    }
}
