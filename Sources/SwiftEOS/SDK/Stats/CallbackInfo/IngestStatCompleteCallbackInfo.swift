import Foundation
import EOSSDK

/** Data containing the result information for an ingest stat request. */
public struct SwiftEOS_Stats_IngestStatCompleteCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID for the user requesting the ingest  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID for the user whose stat is being ingested  */
    public let TargetUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Stats_IngestStatCompleteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Stats_IngestStatCompleteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error. 
     * - Parameter LocalUserId:  The Product User ID for the user requesting the ingest 
     * - Parameter TargetUserId:  The Product User ID for the user whose stat is being ingested 
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
