import Foundation
import EOSSDK

/** Output parameters for the EOS_Mods_EnumerateMods Function. These parameters are received through the callback provided to EOS_Mods_EnumerateMods */
public struct SwiftEOS_Mods_EnumerateModsCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if the enumeration was successfull, otherwise one of the error codes is returned.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user for which mod enumeration was requested  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Type of the enumerated mods  */
    public let `Type`: EOS_EModEnumerationType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_EnumerateModsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.`Type` = sdkObject.`Type`
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Mods_EnumerateModsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  Result code for the operation. EOS_Success is returned if the enumeration was successfull, otherwise one of the error codes is returned. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user for which mod enumeration was requested 
     * - Parameter `Type`:  Type of the enumerated mods 
     */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        `Type`: EOS_EModEnumerationType
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.`Type` = `Type`
    }
}
