import Foundation
import EOSSDK

/** Output parameters for the EOS_Connect_QueryExternalAccountMappings function. */
public struct SwiftEOS_Connect_QueryExternalAccountMappingsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the existing, logged-in user who made the request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_QueryExternalAccountMappingsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_QueryExternalAccountMappingsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     * - Parameter LocalUserId:  The Product User ID of the existing, logged-in user who made the request. 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
    }
}
