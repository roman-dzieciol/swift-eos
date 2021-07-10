import Foundation
import EOSSDK

/** Data containing the result information for querying a player's stats request. */
public struct SwiftEOS_Stats_OnQueryStatsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID whose stats which were retrieved  */
    public let TargetUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_OnQueryStatsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Stats_OnQueryStatsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     * - Parameter LocalUserId:  The Product User ID of the user who initiated this request 
     * - Parameter TargetUserId:  The Product User ID whose stats which were retrieved 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
