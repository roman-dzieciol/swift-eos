import Foundation
import EOSSDK

public class SwiftEOS_LobbyDetails_Actor: SwiftEOSActor {
    public let Handle: EOS_HLobbyDetails?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HLobbyDetails?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_LobbyDetails_Release(Handle)
    }

    /**
    `EOS_LobbyDetails_CopyAttributeByIndex` is used to immediately retrieve a copy of a lobby attribute from a given source such as a existing lobby or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutAttribute, must be passed to `EOS_Lobby_Attribute_Release` to release the memory associated with it.

    - Parameter AttrIndex: The index of the attribute to retrieve
    - SeeAlso: `EOS_LobbyDetails_GetAttributeCount`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_Attribute`
    - SeeAlso: `EOS_LobbyDetails_CopyAttributeByIndexOptions`
    - SeeAlso: `EOS_Lobby_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_Lobby_Attribute` structure.
    */
    public func CopyAttributeByIndex(
        AttrIndex: Int
    ) throws -> SwiftEOS_Lobby_Attribute {
        try ____CopyAttributeByIndex(.init(AttrIndex: AttrIndex))
    }

    /**
    `EOS_LobbyDetails_CopyAttributeByKey` is used to immediately retrieve a copy of a lobby attribute from a given source such as a existing lobby or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutAttribute, must be passed to `EOS_Lobby_Attribute_Release` to release the memory associated with it.

    - Parameter AttrKey: Name of the attribute
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_Attribute`
    - SeeAlso: `EOS_LobbyDetails_CopyAttributeByKeyOptions`
    - SeeAlso: `EOS_Lobby_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_Lobby_Attribute` structure.
    */
    public func CopyAttributeByKey(
        AttrKey: String?
    ) throws -> SwiftEOS_Lobby_Attribute {
        try ____CopyAttributeByKey(.init(AttrKey: AttrKey))
    }

    /**
    `EOS_LobbyDetails_CopyInfo` is used to immediately retrieve a copy of lobby information from a given source such as a existing lobby or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutLobbyDetailsInfo, must be passed to `EOS_LobbyDetails_Info_Release` to release the memory associated with it.

    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_LobbyDetails_Info`
    - SeeAlso: `EOS_LobbyDetails_CopyInfoOptions`
    - SeeAlso: `EOS_LobbyDetails_Info_Release`
    - Returns: Out parameter used to receive the `EOS_LobbyDetails_Info` structure.
    */
    public func CopyInfo() throws -> SwiftEOS_LobbyDetails_Info {
        try ____CopyInfo()
    }

    /**
    `EOS_LobbyDetails_CopyMemberAttributeByIndex` is used to immediately retrieve a copy of a lobby member attribute from an existing lobby.
    If the call returns an `EOS_Success` result, the out parameter, OutAttribute, must be passed to `EOS_Lobby_Attribute_Release` to release the memory associated with it.

    - Parameter TargetUserId: The Product User ID of the lobby member
    - Parameter AttrIndex: The index of the attribute to copy
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_Attribute`
    - SeeAlso: `EOS_LobbyDetails_CopyMemberAttributeByIndexOptions`
    - SeeAlso: `EOS_Lobby_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_Lobby_Attribute` structure.
    */
    public func CopyMemberAttributeByIndex(
        TargetUserId: EOS_ProductUserId?,
        AttrIndex: Int
    ) throws -> SwiftEOS_Lobby_Attribute {
        try ____CopyMemberAttributeByIndex(.init(
                TargetUserId: TargetUserId,
                AttrIndex: AttrIndex
            ))
    }

    /**
    `EOS_LobbyDetails_CopyMemberAttributeByKey` is used to immediately retrieve a copy of a lobby member attribute from an existing lobby.
    If the call returns an `EOS_Success` result, the out parameter, OutAttribute, must be passed to `EOS_Lobby_Attribute_Release` to release the memory associated with it.

    - Parameter TargetUserId: The Product User ID of the lobby member
    - Parameter AttrKey: Name of the attribute to copy
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_Attribute`
    - SeeAlso: `EOS_LobbyDetails_CopyMemberAttributeByKeyOptions`
    - SeeAlso: `EOS_Lobby_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_Lobby_Attribute` structure.
    */
    public func CopyMemberAttributeByKey(
        TargetUserId: EOS_ProductUserId?,
        AttrKey: String?
    ) throws -> SwiftEOS_Lobby_Attribute {
        try ____CopyMemberAttributeByKey(.init(
                TargetUserId: TargetUserId,
                AttrKey: AttrKey
            ))
    }

    /**
    Get the number of attributes associated with this lobby

    - Returns: number of attributes on the lobby or 0 if there is an error
    */
    public func GetAttributeCount() throws -> Int {
        try ____GetAttributeCount()
    }

    /**
    Get the product user ID of the current owner for a given lobby

    - Returns: the product user ID for the lobby owner or null if the input parameters are invalid
    */
    public func GetLobbyOwner() throws -> EOS_ProductUserId? {
        try ____GetLobbyOwner()
    }

    /**
    `EOS_LobbyDetails_GetMemberAttributeCount` is used to immediately retrieve the attribute count for members in a lobby.

    - Parameter TargetUserId: The Product User ID of the lobby member
    - Returns: the number of attributes associated with a given lobby member or 0 if that member is invalid
    - SeeAlso: `EOS_LobbyDetails_GetMemberCount`
    - SeeAlso: `EOS_LobbyDetails_GetMemberAttributeCountOptions`
    */
    public func GetMemberAttributeCount(
        TargetUserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetMemberAttributeCount(.init(TargetUserId: TargetUserId))
    }

    /**
    `EOS_LobbyDetails_GetMemberByIndex` is used to immediately retrieve individual members registered with a lobby.

    - Parameter MemberIndex: Index of the member to retrieve
    - Returns: the product user ID for the registered member at a given index or null if that index is invalid
    - SeeAlso: `EOS_LobbyDetails_GetMemberCount`
    - SeeAlso: `EOS_LobbyDetails_GetMemberByIndexOptions`
    */
    public func GetMemberByIndex(
        MemberIndex: Int
    ) throws -> EOS_ProductUserId? {
        try ____GetMemberByIndex(.init(MemberIndex: MemberIndex))
    }

    /**
    Get the number of members associated with this lobby

    - Returns: number of members in the existing lobby or 0 if there is an error
    */
    public func GetMemberCount() throws -> Int {
        try ____GetMemberCount()
    }
}

extension SwiftEOS_LobbyDetails_Actor {

    /**
    `EOS_LobbyDetails_CopyAttributeByIndex` is used to immediately retrieve a copy of a lobby attribute from a given source such as a existing lobby or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutAttribute, must be passed to `EOS_Lobby_Attribute_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_Attribute`
    - SeeAlso: `EOS_LobbyDetails_CopyAttributeByIndexOptions`
    - SeeAlso: `EOS_Lobby_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_Lobby_Attribute` structure.
    */
    private func ____CopyAttributeByIndex(
        _ Options: SwiftEOS_LobbyDetails_CopyAttributeByIndexOptions
    ) throws -> SwiftEOS_Lobby_Attribute {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutAttribute in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_LobbyDetails_CopyAttributeByIndex(
                                    Handle,
                                    Options,
                                    OutAttribute
                                ) } } },
                    release: EOS_Lobby_Attribute_Release
                ) } }
    }

    /**
    `EOS_LobbyDetails_CopyAttributeByKey` is used to immediately retrieve a copy of a lobby attribute from a given source such as a existing lobby or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutAttribute, must be passed to `EOS_Lobby_Attribute_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_Attribute`
    - SeeAlso: `EOS_LobbyDetails_CopyAttributeByKeyOptions`
    - SeeAlso: `EOS_Lobby_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_Lobby_Attribute` structure.
    */
    private func ____CopyAttributeByKey(
        _ Options: SwiftEOS_LobbyDetails_CopyAttributeByKeyOptions
    ) throws -> SwiftEOS_Lobby_Attribute {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutAttribute in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_LobbyDetails_CopyAttributeByKey(
                                    Handle,
                                    Options,
                                    OutAttribute
                                ) } } },
                    release: EOS_Lobby_Attribute_Release
                ) } }
    }

    /**
    `EOS_LobbyDetails_CopyInfo` is used to immediately retrieve a copy of lobby information from a given source such as a existing lobby or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutLobbyDetailsInfo, must be passed to `EOS_LobbyDetails_Info_Release` to release the memory associated with it.

    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_LobbyDetails_Info`
    - SeeAlso: `EOS_LobbyDetails_CopyInfoOptions`
    - SeeAlso: `EOS_LobbyDetails_Info_Release`
    - Returns: Out parameter used to receive the `EOS_LobbyDetails_Info` structure.
    */
    private func ____CopyInfo() throws -> SwiftEOS_LobbyDetails_Info {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutLobbyDetailsInfo in
                        try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_LobbyDetails_CopyInfoOptions(), managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_LobbyDetails_CopyInfo(
                                    Handle,
                                    Options,
                                    OutLobbyDetailsInfo
                                ) } } },
                    release: EOS_LobbyDetails_Info_Release
                ) } }
    }

    /**
    `EOS_LobbyDetails_CopyMemberAttributeByIndex` is used to immediately retrieve a copy of a lobby member attribute from an existing lobby.
    If the call returns an `EOS_Success` result, the out parameter, OutAttribute, must be passed to `EOS_Lobby_Attribute_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_Attribute`
    - SeeAlso: `EOS_LobbyDetails_CopyMemberAttributeByIndexOptions`
    - SeeAlso: `EOS_Lobby_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_Lobby_Attribute` structure.
    */
    private func ____CopyMemberAttributeByIndex(
        _ Options: SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexOptions
    ) throws -> SwiftEOS_Lobby_Attribute {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutAttribute in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_LobbyDetails_CopyMemberAttributeByIndex(
                                    Handle,
                                    Options,
                                    OutAttribute
                                ) } } },
                    release: EOS_Lobby_Attribute_Release
                ) } }
    }

    /**
    `EOS_LobbyDetails_CopyMemberAttributeByKey` is used to immediately retrieve a copy of a lobby member attribute from an existing lobby.
    If the call returns an `EOS_Success` result, the out parameter, OutAttribute, must be passed to `EOS_Lobby_Attribute_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_Lobby_Attribute`
    - SeeAlso: `EOS_LobbyDetails_CopyMemberAttributeByKeyOptions`
    - SeeAlso: `EOS_Lobby_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_Lobby_Attribute` structure.
    */
    private func ____CopyMemberAttributeByKey(
        _ Options: SwiftEOS_LobbyDetails_CopyMemberAttributeByKeyOptions
    ) throws -> SwiftEOS_Lobby_Attribute {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutAttribute in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_LobbyDetails_CopyMemberAttributeByKey(
                                    Handle,
                                    Options,
                                    OutAttribute
                                ) } } },
                    release: EOS_Lobby_Attribute_Release
                ) } }
    }

    /**
    Get the number of attributes associated with this lobby

    - Returns: number of attributes on the lobby or 0 if there is an error
    */
    private func ____GetAttributeCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_LobbyDetails_GetAttributeCountOptions(), managedBy: pointerManager) { Options in
                        EOS_LobbyDetails_GetAttributeCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Get the product user ID of the current owner for a given lobby

    - Returns: the product user ID for the lobby owner or null if the input parameters are invalid
    */
    private func ____GetLobbyOwner() throws -> EOS_ProductUserId? {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_LobbyDetails_GetLobbyOwnerOptions(), managedBy: pointerManager) { Options in
                EOS_LobbyDetails_GetLobbyOwner(
                    Handle,
                    Options
                ) } }
    }

    /**
    `EOS_LobbyDetails_GetMemberAttributeCount` is used to immediately retrieve the attribute count for members in a lobby.

    - Parameter Options: Structure containing the input parameters
    - Returns: the number of attributes associated with a given lobby member or 0 if that member is invalid
    - SeeAlso: `EOS_LobbyDetails_GetMemberCount`
    - SeeAlso: `EOS_LobbyDetails_GetMemberAttributeCountOptions`
    */
    private func ____GetMemberAttributeCount(
        _ Options: SwiftEOS_LobbyDetails_GetMemberAttributeCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_LobbyDetails_GetMemberAttributeCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    `EOS_LobbyDetails_GetMemberByIndex` is used to immediately retrieve individual members registered with a lobby.

    - Parameter Options: Structure containing the input parameters
    - Returns: the product user ID for the registered member at a given index or null if that index is invalid
    - SeeAlso: `EOS_LobbyDetails_GetMemberCount`
    - SeeAlso: `EOS_LobbyDetails_GetMemberByIndexOptions`
    */
    private func ____GetMemberByIndex(
        _ Options: SwiftEOS_LobbyDetails_GetMemberByIndexOptions
    ) throws -> EOS_ProductUserId? {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_LobbyDetails_GetMemberByIndex(
                    Handle,
                    Options
                ) } }
    }

    /**
    Get the number of members associated with this lobby

    - Returns: number of members in the existing lobby or 0 if there is an error
    */
    private func ____GetMemberCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_LobbyDetails_GetMemberCountOptions(), managedBy: pointerManager) { Options in
                        EOS_LobbyDetails_GetMemberCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }
}
