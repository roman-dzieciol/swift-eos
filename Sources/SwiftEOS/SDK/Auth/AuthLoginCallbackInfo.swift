import Foundation
import EOSSDK

/** Output parameters for the EOS_Auth_Login Function. */
public struct SwiftEOS_Auth_LoginCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user who has logged in  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Optional data returned in the middle of a EOS_LCT_DeviceCode request  */
    public let PinGrantInfo: SwiftEOS_Auth_PinGrantInfo?

    /** If the user was not found with external auth credentials passed into EOS_Auth_Login, this continuance token can be passed to EOS_Auth_LinkAccount to continue the flow.  */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /** If the user trying to login is restricted from doing so, the ResultCode of this structure will be EOS_Auth_AccountFeatureRestricted, and AccountFeatureRestrictedInfo will be populated with the data needed to get past the restriction  */
    public let AccountFeatureRestrictedInfo: SwiftEOS_Auth_AccountFeatureRestrictedInfo?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LoginCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.PinGrantInfo = try SwiftEOS_Auth_PinGrantInfo.init(sdkObject: sdkObject.PinGrantInfo.pointee)
        self.ContinuanceToken = sdkObject.ContinuanceToken
        self.AccountFeatureRestrictedInfo = try SwiftEOS_Auth_AccountFeatureRestrictedInfo.init(sdkObject: sdkObject.AccountFeatureRestrictedInfo.pointee)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Auth_LoginCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        PinGrantInfo: SwiftEOS_Auth_PinGrantInfo?,
        ContinuanceToken: EOS_ContinuanceToken?,
        AccountFeatureRestrictedInfo: SwiftEOS_Auth_AccountFeatureRestrictedInfo?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.PinGrantInfo = PinGrantInfo
        self.ContinuanceToken = ContinuanceToken
        self.AccountFeatureRestrictedInfo = AccountFeatureRestrictedInfo
    }
}
