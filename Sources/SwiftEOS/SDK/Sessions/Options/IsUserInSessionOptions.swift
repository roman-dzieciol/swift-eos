import Foundation
import EOSSDK

/** Input parameters for the `EOS_Sessions_IsUserInSession` function. */
public struct SwiftEOS_Sessions_IsUserInSessionOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONS_ISUSERINSESSION_API_LATEST`. */
    public let ApiVersion: Int32

    /** Active session name to search within */
    public let SessionName: String?

    /** Product User ID to search for in the session */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_IsUserInSessionOptions {
        _tagEOS_Sessions_IsUserInSessionOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_IsUserInSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = stringFromOptionalCStringPointer(sdkObject.SessionName)
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONS_ISUSERINSESSION_API_LATEST`.
    - Parameter SessionName: Active session name to search within
    - Parameter TargetUserId: Product User ID to search for in the session
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_ISUSERINSESSION_API_LATEST,
        SessionName: String?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.TargetUserId = TargetUserId
    }
}
