import Foundation
import EOSSDK

/** Output parameters for the EOS_Connect_Login function. */
public struct SwiftEOS_Connect_LoginCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. */
    public let ResultCode: EOS_EResult

    /** If login was succesful, this is the Product User ID of the local player that logged in. */
    public let LocalUserId: EOS_ProductUserId?

    /**
    If the user was not found with credentials passed into EOS_Connect_Login,this continuance token can be passed to either EOS_Connect_CreateUser or EOS_Connect_LinkAccount to continue the flow.
    */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LoginCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.ContinuanceToken = sdkObject.ContinuanceToken
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Connect_LoginCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.
    - Parameter LocalUserId: If login was succesful, this is the Product User ID of the local player that logged in.
    - Parameter ContinuanceToken: If the user was not found with credentials passed into EOS_Connect_Login,this continuance token can be passed to either EOS_Connect_CreateUser or EOS_Connect_LinkAccount to continue the flow.
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        ContinuanceToken: EOS_ContinuanceToken?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.ContinuanceToken = ContinuanceToken
    }
}
