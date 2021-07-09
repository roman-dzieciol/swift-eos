import Foundation
import EOSSDK

/** Output parameters for the EOS_Sessions_UpdateSession function. */
public struct SwiftEOS_Sessions_UpdateSessionCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Name of the session that was created/modified  */
    public let SessionName: String?

    /** ID of the session that was created/modified  */
    public let SessionId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_UpdateSessionCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.SessionName = String(cString: sdkObject.SessionName)
        self.SessionId = String(cString: sdkObject.SessionId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_UpdateSessionCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /** Memberwise initializer */
    public init(
        ResultCode: EOS_EResult,
        SessionName: String?,
        SessionId: String?
    ) {
        self.ResultCode = ResultCode
        self.SessionName = SessionName
        self.SessionId = SessionId
    }
}
