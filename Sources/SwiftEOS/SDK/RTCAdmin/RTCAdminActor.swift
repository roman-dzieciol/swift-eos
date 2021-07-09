import Foundation
import EOSSDK
public class SwiftEOS_RTCAdmin_Actor: SwiftEOSActor {
    public let Handle: EOS_HRTCAdmin

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HRTCAdmin
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Fetches a user token when called inside of the OnQueryJoinRoomTokenComplete callback.
     * 
     * - Parameter Options:  Structure containing the index being accessed
     * - Parameter OutUserToken:  The user token for the given index, if it exists and is valid. Use EOS_RTCAdmin_UserToken_Release when finished
     * 
     * @note The order of the tokens doesn't necessarily match the order of the EOS_ProductUserId array specified in the EOS_RTCAdmin_QueryJoinRoomTokenOptions when
     * initiating the query.
     * 
     * @see EOS_RTCAdmin_UserToken_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutUserToken
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the user token is not found
     */
    public func CopyUserTokenByIndex(
        Options: SwiftEOS_RTCAdmin_CopyUserTokenByIndexOptions
    ) throws -> SwiftEOS_RTCAdmin_UserToken? {
        try ____CopyUserTokenByIndex(Options)
    }

    /**
     * Fetches a user token for a given user ID when called inside of the OnQueryJoinRoomTokenComplete callback.
     * 
     * - Parameter Options:  Structure containing the user ID being accessed
     * - Parameter OutUserToken:  The user token for the given user ID, if it exists and is valid. Use EOS_RTCAdmin_UserToken_Release when finished
     * 
     * @see EOS_RTCAdmin_UserToken_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutUserToken
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the user token is not found
     */
    public func CopyUserTokenByUserId(
        Options: SwiftEOS_RTCAdmin_CopyUserTokenByUserIdOptions
    ) throws -> SwiftEOS_RTCAdmin_UserToken? {
        try ____CopyUserTokenByUserId(Options)
    }

    /**
     * Starts an asynchronous task that removes a participant from a room and revokes their token.
     * 
     * - Parameter Options:  structure containing the room and user to revoke the token from.
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     */
    public func Kick(
        Options: SwiftEOS_RTCAdmin_KickOptions,
        CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_KickCompleteCallbackInfo) -> Void
    ) throws {
        try ____Kick(
            Options,
            CompletionDelegate
        )
    }

    /**
     * Query for a list of user tokens for joining a room.
     * Each query generates a query id ( see EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo ) which should be used
     * to retrieve the tokens from inside the callback.
     * This query id and query result itself are only valid for the duration of the callback.
     * 
     * - Parameter Options:  Structure containing information about the application whose user tokens we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the query join room token operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryJoinRoomToken(
        Options: SwiftEOS_RTCAdmin_QueryJoinRoomTokenOptions,
        CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryJoinRoomToken(
            Options,
            CompletionDelegate
        )
    }

    /**
     * Starts an asynchronous task remotely mutes/unmutes a room participant.
     * This remotely mutes the specified participant, so no audio is sent from that participant to any other participant in the room.
     * 
     * - Parameter Options:  structure containing the room and user to mute.
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func SetParticipantHardMute(
        Options: SwiftEOS_RTCAdmin_SetParticipantHardMuteOptions,
        CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo) -> Void
    ) throws {
        try ____SetParticipantHardMute(
            Options,
            CompletionDelegate
        )
    }
}

extension SwiftEOS_RTCAdmin_Actor {

    /**
     * Fetches a user token when called inside of the OnQueryJoinRoomTokenComplete callback.
     * 
     * - Parameter Options:  Structure containing the index being accessed
     * - Parameter OutUserToken:  The user token for the given index, if it exists and is valid. Use EOS_RTCAdmin_UserToken_Release when finished
     * 
     * @note The order of the tokens doesn't necessarily match the order of the EOS_ProductUserId array specified in the EOS_RTCAdmin_QueryJoinRoomTokenOptions when
     * initiating the query.
     * 
     * @see EOS_RTCAdmin_UserToken_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutUserToken
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the user token is not found
     */
    private func ____CopyUserTokenByIndex(
        _ Options: SwiftEOS_RTCAdmin_CopyUserTokenByIndexOptions
    ) throws -> SwiftEOS_RTCAdmin_UserToken? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutUserToken in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_RTCAdmin_CopyUserTokenByIndex(
                                Handle,
                                Options,
                                OutUserToken
                            ) } } },
                release: EOS_RTCAdmin_UserToken_Release
            ) }
    }

    /**
     * Fetches a user token for a given user ID when called inside of the OnQueryJoinRoomTokenComplete callback.
     * 
     * - Parameter Options:  Structure containing the user ID being accessed
     * - Parameter OutUserToken:  The user token for the given user ID, if it exists and is valid. Use EOS_RTCAdmin_UserToken_Release when finished
     * 
     * @see EOS_RTCAdmin_UserToken_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutUserToken
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the user token is not found
     */
    private func ____CopyUserTokenByUserId(
        _ Options: SwiftEOS_RTCAdmin_CopyUserTokenByUserIdOptions
    ) throws -> SwiftEOS_RTCAdmin_UserToken? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutUserToken in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_RTCAdmin_CopyUserTokenByUserId(
                                Handle,
                                Options,
                                OutUserToken
                            ) } } },
                release: EOS_RTCAdmin_UserToken_Release
            ) }
    }

    /**
     * Starts an asynchronous task that removes a participant from a room and revokes their token.
     * 
     * - Parameter Options:  structure containing the room and user to revoke the token from.
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     */
    private func ____Kick(
        _ Options: SwiftEOS_RTCAdmin_KickOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_KickCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_RTCAdmin_Kick(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_RTCAdmin_KickCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Query for a list of user tokens for joining a room.
     * Each query generates a query id ( see EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo ) which should be used
     * to retrieve the tokens from inside the callback.
     * This query id and query result itself are only valid for the duration of the callback.
     * 
     * - Parameter Options:  Structure containing information about the application whose user tokens we're retrieving.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  This function is called when the query join room token operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    private func ____QueryJoinRoomToken(
        _ Options: SwiftEOS_RTCAdmin_QueryJoinRoomTokenOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_RTCAdmin_QueryJoinRoomToken(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Starts an asynchronous task remotely mutes/unmutes a room participant.
     * This remotely mutes the specified participant, so no audio is sent from that participant to any other participant in the room.
     * 
     * - Parameter Options:  structure containing the room and user to mute.
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    private func ____SetParticipantHardMute(
        _ Options: SwiftEOS_RTCAdmin_SetParticipantHardMuteOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_RTCAdmin_SetParticipantHardMute(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
