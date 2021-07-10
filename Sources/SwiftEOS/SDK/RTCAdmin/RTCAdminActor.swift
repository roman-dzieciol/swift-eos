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
     * - Parameter UserTokenIndex:  Index of the user token to retrieve from the cache. 
     * - Parameter QueryId:  Query identifier received as part of a previous query.
     * 
     * @see EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo
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
        UserTokenIndex: Int,
        QueryId: Int
    ) throws -> SwiftEOS_RTCAdmin_UserToken? {
        try ____CopyUserTokenByIndex(.init(
                UserTokenIndex: UserTokenIndex,
                QueryId: QueryId
            ))
    }

    /**
     * Fetches a user token for a given user ID when called inside of the OnQueryJoinRoomTokenComplete callback.
     * 
     * - Parameter TargetUserId:  The Product User ID for the user whose user token we're copying. 
     * - Parameter QueryId:  Query identifier received as part of a previous query.
     * 
     * @see EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo
     * 
     * @see EOS_RTCAdmin_UserToken_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutUserToken
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the user token is not found
     */
    public func CopyUserTokenByUserId(
        TargetUserId: EOS_ProductUserId?,
        QueryId: Int
    ) throws -> SwiftEOS_RTCAdmin_UserToken? {
        try ____CopyUserTokenByUserId(.init(
                TargetUserId: TargetUserId,
                QueryId: QueryId
            ))
    }

    /**
     * Starts an asynchronous task that removes a participant from a room and revokes their token.
     * 
     * - Parameter RoomName:  Room name to kick the participant from 
     * - Parameter TargetUserId:  Product User ID of the participant to kick from the room 
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     */
    public func Kick(
        RoomName: String?,
        TargetUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_KickCompleteCallbackInfo) -> Void
    ) throws {
        try ____Kick(
            .init(
                RoomName: RoomName,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
     * Query for a list of user tokens for joining a room.
     * Each query generates a query id ( see EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo ) which should be used
     * to retrieve the tokens from inside the callback.
     * This query id and query result itself are only valid for the duration of the callback.
     * 
     * - Parameter LocalUserId:  Product User ID for local user who is querying join room tokens. 
     * - Parameter RoomName:  Room name to request a token for. 
     * - Parameter TargetUserIds:  An array of Product User IDs indicating the users to retrieve a token for. 
     * 
     * - Note: ``EOS/_tagEOS_RTCAdmin_QueryJoinRoomTokenOptions/TargetUserIdsCount``:
     * The number of users included in the query. 
     * - Parameter TargetUserIpAddresses:  Array of IP Addresses, one for each of the users we're querying tokens for.
     * There should be TargetUserIdsCount Ip Addresses, you can set an entry to NULL if not known.
     * If TargetUserIpAddresses is set to NULL IP Addresses will be ignored.
     * IPv4 format: "0.0.0.0"
     * IPv6 format: "0:0:0:0:0:0:0:0"
     * - Parameter CompletionDelegate:  This function is called when the query join room token operation completes.
     * 
     * @return EOS_Success if the operation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     */
    public func QueryJoinRoomToken(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        TargetUserIds: [EOS_ProductUserId]?,
        TargetUserIpAddresses: [String]?,
        CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo) -> Void
    ) throws {
        try ____QueryJoinRoomToken(
            .init(
                LocalUserId: LocalUserId,
                RoomName: RoomName,
                TargetUserIds: TargetUserIds,
                TargetUserIpAddresses: TargetUserIpAddresses
            ),
            CompletionDelegate
        )
    }

    /**
     * Starts an asynchronous task remotely mutes/unmutes a room participant.
     * This remotely mutes the specified participant, so no audio is sent from that participant to any other participant in the room.
     * 
     * - Parameter RoomName:  Room to kick the participant from 
     * - Parameter TargetUserId:  Product User ID of the participant to hard mute for every participant in the room. 
     * - Parameter bMute:  Hard mute status (Mute on or off) 
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func SetParticipantHardMute(
        RoomName: String?,
        TargetUserId: EOS_ProductUserId?,
        bMute: Bool,
        CompletionDelegate: @escaping (SwiftEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo) -> Void
    ) throws {
        try ____SetParticipantHardMute(
            .init(
                RoomName: RoomName,
                TargetUserId: TargetUserId,
                bMute: bMute
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_RTCAdmin_Actor {

    /**
     * Fetches a user token when called inside of the OnQueryJoinRoomTokenComplete callback.
     * 
     * - Parameter Options:  Structure containing the index being accessed
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
