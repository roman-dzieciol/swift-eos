import Foundation
import EOSSDK

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

    /** Memberwise initializer */
    public init(
        ResultCode: EOS_EResult,
        RoomName: String?,
        ClientBaseUrl: String?,
        QueryId: Int,
        TokenCount: Int
    ) {
        self.ResultCode = ResultCode
        self.RoomName = RoomName
        self.ClientBaseUrl = ClientBaseUrl
        self.QueryId = QueryId
        self.TokenCount = TokenCount
    }
}
