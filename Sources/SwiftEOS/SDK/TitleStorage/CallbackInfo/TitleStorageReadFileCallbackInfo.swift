import Foundation
import EOSSDK


/** Structure containing the result of a read file request */
public struct SwiftEOS_TitleStorage_ReadFileCallbackInfo {

    /** Result code for the operation. `EOS_Success` is returned for a successful request, other codes indicate an error */
    public let ResultCode: EOS_EResult

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start) */
    public let LocalUserId: EOS_ProductUserId?

    /** The filename of the file that has been finished reading */
    public let Filename: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_ReadFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = stringFromOptionalCStringPointer(sdkObject.Filename)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_TitleStorage_ReadFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: Result code for the operation. `EOS_Success` is returned for a successful request, other codes indicate an error
    - Parameter LocalUserId: Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)
    - Parameter Filename: The filename of the file that has been finished reading
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
