import Foundation
import EOSSDK

/** Output parameters for the `EOS_Sanctions_QueryActivePlayerSanctions` function. */
public struct SwiftEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo {

    /** The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors. */
    public let ResultCode: EOS_EResult

    /** Target Product User ID that was passed to `EOS_Sanctions_QueryActivePlayerSanctions`. */
    public let TargetUserId: EOS_ProductUserId?

    /** The Product User ID of the local user who initiated this request, if applicable. */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.TargetUserId = sdkObject.TargetUserId
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors.
    - Parameter TargetUserId: Target Product User ID that was passed to `EOS_Sanctions_QueryActivePlayerSanctions`.
    - Parameter LocalUserId: The Product User ID of the local user who initiated this request, if applicable.
    */
    public init(
        ResultCode: EOS_EResult,
        TargetUserId: EOS_ProductUserId?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ResultCode = ResultCode
        self.TargetUserId = TargetUserId
        self.LocalUserId = LocalUserId
    }
}
