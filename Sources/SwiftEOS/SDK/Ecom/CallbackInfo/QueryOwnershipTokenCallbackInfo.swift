import Foundation
import EOSSDK

/** Output parameters for the `EOS_Ecom_QueryOwnershipToken` Function. */
public struct SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo {

    /** The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors. */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user whose ownership token was queried */
    public let LocalUserId: EOS_EpicAccountId?

    /** Ownership token containing details about the catalog items queried */
    public let OwnershipToken: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOwnershipTokenCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.OwnershipToken = String(cString: sdkObject.OwnershipToken)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_QueryOwnershipTokenCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose ownership token was queried
    - Parameter OwnershipToken: Ownership token containing details about the catalog items queried
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        OwnershipToken: String?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.OwnershipToken = OwnershipToken
    }
}
