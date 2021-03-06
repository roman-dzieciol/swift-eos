import Foundation
import EOSSDK


/** Input parameters for the `EOS_LobbyModification_AddMemberAttribute` function. */
public struct SwiftEOS_LobbyModification_AddMemberAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYMODIFICATION_ADDMEMBERATTRIBUTE_API_LATEST`. */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute to add to the lobby member */
    public let Attribute: SwiftEOS_Lobby_AttributeData?

    /** Is this attribute public or private to the rest of the lobby members */
    public let Visibility: EOS_ELobbyAttributeVisibility

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_AddMemberAttributeOptions {
        try _tagEOS_LobbyModification_AddMemberAttributeOptions(
            ApiVersion: ApiVersion,
            Attribute: try pointerManager.managedPointer(copyingValueOrNilPointer: Attribute?.buildSdkObject(pointerManager: pointerManager)),
            Visibility: Visibility
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_AddMemberAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Attribute = try SwiftEOS_Lobby_AttributeData.init(sdkObject: sdkObject.Attribute?.pointee)
        self.Visibility = sdkObject.Visibility
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYMODIFICATION_ADDMEMBERATTRIBUTE_API_LATEST`.
    - Parameter Attribute: Key/Value pair describing the attribute to add to the lobby member
    - Parameter Visibility: Is this attribute public or private to the rest of the lobby members
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_ADDMEMBERATTRIBUTE_API_LATEST,
        Attribute: SwiftEOS_Lobby_AttributeData?,
        Visibility: EOS_ELobbyAttributeVisibility
    ) {
        self.ApiVersion = ApiVersion
        self.Attribute = Attribute
        self.Visibility = Visibility
    }
}
