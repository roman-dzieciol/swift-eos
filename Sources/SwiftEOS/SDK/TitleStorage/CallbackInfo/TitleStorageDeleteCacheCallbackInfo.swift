import Foundation
import EOSSDK

/** Structure containing the result of a delete cache operation */
public struct SwiftEOS_TitleStorage_DeleteCacheCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_DeleteCacheCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_TitleStorage_DeleteCacheCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error 
     * - Parameter LocalUserId:  Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start) 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
    }
}
