import Foundation
import EOSSDK

/** Output parameters for the EOS_KWS_QueryPermissionsOptions Function. These parameters are received through the callback provided to EOS_KWS_QueryPermissions */
public struct SwiftEOS_KWS_QueryPermissionsCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors. */
    public let ResultCode: EOS_EResult

    /** Local user querying their permisssions */
    public let LocalUserId: EOS_ProductUserId?

    /** KWS UserId created */
    public let KWSUserId: String?

    /** Date of birth in ISO8601 form (YYYY-MM-DD) */
    public let DateOfBirth: String?

    /** Is this user a minor */
    public let bIsMinor: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_QueryPermissionsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.KWSUserId = String(cString: sdkObject.KWSUserId)
        self.DateOfBirth = String(cString: sdkObject.DateOfBirth)
        self.bIsMinor = try swiftBoolFromEosBool(sdkObject.bIsMinor)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_QueryPermissionsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.
    - Parameter LocalUserId: Local user querying their permisssions
    - Parameter KWSUserId: KWS UserId created
    - Parameter DateOfBirth: Date of birth in ISO8601 form (YYYY-MM-DD)
    - Parameter bIsMinor: Is this user a minor
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        KWSUserId: String?,
        DateOfBirth: String?,
        bIsMinor: Bool
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.KWSUserId = KWSUserId
        self.DateOfBirth = DateOfBirth
        self.bIsMinor = bIsMinor
    }
}
