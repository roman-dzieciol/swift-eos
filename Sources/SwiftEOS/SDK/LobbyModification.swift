import Foundation
import EOSSDK
public class SwiftEOS_LobbyModification_Actor: SwiftEOSActor {
    public let Handle: EOS_HLobbyModification

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HLobbyModification
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_LobbyModification_Release(Handle)
    }

    /**
     * Associate an attribute with this lobby
     * An attribute is something may be public or private with the lobby.
     * If public, it can be queried for in a search, otherwise the data remains known only to lobby members
     * 
     * - Parameter Options:  Options to set the attribute and its visibility state
     * 
     * @return EOS_Success if setting this parameter was successful
     * 		   EOS_InvalidParameters if the attribute is missing information or otherwise invalid
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func AddAttribute(
        Options: SwiftEOS_LobbyModification_AddAttributeOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbyModification_AddAttribute(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Associate an attribute with a member of the lobby
     * Lobby member data is always private to the lobby
     * 
     * - Parameter Options:  Options to set the attribute and its visibility state
     * 
     * @return EOS_Success if setting this parameter was successful
     * 		   EOS_InvalidParameters if the attribute is missing information or otherwise invalid
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func AddMemberAttribute(
        Options: SwiftEOS_LobbyModification_AddMemberAttributeOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbyModification_AddMemberAttribute(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Remove an attribute associated with the lobby
     * 
     * - Parameter Options:  Specify the key of the attribute to remove
     * 
     * @return EOS_Success if removing this parameter was successful
     * 		   EOS_InvalidParameters if the key is null or empty
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func RemoveAttribute(
        Options: SwiftEOS_LobbyModification_RemoveAttributeOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbyModification_RemoveAttribute(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Remove an attribute associated with of member of the lobby
     * 
     * - Parameter Options:  Specify the key of the member attribute to remove
     * 
     * @return EOS_Success if removing this parameter was successful
     * 		   EOS_InvalidParameters if the key is null or empty
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func RemoveMemberAttribute(
        Options: SwiftEOS_LobbyModification_RemoveMemberAttributeOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbyModification_RemoveMemberAttribute(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Set the bucket ID associated with this lobby.
     * Values such as region, game mode, etc can be combined here depending on game need.
     * Setting this is strongly recommended to improve search performance.
     * 
     * - Parameter Options:  Options associated with the bucket ID of the lobby
     * 
     * @return EOS_Success if setting this parameter was successful
     *         EOS_InvalidParameters if the bucket ID is invalid or null
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func SetBucketId(
        Options: SwiftEOS_LobbyModification_SetBucketIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbyModification_SetBucketId(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Allows enabling or disabling invites for this lobby.
     * The lobby will also need to have `bPresenceEnabled` true.
     * 
     * - Parameter Options:  Options associated with invites allowed flag for this lobby.
     * 
     * @return EOS_Success if setting this parameter was successful
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func SetInvitesAllowed(
        Options: SwiftEOS_LobbyModification_SetInvitesAllowedOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbyModification_SetInvitesAllowed(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Set the maximum number of members allowed in this lobby.
     * When updating the lobby, it is not possible to reduce this number below the current number of existing members
     * 
     * - Parameter Options:  Options associated with max number of members in this lobby
     * 
     * @return EOS_Success if setting this parameter was successful
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func SetMaxMembers(
        Options: SwiftEOS_LobbyModification_SetMaxMembersOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbyModification_SetMaxMembers(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Set the permissions associated with this lobby.
     * The permissions range from "public" to "invite only" and are described by EOS_ELobbyPermissionLevel
     * 
     * - Parameter Options:  Options associated with the permission level of the lobby
     * 
     * @return EOS_Success if setting this parameter was successful
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     */
    public func SetPermissionLevel(
        Options: SwiftEOS_LobbyModification_SetPermissionLevelOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_LobbyModification_SetPermissionLevel(
                        Handle,
                        Options
                    ) } } }
    }
}
