import Foundation
import EOSSDK

/** Input parameters for the `EOS_UI_GetToggleFriendsKey` function. */
public struct SwiftEOS_UI_GetToggleFriendsKeyOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_UI_GETTOGGLEFRIENDSKEY_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_GetToggleFriendsKeyOptions {
        _tagEOS_UI_GetToggleFriendsKeyOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_GetToggleFriendsKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_UI_GETTOGGLEFRIENDSKEY_API_LATEST`.
    */
    public init(
        ApiVersion: Int32 = EOS_UI_GETTOGGLEFRIENDSKEY_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
