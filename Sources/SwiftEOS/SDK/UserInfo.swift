import Foundation
import EOSSDK

/**
 * A structure that contains the user information. These structures are created by EOS_UserInfo_CopyUserInfo and must be passed to EOS_UserInfo_Release. 
 * 
 * - see: release func: EOS_UserInfo_Release
 */
public struct SwiftEOS_UserInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user  */
    public let UserId: EOS_EpicAccountId?

    /** The name of the owner's country. This may be null  */
    public let Country: String?

    /** The display name. This may be null  */
    public let DisplayName: String?

    /** The ISO 639 language code for the user's preferred language. This may be null  */
    public let PreferredLanguage: String?

    /** A nickname/alias for the target user assigned by the local user. This may be null  */
    public let Nickname: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo {
        _tagEOS_UserInfo(
            ApiVersion: ApiVersion,
            UserId: UserId,
            Country: pointerManager.managedPointerToBuffer(copyingArray: Country?.utf8CString),
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString),
            PreferredLanguage: pointerManager.managedPointerToBuffer(copyingArray: PreferredLanguage?.utf8CString),
            Nickname: pointerManager.managedPointerToBuffer(copyingArray: Nickname?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = sdkObject.UserId
        self.Country = String(cString: sdkObject.Country)
        self.DisplayName = String(cString: sdkObject.DisplayName)
        self.PreferredLanguage = String(cString: sdkObject.PreferredLanguage)
        self.Nickname = String(cString: sdkObject.Nickname)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_COPYUSERINFO_API_LATEST,
        UserId: EOS_EpicAccountId?,
        Country: String?,
        DisplayName: String?,
        PreferredLanguage: String?,
        Nickname: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
        self.Country = Country
        self.DisplayName = DisplayName
        self.PreferredLanguage = PreferredLanguage
        self.Nickname = Nickname
    }
}
