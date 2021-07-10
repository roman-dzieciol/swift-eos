import Foundation
import EOSSDK

/** Output parameters for the EOS_UserInfo_QueryUserInfoByExternalAccount Function. */
public struct SwiftEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local player who requested the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** External account id of the user whose information has been retrieved  */
    public let ExternalAccountId: String?

    /** Account type of the external account id  */
    public let AccountType: EOS_EExternalAccountType

    /** Account ID of the player whose information has been retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.ExternalAccountId = String(cString: sdkObject.ExternalAccountId)
        self.AccountType = sdkObject.AccountType
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local player who requested the information 
     * - Parameter ExternalAccountId:  External account id of the user whose information has been retrieved 
     * - Parameter AccountType:  Account type of the external account id 
     * - Parameter TargetUserId:  Account ID of the player whose information has been retrieved 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        ExternalAccountId: String?,
        AccountType: EOS_EExternalAccountType,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.ExternalAccountId = ExternalAccountId
        self.AccountType = AccountType
        self.TargetUserId = TargetUserId
    }
}
