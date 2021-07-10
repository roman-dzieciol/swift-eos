import Foundation
import EOSSDK

/** Input parameters for the `EOS_Sessions_DumpSessionState` function. */
public struct SwiftEOS_Sessions_DumpSessionStateOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST`. */
    public let ApiVersion: Int32

    /** Name of the session */
    public let SessionName: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_DumpSessionStateOptions {
        _tagEOS_Sessions_DumpSessionStateOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_DumpSessionStateOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST`.
    - Parameter SessionName: Name of the session
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST,
        SessionName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
    }
}
