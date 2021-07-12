import Foundation
import EOSSDK

/** Contains information about lobby and lobby member data */
public struct SwiftEOS_Lobby_AttributeData: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_ATTRIBUTEDATA_API_LATEST`. */
    public let ApiVersion: Int32

    /** Name of the lobby attribute */
    public let Key: String?
    public let Value: _tagEOS_Lobby_AttributeData.__Unnamed_union_Value

    /** Type of value stored in the union */
    public let ValueType: EOS_ELobbyAttributeType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AttributeData?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = stringFromOptionalCStringPointer(sdkObject.Key)
        self.Value = sdkObject.Value
        self.ValueType = sdkObject.ValueType
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AttributeData {
        _tagEOS_Lobby_AttributeData(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            Value: Value,
            ValueType: ValueType
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_ATTRIBUTEDATA_API_LATEST`.
    - Parameter Key: Name of the lobby attribute
    - Parameter ValueType: Type of value stored in the union
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ATTRIBUTEDATA_API_LATEST,
        Key: String?,
        Value: _tagEOS_Lobby_AttributeData.__Unnamed_union_Value,
        ValueType: EOS_ELobbyAttributeType
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.Value = Value
        self.ValueType = ValueType
    }
}
