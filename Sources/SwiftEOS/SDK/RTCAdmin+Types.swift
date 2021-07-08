import Foundation
import EOSSDK

/** Input parameters for the EOS_RTCAdmin_CopyUserTokenByIndex function. */
public struct SwiftEOS_RTCAdmin_CopyUserTokenByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_COPYUSERTOKENBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the user token to retrieve from the cache.  */
    public let UserTokenIndex: Int

    /**
     * Query identifier received as part of a previous query.
     * 
     * @see EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo
     */
    public let QueryId: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_CopyUserTokenByIndexOptions {
        try _tagEOS_RTCAdmin_CopyUserTokenByIndexOptions(
            ApiVersion: ApiVersion,
            UserTokenIndex: try safeNumericCast(exactly: UserTokenIndex),
            QueryId: try safeNumericCast(exactly: QueryId)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_CopyUserTokenByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserTokenIndex = try safeNumericCast(exactly: sdkObject.UserTokenIndex)
        self.QueryId = try safeNumericCast(exactly: sdkObject.QueryId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_COPYUSERTOKENBYINDEX_API_LATEST,
        UserTokenIndex: Int,
        QueryId: Int
    ) {
        self.ApiVersion = ApiVersion
        self.UserTokenIndex = UserTokenIndex
        self.QueryId = QueryId
    }
}

/** Input parameters for the EOS_RTCAdmin_CopyUserTokenByUserId function. */
public struct SwiftEOS_RTCAdmin_CopyUserTokenByUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_COPYUSERTOKENBYUSERID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose user token we're copying.  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Query identifier received as part of a previous query.
     * 
     * @see EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo
     */
    public let QueryId: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_CopyUserTokenByUserIdOptions {
        try _tagEOS_RTCAdmin_CopyUserTokenByUserIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            QueryId: try safeNumericCast(exactly: QueryId)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_CopyUserTokenByUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.QueryId = try safeNumericCast(exactly: sdkObject.QueryId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_COPYUSERTOKENBYUSERID_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        QueryId: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.QueryId = QueryId
    }
}

/** Data containing the result information for a kick participant request. */
public struct SwiftEOS_RTCAdmin_KickCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_KickCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAdmin_KickCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_RTCAdmin_Kick function. */
public struct SwiftEOS_RTCAdmin_KickOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_KICK_API_LATEST.  */
    public let ApiVersion: Int32

    /** Room name to kick the participant from  */
    public let RoomName: String?

    /** Product User ID of the participant to kick from the room  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_KickOptions {
        _tagEOS_RTCAdmin_KickOptions(
            ApiVersion: ApiVersion,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_KickOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RoomName = String(cString: sdkObject.RoomName)
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_KICK_API_LATEST,
        RoomName: String?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.RoomName = RoomName
        self.TargetUserId = TargetUserId
    }
}

/** Data containing the result information for a query join room token request. */
public struct SwiftEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Room the request was made for.  */
    public let RoomName: String?

    /** URL passed to backend to join room.  */
    public let ClientBaseUrl: String?

    /**
     * If the query completed successfully, this contains an identifier that should be used to retrieve the tokens.
     * This identifier is only valid for the duration of the callback. 
     * 
     * @see EOS_RTCAdmin_CopyUserTokenByIndex
     * @see EOS_RTCAdmin_CopyUserTokenByUserId
     */
    public let QueryId: Int

    /** How many token received as result of the query  */
    public let TokenCount: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ClientBaseUrl = String(cString: sdkObject.ClientBaseUrl)
        self.QueryId = try safeNumericCast(exactly: sdkObject.QueryId)
        self.TokenCount = try safeNumericCast(exactly: sdkObject.TokenCount)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_RTCAdmin_QueryJoinRoomToken function. */
public struct SwiftEOS_RTCAdmin_QueryJoinRoomTokenOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_QUERYJOINROOMTOKEN_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID for local user who is querying join room tokens.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Room name to request a token for.  */
    public let RoomName: String?

    /**
     * An array of Product User IDs indicating the users to retrieve a token for. 
     * - array num: TargetUserIdsCount
     */
    public let TargetUserIds: [EOS_ProductUserId]?

    /**
     * The number of users included in the query. 
     * - array buffer: TargetUserIds
     * - array buffer: TargetUserIpAddresses
     */
    public let TargetUserIdsCount: Int

    /**
     * Array of IP Addresses, one for each of the users we're querying tokens for.
     * There should be TargetUserIdsCount Ip Addresses, you can set an entry to NULL if not known.
     * If TargetUserIpAddresses is set to NULL IP Addresses will be ignored.
     * IPv4 format: "0.0.0.0"
     * IPv6 format: "0:0:0:0:0:0:0:0"
     * - array num: TargetUserIdsCount
     */
    public let TargetUserIpAddresses: [String]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_QueryJoinRoomTokenOptions {
        try _tagEOS_RTCAdmin_QueryJoinRoomTokenOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            TargetUserIds: pointerManager.managedMutablePointerToBuffer(copyingArray: TargetUserIds),
            TargetUserIdsCount: try safeNumericCast(exactly: TargetUserIdsCount),
            TargetUserIpAddresses: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: TargetUserIpAddresses?.map { 
                    $0.utf8CString })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_QueryJoinRoomTokenOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.TargetUserIds = try trivialOptionalArrayFromTrivialOptionalPointer(
            start: sdkObject.TargetUserIds,
            count: sdkObject.TargetUserIdsCount
        )
        self.TargetUserIdsCount = try safeNumericCast(exactly: sdkObject.TargetUserIdsCount)
        self.TargetUserIpAddresses = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.TargetUserIpAddresses,
            count: sdkObject.TargetUserIdsCount
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_QUERYJOINROOMTOKEN_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        TargetUserIds: [EOS_ProductUserId]?,
        TargetUserIdsCount: Int,
        TargetUserIpAddresses: [String]?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.TargetUserIds = TargetUserIds
        self.TargetUserIdsCount = TargetUserIdsCount
        self.TargetUserIpAddresses = TargetUserIpAddresses
    }
}

/** Data containing the result information for a hard mute request. */
public struct SwiftEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_RTCAdmin_SetParticipantHardMute function. */
public struct SwiftEOS_RTCAdmin_SetParticipantHardMuteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_SETPARTICIPANTHARDMUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Room to kick the participant from  */
    public let RoomName: String?

    /** Product User ID of the participant to hard mute for every participant in the room.  */
    public let TargetUserId: EOS_ProductUserId?

    /** Hard mute status (Mute on or off)  */
    public let bMute: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_SetParticipantHardMuteOptions {
        _tagEOS_RTCAdmin_SetParticipantHardMuteOptions(
            ApiVersion: ApiVersion,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            TargetUserId: TargetUserId,
            bMute: eosBoolFromSwiftBool(bMute)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_SetParticipantHardMuteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RoomName = String(cString: sdkObject.RoomName)
        self.TargetUserId = sdkObject.TargetUserId
        self.bMute = try swiftBoolFromEosBool(sdkObject.bMute)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_SETPARTICIPANTHARDMUTE_API_LATEST,
        RoomName: String?,
        TargetUserId: EOS_ProductUserId?,
        bMute: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.RoomName = RoomName
        self.TargetUserId = TargetUserId
        self.bMute = bMute
    }
}

/**
 * Contains information about a collection of user tokens for joining a room.
 * 
 * - see: release func: EOS_RTCAdmin_UserToken_Release
 */
public struct SwiftEOS_RTCAdmin_UserToken: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_USERTOKEN_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user who owns this user token.  */
    public let ProductUserId: EOS_ProductUserId?

    /** Access token to enable a user to join a room  */
    public let Token: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_UserToken {
        _tagEOS_RTCAdmin_UserToken(
            ApiVersion: ApiVersion,
            ProductUserId: ProductUserId,
            Token: pointerManager.managedPointerToBuffer(copyingArray: Token?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_UserToken?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ProductUserId = sdkObject.ProductUserId
        self.Token = String(cString: sdkObject.Token)
    }
}
