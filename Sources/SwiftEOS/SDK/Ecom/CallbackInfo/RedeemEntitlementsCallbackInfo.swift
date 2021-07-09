import Foundation
import EOSSDK

/** Output parameters for the EOS_Ecom_RedeemEntitlements Function. */
public struct SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, otherwise one of the error codes is returned. See eos_common.h  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user who has redeemed entitlements  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_RedeemEntitlementsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_RedeemEntitlementsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
    }
}
