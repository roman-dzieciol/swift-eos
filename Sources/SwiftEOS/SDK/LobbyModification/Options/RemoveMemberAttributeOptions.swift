import Foundation
import EOSSDK


/** Input parameters for the `EOS_LobbyModification_RemoveMemberAttribute` function. */
public struct SwiftEOS_LobbyModification_RemoveMemberAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYMODIFICATION_REMOVEMEMBERATTRIBUTE_API_LATEST`. */
    public let ApiVersion: Int32

    /** Name of the key */
    public let Key: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_RemoveMemberAttributeOptions {
        _tagEOS_LobbyModification_RemoveMemberAttributeOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_RemoveMemberAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = stringFromOptionalCStringPointer(sdkObject.Key)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYMODIFICATION_REMOVEMEMBERATTRIBUTE_API_LATEST`.
    - Parameter Key: Name of the key
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_REMOVEMEMBERATTRIBUTE_API_LATEST,
        Key: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
    }
}
