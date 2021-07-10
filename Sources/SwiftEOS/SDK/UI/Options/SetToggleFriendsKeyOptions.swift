import Foundation
import EOSSDK

/** Input parameters for the EOS_UI_SetToggleFriendsKey function. */
public struct SwiftEOS_UI_SetToggleFriendsKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_UI_SETTOGGLEFRIENDSKEY_API_LATEST. */
    public let ApiVersion: Int32

    /**
    The new key combination which will be used to toggle the friends overlay.
    The combination can be any set of modifiers and one key.
    A value of EOS_UIK_None will cause the key to revert to the default.
    */
    public let KeyCombination: EOS_UI_EKeyCombination

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UI_SetToggleFriendsKeyOptions {
        _tagEOS_UI_SetToggleFriendsKeyOptions(
            ApiVersion: ApiVersion,
            KeyCombination: KeyCombination
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UI_SetToggleFriendsKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.KeyCombination = sdkObject.KeyCombination
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_UI_SETTOGGLEFRIENDSKEY_API_LATEST.
    - Parameter KeyCombination: The new key combination which will be used to toggle the friends overlay.
    The combination can be any set of modifiers and one key.
    A value of EOS_UIK_None will cause the key to revert to the default.
    */
    public init(
        ApiVersion: Int32 = EOS_UI_SETTOGGLEFRIENDSKEY_API_LATEST,
        KeyCombination: EOS_UI_EKeyCombination
    ) {
        self.ApiVersion = ApiVersion
        self.KeyCombination = KeyCombination
    }
}
