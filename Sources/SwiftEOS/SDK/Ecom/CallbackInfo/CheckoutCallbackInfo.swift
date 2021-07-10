import Foundation
import EOSSDK

/** Output parameters for the EOS_Ecom_Checkout Function. */
public struct SwiftEOS_Ecom_CheckoutCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, otherwise one of the error codes is returned. See eos_common.h  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user who initiated the purchase  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The transaction ID which can be used to obtain an EOS_Ecom_HTransaction using EOS_Ecom_CopyTransactionById.  */
    public let TransactionId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CheckoutCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TransactionId = String(cString: sdkObject.TransactionId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_CheckoutCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  Result code for the operation. EOS_Success is returned for a successful request, otherwise one of the error codes is returned. See eos_common.h 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user who initiated the purchase 
     * - Parameter TransactionId:  The transaction ID which can be used to obtain an EOS_Ecom_HTransaction using EOS_Ecom_CopyTransactionById. 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        TransactionId: String?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.TransactionId = TransactionId
    }
}
