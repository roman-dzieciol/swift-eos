import Foundation
import EOSSDK

/** Output parameters for the EOS_Auth_LinkAccount Function. */
public struct SwiftEOS_Auth_LinkAccountCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user whose account has been linked during login  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Optional data returned when ResultCode is EOS_Auth_PinGrantCode.
     * Once the user has logged in with their Epic Online Services account, the account will be linked with the external account supplied when EOS_Auth_Login was called.
     * EOS_Auth_OnLinkAccountCallback will be fired again with ResultCode in EOS_Auth_LinkAccountCallbackInfo set to EOS_Success.
     */
    public let PinGrantInfo: SwiftEOS_Auth_PinGrantInfo?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LinkAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.PinGrantInfo = try SwiftEOS_Auth_PinGrantInfo.init(sdkObject: sdkObject.PinGrantInfo.pointee)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_LinkAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user whose account has been linked during login 
     * - Parameter PinGrantInfo:  Optional data returned when ResultCode is EOS_Auth_PinGrantCode.
     * Once the user has logged in with their Epic Online Services account, the account will be linked with the external account supplied when EOS_Auth_Login was called.
     * EOS_Auth_OnLinkAccountCallback will be fired again with ResultCode in EOS_Auth_LinkAccountCallbackInfo set to EOS_Success.
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        PinGrantInfo: SwiftEOS_Auth_PinGrantInfo?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.PinGrantInfo = PinGrantInfo
    }
}
