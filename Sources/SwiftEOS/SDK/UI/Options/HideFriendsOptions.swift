import Foundation
import EOSSDK

/** Input parameters for the `EOS_UI_HideFriends` function. */
public struct SwiftEOS_UI_HideFriendsOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_UI_HIDEFRIENDS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user whose friend list is being shown. */
    public let LocalUserId: EOS_EpicAccountId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_HideFriendsOptions {
        _tagEOS_UI_HideFriendsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_HideFriendsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_UI_HIDEFRIENDS_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the user whose friend list is being shown.
    */
    public init(
        ApiVersion: Int32 = EOS_UI_HIDEFRIENDS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
