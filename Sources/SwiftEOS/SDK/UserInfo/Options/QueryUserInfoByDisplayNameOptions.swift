import Foundation
import EOSSDK


/** Input parameters for the `EOS_UserInfo_QueryUserInfoByDisplayName` function. */
public struct SwiftEOS_UserInfo_QueryUserInfoByDisplayNameOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_USERINFO_QUERYUSERINFOBYDISPLAYNAME_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information */
    public let LocalUserId: EOS_EpicAccountId?

    /** Display name of the player being queried */
    public let DisplayName: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions {
        _tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.DisplayName = stringFromOptionalCStringPointer(sdkObject.DisplayName)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_USERINFO_QUERYUSERINFOBYDISPLAYNAME_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter DisplayName: Display name of the player being queried
    */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_QUERYUSERINFOBYDISPLAYNAME_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        DisplayName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.DisplayName = DisplayName
    }
}
