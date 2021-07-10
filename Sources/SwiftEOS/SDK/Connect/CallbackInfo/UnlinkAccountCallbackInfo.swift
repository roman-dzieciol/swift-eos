import Foundation
import EOSSDK

/** Output parameters for the `EOS_Connect_UnlinkAccount` Function. */
public struct SwiftEOS_Connect_UnlinkAccountCallbackInfo {

    /** The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors. */
    public let ResultCode: EOS_EResult

    /**
    The product user that was subject for the unlinking operation.

    On a successful operation, the local authentication session for the product user will have been invalidated.
    As such, the LocalUserId value will no longer be valid in any context unless the user is logged into it again.
    */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_UnlinkAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_UnlinkAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors.
    - Parameter LocalUserId: The product user that was subject for the unlinking operation.
    On a successful operation, the local authentication session for the product user will have been invalidated.
    As such, the LocalUserId value will no longer be valid in any context unless the user is logged into it again.
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
    }
}
