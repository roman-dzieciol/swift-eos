import Foundation
import EOSSDK
public class SwiftEOS_LobbyDetails_Actor: SwiftEOSActor {
    public let Handle: EOS_HLobbyDetails

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HLobbyDetails
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_LobbyDetails_Release(Handle)
    }

    /**
     * EOS_LobbyDetails_CopyAttributeByIndex is used to immediately retrieve a copy of a lobby attribute from a given source such as a existing lobby or a search result.
     * If the call returns an EOS_Success result, the out parameter, OutAttribute, must be passed to EOS_Lobby_Attribute_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutAttribute:  Out parameter used to receive the EOS_Lobby_Attribute structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutAttribute
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_Lobby_Attribute
     * @see EOS_LobbyDetails_CopyAttributeByIndexOptions
     * @see EOS_Lobby_Attribute_Release
     */
    public func CopyAttributeByIndex(
        Options: SwiftEOS_LobbyDetails_CopyAttributeByIndexOptions,
        OutAttribute: inout SwiftEOS_Lobby_Attribute?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutAttribute, managedBy: pointerManager) { OutAttribute in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_LobbyDetails_CopyAttributeByIndex(
                            Handle,
                            Options,
                            OutAttribute
                        ) } } } }
    }

    /**
     * EOS_LobbyDetails_CopyAttributeByKey is used to immediately retrieve a copy of a lobby attribute from a given source such as a existing lobby or a search result.
     * If the call returns an EOS_Success result, the out parameter, OutAttribute, must be passed to EOS_Lobby_Attribute_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutAttribute:  Out parameter used to receive the EOS_Lobby_Attribute structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutAttribute
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_Lobby_Attribute
     * @see EOS_LobbyDetails_CopyAttributeByKeyOptions
     * @see EOS_Lobby_Attribute_Release
     */
    public func CopyAttributeByKey(
        Options: SwiftEOS_LobbyDetails_CopyAttributeByKeyOptions,
        OutAttribute: inout SwiftEOS_Lobby_Attribute?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutAttribute, managedBy: pointerManager) { OutAttribute in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_LobbyDetails_CopyAttributeByKey(
                            Handle,
                            Options,
                            OutAttribute
                        ) } } } }
    }

    /**
     * EOS_LobbyDetails_CopyInfo is used to immediately retrieve a copy of lobby information from a given source such as a existing lobby or a search result.
     * If the call returns an EOS_Success result, the out parameter, OutLobbyDetailsInfo, must be passed to EOS_LobbyDetails_Info_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutLobbyDetailsInfo:  Out parameter used to receive the EOS_LobbyDetails_Info structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutLobbyDetailsInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_LobbyDetails_Info
     * @see EOS_LobbyDetails_CopyInfoOptions
     * @see EOS_LobbyDetails_Info_Release
     */
    public func CopyInfo(
        Options: SwiftEOS_LobbyDetails_CopyInfoOptions,
        OutLobbyDetailsInfo: inout SwiftEOS_LobbyDetails_Info?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutLobbyDetailsInfo, managedBy: pointerManager) { OutLobbyDetailsInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_LobbyDetails_CopyInfo(
                            Handle,
                            Options,
                            OutLobbyDetailsInfo
                        ) } } } }
    }

    /**
     * EOS_LobbyDetails_CopyMemberAttributeByIndex is used to immediately retrieve a copy of a lobby member attribute from an existing lobby.
     * If the call returns an EOS_Success result, the out parameter, OutAttribute, must be passed to EOS_Lobby_Attribute_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutAttribute:  Out parameter used to receive the EOS_Lobby_Attribute structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutAttribute
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_Lobby_Attribute
     * @see EOS_LobbyDetails_CopyMemberAttributeByIndexOptions
     * @see EOS_Lobby_Attribute_Release
     */
    public func CopyMemberAttributeByIndex(
        Options: SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexOptions,
        OutAttribute: inout SwiftEOS_Lobby_Attribute?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutAttribute, managedBy: pointerManager) { OutAttribute in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_LobbyDetails_CopyMemberAttributeByIndex(
                            Handle,
                            Options,
                            OutAttribute
                        ) } } } }
    }

    /**
     * EOS_LobbyDetails_CopyMemberAttributeByKey is used to immediately retrieve a copy of a lobby member attribute from an existing lobby.
     * If the call returns an EOS_Success result, the out parameter, OutAttribute, must be passed to EOS_Lobby_Attribute_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutAttribute:  Out parameter used to receive the EOS_Lobby_Attribute structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutAttribute
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_Lobby_Attribute
     * @see EOS_LobbyDetails_CopyMemberAttributeByKeyOptions
     * @see EOS_Lobby_Attribute_Release
     */
    public func CopyMemberAttributeByKey(
        Options: SwiftEOS_LobbyDetails_CopyMemberAttributeByKeyOptions,
        OutAttribute: inout SwiftEOS_Lobby_Attribute?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutAttribute, managedBy: pointerManager) { OutAttribute in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_LobbyDetails_CopyMemberAttributeByKey(
                            Handle,
                            Options,
                            OutAttribute
                        ) } } } }
    }

    /**
     * Get the number of attributes associated with this lobby
     * 
     * - Parameter Options:  the Options associated with retrieving the attribute count
     * 
     * @return number of attributes on the lobby or 0 if there is an error
     */
    public func GetAttributeCount(
        Options: SwiftEOS_LobbyDetails_GetAttributeCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_LobbyDetails_GetAttributeCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Get the product user ID of the current owner for a given lobby
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @return the product user ID for the lobby owner or null if the input parameters are invalid
     */
    public func GetLobbyOwner(
        Options: SwiftEOS_LobbyDetails_GetLobbyOwnerOptions
    ) throws -> EOS_ProductUserId {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_LobbyDetails_GetLobbyOwner(
                    Handle,
                    Options
                ) } }
    }

    /**
     * EOS_LobbyDetails_GetMemberAttributeCount is used to immediately retrieve the attribute count for members in a lobby.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @return the number of attributes associated with a given lobby member or 0 if that member is invalid
     * 
     * @see EOS_LobbyDetails_GetMemberCount
     * @see EOS_LobbyDetails_GetMemberAttributeCountOptions
     */
    public func GetMemberAttributeCount(
        Options: SwiftEOS_LobbyDetails_GetMemberAttributeCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_LobbyDetails_GetMemberAttributeCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * EOS_LobbyDetails_GetMemberByIndex is used to immediately retrieve individual members registered with a lobby.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @return the product user ID for the registered member at a given index or null if that index is invalid
     * 
     * @see EOS_LobbyDetails_GetMemberCount
     * @see EOS_LobbyDetails_GetMemberByIndexOptions
     */
    public func GetMemberByIndex(
        Options: SwiftEOS_LobbyDetails_GetMemberByIndexOptions
    ) throws -> EOS_ProductUserId {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_LobbyDetails_GetMemberByIndex(
                    Handle,
                    Options
                ) } }
    }

    /**
     * Get the number of members associated with this lobby
     * 
     * - Parameter Options:  the Options associated with retrieving the member count
     * 
     * @return number of members in the existing lobby or 0 if there is an error
     */
    public func GetMemberCount(
        Options: SwiftEOS_LobbyDetails_GetMemberCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_LobbyDetails_GetMemberCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }
}
