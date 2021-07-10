import Foundation
import EOSSDK

/**
An attribute and its visibility setting stored with a lobby.
Used to store both lobby and lobby member data

- Note: Release func: ``EOS_Lobby_Attribute_Release``
*/
public struct SwiftEOS_Lobby_Attribute: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_ATTRIBUTE_API_LATEST`. */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute */
    public let Data: SwiftEOS_Lobby_AttributeData?

    /** Is this attribute public or private to the lobby and its members */
    public let Visibility: EOS_ELobbyAttributeVisibility

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_Attribute {
        try _tagEOS_Lobby_Attribute(
            ApiVersion: ApiVersion,
            Data: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: Data?.buildSdkObject(pointerManager: pointerManager)),
            Visibility: Visibility
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_Attribute?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Data = try SwiftEOS_Lobby_AttributeData.init(sdkObject: sdkObject.Data.pointee)
        self.Visibility = sdkObject.Visibility
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_ATTRIBUTE_API_LATEST`.
    - Parameter Data: Key/Value pair describing the attribute
    - Parameter Visibility: Is this attribute public or private to the lobby and its members
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ATTRIBUTE_API_LATEST,
        Data: SwiftEOS_Lobby_AttributeData?,
        Visibility: EOS_ELobbyAttributeVisibility
    ) {
        self.ApiVersion = ApiVersion
        self.Data = Data
        self.Visibility = Visibility
    }
}
