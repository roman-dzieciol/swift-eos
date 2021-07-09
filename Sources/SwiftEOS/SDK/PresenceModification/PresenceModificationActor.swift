import Foundation
import EOSSDK
public class SwiftEOS_PresenceModification_Actor: SwiftEOSActor {
    public let Handle: EOS_HPresenceModification

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HPresenceModification
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_PresenceModification_Release(Handle)
    }

    /**
     * Removes one or more rows of user-defined presence data for a local user. At least one DeleteDataInfo object
     * must be specified.
     * 
     * - Parameter Options:  Object containing an array of new presence data.
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     * 
     * @see EOS_PRESENCE_DATA_MAX_KEYS
     * @see EOS_PRESENCE_DATA_MAX_KEY_LENGTH
     * @see EOS_PRESENCE_DATA_MAX_VALUE_LENGTH
     */
    public func DeleteData(
        Options: SwiftEOS_PresenceModification_DeleteDataOptions
    ) throws {
        try ____DeleteData(Options)
    }

    /**
     * Modifies one or more rows of user-defined presence data for a local user. At least one InfoData object
     * must be specified.
     * 
     * - Parameter Options:  Object containing an array of new presence data.
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     * 
     * @see EOS_PRESENCE_DATA_MAX_KEYS
     * @see EOS_PRESENCE_DATA_MAX_KEY_LENGTH
     * @see EOS_PRESENCE_DATA_MAX_VALUE_LENGTH
     */
    public func SetData(
        Options: SwiftEOS_PresenceModification_SetDataOptions
    ) throws {
        try ____SetData(Options)
    }

    /**
     * Sets your new join info custom game-data string. This is a helper function for reading the presence data related to how a user can be joined.
     * Its meaning is entirely application dependent.
     * 
     * - Parameter Options:  Object containing a join info string and associated user data
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     * 
     * @see EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH
     */
    public func SetJoinInfo(
        Options: SwiftEOS_PresenceModification_SetJoinInfoOptions
    ) throws {
        try ____SetJoinInfo(Options)
    }

    /**
     * Modifies a user's Rich Presence string to a new state. This is the exact value other users will see
     * when they query the local user's presence.
     * 
     * - Parameter Options:  Object containing properties related to setting a user's RichText string
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     * 
     * @see EOS_PRESENCE_RICH_TEXT_MAX_VALUE_LENGTH
     */
    public func SetRawRichText(
        Options: SwiftEOS_PresenceModification_SetRawRichTextOptions
    ) throws {
        try ____SetRawRichText(Options)
    }

    /**
     * Modifies a user's online status to be the new state.
     * 
     * - Parameter Options:  Object containing properties related to setting a user's Status
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     */
    public func SetStatus(
        Options: SwiftEOS_PresenceModification_SetStatusOptions
    ) throws {
        try ____SetStatus(Options)
    }
}

extension SwiftEOS_PresenceModification_Actor {

    /**
     * Removes one or more rows of user-defined presence data for a local user. At least one DeleteDataInfo object
     * must be specified.
     * 
     * - Parameter Options:  Object containing an array of new presence data.
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     * 
     * @see EOS_PRESENCE_DATA_MAX_KEYS
     * @see EOS_PRESENCE_DATA_MAX_KEY_LENGTH
     * @see EOS_PRESENCE_DATA_MAX_VALUE_LENGTH
     */
    private func ____DeleteData(
        _ Options: SwiftEOS_PresenceModification_DeleteDataOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_DeleteData(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Modifies one or more rows of user-defined presence data for a local user. At least one InfoData object
     * must be specified.
     * 
     * - Parameter Options:  Object containing an array of new presence data.
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     * 
     * @see EOS_PRESENCE_DATA_MAX_KEYS
     * @see EOS_PRESENCE_DATA_MAX_KEY_LENGTH
     * @see EOS_PRESENCE_DATA_MAX_VALUE_LENGTH
     */
    private func ____SetData(
        _ Options: SwiftEOS_PresenceModification_SetDataOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_SetData(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Sets your new join info custom game-data string. This is a helper function for reading the presence data related to how a user can be joined.
     * Its meaning is entirely application dependent.
     * 
     * - Parameter Options:  Object containing a join info string and associated user data
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     * 
     * @see EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH
     */
    private func ____SetJoinInfo(
        _ Options: SwiftEOS_PresenceModification_SetJoinInfoOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_SetJoinInfo(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Modifies a user's Rich Presence string to a new state. This is the exact value other users will see
     * when they query the local user's presence.
     * 
     * - Parameter Options:  Object containing properties related to setting a user's RichText string
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     * 
     * @see EOS_PRESENCE_RICH_TEXT_MAX_VALUE_LENGTH
     */
    private func ____SetRawRichText(
        _ Options: SwiftEOS_PresenceModification_SetRawRichTextOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_SetRawRichText(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Modifies a user's online status to be the new state.
     * 
     * - Parameter Options:  Object containing properties related to setting a user's Status
     * @return Success if modification was added successfully, otherwise an error code related to the problem
     */
    private func ____SetStatus(
        _ Options: SwiftEOS_PresenceModification_SetStatusOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_PresenceModification_SetStatus(
                        Handle,
                        Options
                    ) } } }
    }
}
