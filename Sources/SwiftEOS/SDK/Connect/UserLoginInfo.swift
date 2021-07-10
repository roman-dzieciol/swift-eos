import Foundation
import EOSSDK

/**
 * Additional information about the local user.
 * As the information passed here is client-controlled and not part of the user authentication tokens,
 * it is only treated as non-authoritative informational data to be used by some of the feature services.
 * For example displaying player names in Leaderboards rankings.
 */
public struct SwiftEOS_Connect_UserLoginInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_USERLOGININFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The user's display name on the identity provider systems as UTF-8 encoded null-terminated string.
     * The length of the name can be at maximum up to EOS_CONNECT_USERLOGININFO_DISPLAYNAME_MAX_LENGTH bytes.
     */
    public let DisplayName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_UserLoginInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DisplayName = String(cString: sdkObject.DisplayName)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_UserLoginInfo {
        _tagEOS_Connect_UserLoginInfo(
            ApiVersion: ApiVersion,
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString)
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_CONNECT_USERLOGININFO_API_LATEST. 
     * - Parameter DisplayName:  The user's display name on the identity provider systems as UTF-8 encoded null-terminated string.
     * The length of the name can be at maximum up to EOS_CONNECT_USERLOGININFO_DISPLAYNAME_MAX_LENGTH bytes.
     */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_USERLOGININFO_API_LATEST,
        DisplayName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.DisplayName = DisplayName
    }
}
