import Foundation
import EOSSDK

public final class SwiftEOS_PresenceModification_Actor: SwiftEOSActor {
    public let Handle: EOS_HPresenceModification?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HPresenceModification?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_PresenceModification_Release(Handle)
    }

    /**
    Removes one or more rows of user-defined presence data for a local user. At least one DeleteDataInfo object
    must be specified.

    - Parameter Records: The pointer to start of a sequential array
    - Note: ``EOS/_tagEOS_PresenceModification_DeleteDataOptions/RecordsCount``:
    The count of data keys to delete
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_KEYS`
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_KEY_LENGTH`
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_VALUE_LENGTH`
    */
    public func DeleteData(
        Records: [SwiftEOS_PresenceModification_DataRecordId]?
    ) throws {
        try ____DeleteData(.init(Records: Records))
    }

    /**
    Modifies one or more rows of user-defined presence data for a local user. At least one InfoData object
    must be specified.

    - Parameter Records: The pointer to start of a sequential array of Presence DataRecords
    - Note: ``EOS/_tagEOS_PresenceModification_SetDataOptions/RecordsCount``:
    The count of records to set
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_KEYS`
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_KEY_LENGTH`
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_VALUE_LENGTH`
    */
    public func SetData(
        Records: [SwiftEOS_Presence_DataRecord]?
    ) throws {
        try ____SetData(.init(Records: Records))
    }

    /**
    Sets your new join info custom game-data string. This is a helper function for reading the presence data related to how a user can be joined.
    Its meaning is entirely application dependent.

    - Parameter JoinInfo: The string which will be advertised as this player's join info.
    An application is expected to freely define the meaning of this string to use for connecting to an active game session.
    The string should not exceed `EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH` in length.
    This affects the ability of the Social Overlay to show game related actions to take in the player's social graph.
    - Note: The Social Overlay can handle only one of the following three options at a time:
            * using the bPresenceEnabled flags within the Sessions interface
            * using the bPresenceEnabled flags within the Lobby interface
            * using `EOS_PresenceModification_SetJoinInfo`
    - SeeAlso: `EOS_Lobby_CreateLobbyOptions`
    - SeeAlso: `EOS_Lobby_JoinLobbyOptions`
    - SeeAlso: `EOS_Sessions_CreateSessionModificationOptions`
    - SeeAlso: `EOS_Sessions_JoinSessionOptions`
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    - SeeAlso: `EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH`
    */
    public func SetJoinInfo(
        JoinInfo: String?
    ) throws {
        try ____SetJoinInfo(.init(JoinInfo: JoinInfo))
    }

    /**
    Modifies a user's Rich Presence string to a new state. This is the exact value other users will see
    when they query the local user's presence.

    - Parameter RichText: The status of the user
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    - SeeAlso: `EOS_PRESENCE_RICH_TEXT_MAX_VALUE_LENGTH`
    */
    public func SetRawRichText(
        RichText: String?
    ) throws {
        try ____SetRawRichText(.init(RichText: RichText))
    }

    /**
    Modifies a user's online status to be the new state.

    - Parameter Status: The status of the user
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    */
    public func SetStatus(
        Status: EOS_Presence_EStatus
    ) throws {
        try ____SetStatus(.init(Status: Status))
    }
}

extension SwiftEOS_PresenceModification_Actor {

    /**
    Removes one or more rows of user-defined presence data for a local user. At least one DeleteDataInfo object
    must be specified.

    - Parameter Options: Object containing an array of new presence data.
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_KEYS`
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_KEY_LENGTH`
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_VALUE_LENGTH`
    */
    private func ____DeleteData(
        _ Options: SwiftEOS_PresenceModification_DeleteDataOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_DeleteData(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Modifies one or more rows of user-defined presence data for a local user. At least one InfoData object
    must be specified.

    - Parameter Options: Object containing an array of new presence data.
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_KEYS`
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_KEY_LENGTH`
    - SeeAlso: `EOS_PRESENCE_DATA_MAX_VALUE_LENGTH`
    */
    private func ____SetData(
        _ Options: SwiftEOS_PresenceModification_SetDataOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_SetData(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Sets your new join info custom game-data string. This is a helper function for reading the presence data related to how a user can be joined.
    Its meaning is entirely application dependent.

    - Parameter Options: Object containing a join info string and associated user data
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    - SeeAlso: `EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH`
    */
    private func ____SetJoinInfo(
        _ Options: SwiftEOS_PresenceModification_SetJoinInfoOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_SetJoinInfo(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Modifies a user's Rich Presence string to a new state. This is the exact value other users will see
    when they query the local user's presence.

    - Parameter Options: Object containing properties related to setting a user's RichText string
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    - SeeAlso: `EOS_PRESENCE_RICH_TEXT_MAX_VALUE_LENGTH`
    */
    private func ____SetRawRichText(
        _ Options: SwiftEOS_PresenceModification_SetRawRichTextOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_SetRawRichText(
                        Handle,
                        Options
                    ) } } }
    }

    /**
    Modifies a user's online status to be the new state.

    - Parameter Options: Object containing properties related to setting a user's Status
    - Throws: Success if modification was added successfully, otherwise an error code related to the problem
    */
    private func ____SetStatus(
        _ Options: SwiftEOS_PresenceModification_SetStatusOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_SetStatus(
                        Handle,
                        Options
                    ) } } }
    }
}
