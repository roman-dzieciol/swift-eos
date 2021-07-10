import Foundation
import EOSSDK

/** Output parameters for the EOS_Connect_TransferDeviceIdAccount Function. */
public struct SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /**
     * The ProductUserIdToPreserve that was passed to the original EOS_Connect_TransferDeviceIdAccount call.
     * On successful operation, this EOS_ProductUserId will have a valid authentication session
     * and the other EOS_ProductUserId value has been discarded and lost forever.
     * The application should remove any registered notification callbacks for the discarded EOS_ProductUserId as obsolete.
     */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_TransferDeviceIdAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_TransferDeviceIdAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     * - Parameter LocalUserId:  The ProductUserIdToPreserve that was passed to the original EOS_Connect_TransferDeviceIdAccount call.
     * On successful operation, this EOS_ProductUserId will have a valid authentication session
     * and the other EOS_ProductUserId value has been discarded and lost forever.
     * The application should remove any registered notification callbacks for the discarded EOS_ProductUserId as obsolete.
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
    }
}
