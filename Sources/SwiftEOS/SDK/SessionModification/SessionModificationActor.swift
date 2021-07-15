import Foundation
import EOSSDK

public class SwiftEOS_SessionModification_Actor: SwiftEOSActor {
    public let Handle: EOS_HSessionModification

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HSessionModification
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_SessionModification_Release(Handle)
    }

    /**
    Associate an attribute with this session
    An attribute is something that may or may not be advertised with the session.
    If advertised, it can be queried for in a search, otherwise the data remains local to the client

    - Parameter SessionAttribute: Key/Value pair describing the attribute to add to the session
    - Parameter AdvertisementType: Is this attribution advertised with the backend or simply stored locally
    - Throws: `EOS_InvalidParameters` if the attribution is missing information or otherwise invalid
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func AddAttribute(
        SessionAttribute: SwiftEOS_Sessions_AttributeData?,
        AdvertisementType: EOS_ESessionAttributeAdvertisementType
    ) throws {
        try ____AddAttribute(.init(
                SessionAttribute: SessionAttribute,
                AdvertisementType: AdvertisementType
            ))
    }

    /**
    Remove an attribute from this session

    - Parameter Key: Session attribute to remove from the session
    - Throws: `EOS_InvalidParameters` if the key is null or empty
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func RemoveAttribute(
        Key: String?
    ) throws {
        try ____RemoveAttribute(.init(Key: Key))
    }

    /**
    Set the bucket ID associated with this session.
    Values such as region, game mode, etc can be combined here depending on game need.
    Setting this is strongly recommended to improve search performance.

    - Parameter BucketId: The new bucket id associated with the session
    - Throws: `EOS_InvalidParameters` if the bucket ID is invalid or null
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetBucketId(
        BucketId: String?
    ) throws {
        try ____SetBucketId(.init(BucketId: BucketId))
    }

    /**
    Set the host address associated with this session
    Setting this is optional, if the value is not set the SDK will fill the value in from the service.
    It is useful to set if other addressing mechanisms are desired or if LAN addresses are preferred during development

    - Note: No validation of this value occurs to allow for flexibility in addressing methods
    - Parameter HostAddress: A string representing the host address for the session, its meaning is up to the application
    - Throws: `EOS_InvalidParameters` if the host ID is an empty string
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetHostAddress(
        HostAddress: String?
    ) throws {
        try ____SetHostAddress(.init(HostAddress: HostAddress))
    }

    /**
    Allows enabling or disabling invites for this session.
    The session will also need to have `bPresenceEnabled` true.

    - Parameter bInvitesAllowed: If true then invites can currently be sent for the associated session
    - Throws: `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetInvitesAllowed(
        bInvitesAllowed: Bool
    ) throws {
        try ____SetInvitesAllowed(.init(bInvitesAllowed: bInvitesAllowed))
    }

    /**
    Set whether or not join in progress is allowed
    Once a session is started, it will no longer be visible to search queries unless this flag is set or the session returns to the pending or ended state

    - Parameter bAllowJoinInProgress: Does the session allow join in progress
    - Throws: `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetJoinInProgressAllowed(
        bAllowJoinInProgress: Bool
    ) throws {
        try ____SetJoinInProgressAllowed(.init(bAllowJoinInProgress: bAllowJoinInProgress))
    }

    /**
    Set the maximum number of players allowed in this session.
    When updating the session, it is not possible to reduce this number below the current number of existing players

    - Parameter MaxPlayers: Max number of players to allow in the session
    - Throws: `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetMaxPlayers(
        MaxPlayers: Int
    ) throws {
        try ____SetMaxPlayers(.init(MaxPlayers: MaxPlayers))
    }

    /**
    Set the session permissions associated with this session.
    The permissions range from "public" to "invite only" and are described by `EOS_EOnlineSessionPermissionLevel`

    - Parameter PermissionLevel: Permission level to set on the sesion
    - Throws: `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    public func SetPermissionLevel(
        PermissionLevel: EOS_EOnlineSessionPermissionLevel
    ) throws {
        try ____SetPermissionLevel(.init(PermissionLevel: PermissionLevel))
    }
}

extension SwiftEOS_SessionModification_Actor {

    /**
    Associate an attribute with this session
    An attribute is something that may or may not be advertised with the session.
    If advertised, it can be queried for in a search, otherwise the data remains local to the client

    - Parameter Options: Options to set the attribute and its advertised state
    - Throws: `EOS_InvalidParameters` if the attribution is missing information or otherwise invalid
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____AddAttribute(
        _ Options: SwiftEOS_SessionModification_AddAttributeOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionModification_AddAttribute(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Remove an attribute from this session

    - Parameter Options: Specify the key of the attribute to remove
    - Throws: `EOS_InvalidParameters` if the key is null or empty
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____RemoveAttribute(
        _ Options: SwiftEOS_SessionModification_RemoveAttributeOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionModification_RemoveAttribute(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set the bucket ID associated with this session.
    Values such as region, game mode, etc can be combined here depending on game need.
    Setting this is strongly recommended to improve search performance.

    - Parameter Options: Options associated with the bucket ID of the session
    - Throws: `EOS_InvalidParameters` if the bucket ID is invalid or null
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetBucketId(
        _ Options: SwiftEOS_SessionModification_SetBucketIdOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionModification_SetBucketId(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set the host address associated with this session
    Setting this is optional, if the value is not set the SDK will fill the value in from the service.
    It is useful to set if other addressing mechanisms are desired or if LAN addresses are preferred during development

    - Note: No validation of this value occurs to allow for flexibility in addressing methods
    - Parameter Options: Options associated with the host address of the session
    - Throws: `EOS_InvalidParameters` if the host ID is an empty string
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetHostAddress(
        _ Options: SwiftEOS_SessionModification_SetHostAddressOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionModification_SetHostAddress(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Allows enabling or disabling invites for this session.
    The session will also need to have `bPresenceEnabled` true.

    - Parameter Options: Options associated with invites allowed flag for this session.
    - Throws: `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetInvitesAllowed(
        _ Options: SwiftEOS_SessionModification_SetInvitesAllowedOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionModification_SetInvitesAllowed(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set whether or not join in progress is allowed
    Once a session is started, it will no longer be visible to search queries unless this flag is set or the session returns to the pending or ended state

    - Parameter Options: Options associated with setting the join in progress state the session
    - Throws: `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetJoinInProgressAllowed(
        _ Options: SwiftEOS_SessionModification_SetJoinInProgressAllowedOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionModification_SetJoinInProgressAllowed(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set the maximum number of players allowed in this session.
    When updating the session, it is not possible to reduce this number below the current number of existing players

    - Parameter Options: Options associated with max number of players in this session
    - Throws: `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetMaxPlayers(
        _ Options: SwiftEOS_SessionModification_SetMaxPlayersOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionModification_SetMaxPlayers(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Set the session permissions associated with this session.
    The permissions range from "public" to "invite only" and are described by `EOS_EOnlineSessionPermissionLevel`

    - Parameter Options: Options associated with the permission level of the session
    - Throws: `EOS_IncompatibleVersion` if the API version passed in is incorrect
    */
    private func ____SetPermissionLevel(
        _ Options: SwiftEOS_SessionModification_SetPermissionLevelOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_SessionModification_SetPermissionLevel(
                        Handle,
                        Options
                    ) } } }
    }
}
