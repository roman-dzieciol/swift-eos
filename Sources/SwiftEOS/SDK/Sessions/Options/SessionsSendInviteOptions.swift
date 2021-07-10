import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_SendInvite function. */
public struct SwiftEOS_Sessions_SendInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_SENDINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session associated with the invite  */
    public let SessionName: String?

    /** The Product User ID of the local user sending the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User of the remote user receiving the invitation  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_SendInviteOptions {
        _tagEOS_Sessions_SendInviteOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_SendInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONS_SENDINVITE_API_LATEST. 
     * - Parameter SessionName:  Name of the session associated with the invite 
     * - Parameter LocalUserId:  The Product User ID of the local user sending the invitation 
     * - Parameter TargetUserId:  The Product User of the remote user receiving the invitation 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_SENDINVITE_API_LATEST,
        SessionName: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
