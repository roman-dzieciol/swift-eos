import Foundation
import EOSSDK

/** Output parameters for the EOS_KWS_CreateUserOptions Function. These parameters are received through the callback provided to EOS_KWS_CreateUser */
public struct SwiftEOS_KWS_CreateUserCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Local user that created a KWS entry  */
    public let LocalUserId: EOS_ProductUserId?

    /** KWS UserId created  */
    public let KWSUserId: String?

    /** Is this user a minor  */
    public let bIsMinor: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_CreateUserCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.KWSUserId = String(cString: sdkObject.KWSUserId)
        self.bIsMinor = try swiftBoolFromEosBool(sdkObject.bIsMinor)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_CreateUserCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. 
     * - Parameter LocalUserId:  Local user that created a KWS entry 
     * - Parameter KWSUserId:  KWS UserId created 
     * - Parameter bIsMinor:  Is this user a minor 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        KWSUserId: String?,
        bIsMinor: Bool
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.KWSUserId = KWSUserId
        self.bIsMinor = bIsMinor
    }
}
