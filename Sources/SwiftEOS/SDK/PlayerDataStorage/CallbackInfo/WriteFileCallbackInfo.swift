import Foundation
import EOSSDK


/** The result information for a request to write data to a file */
public struct SwiftEOS_PlayerDataStorage_WriteFileCallbackInfo {

    /** Result code for the operation. `EOS_Success` is returned for a successful request, other codes indicate an error */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the local user who initiated this request */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name that is being written to */
    public let Filename: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_WriteFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = stringFromOptionalCStringPointer(sdkObject.Filename)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_PlayerDataStorage_WriteFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: Result code for the operation. `EOS_Success` is returned for a successful request, other codes indicate an error
    - Parameter LocalUserId: The Product User ID of the local user who initiated this request
    - Parameter Filename: The file name that is being written to
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.Filename = Filename
    }
}
