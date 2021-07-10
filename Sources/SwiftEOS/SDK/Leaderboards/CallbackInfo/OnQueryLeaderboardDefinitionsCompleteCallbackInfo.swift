import Foundation
import EOSSDK

/** Data containing the result information for a query leaderboard definitions request. */
public struct SwiftEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     */
    public init(
        ResultCode: EOS_EResult
    ) {
        self.ResultCode = ResultCode
    }
}
