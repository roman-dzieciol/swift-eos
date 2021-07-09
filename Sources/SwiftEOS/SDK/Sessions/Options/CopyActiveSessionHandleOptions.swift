import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_CopyActiveSessionHandle function. */
public struct SwiftEOS_Sessions_CopyActiveSessionHandleOptions {

    /** API Version: Set this to EOS_SESSIONS_COPYACTIVESESSIONHANDLE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session for which to retrieve a session handle  */
    public let SessionName: String?

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_COPYACTIVESESSIONHANDLE_API_LATEST,
        SessionName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
    }
}
