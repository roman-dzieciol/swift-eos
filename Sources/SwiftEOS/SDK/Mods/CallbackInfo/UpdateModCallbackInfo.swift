import Foundation
import EOSSDK

/** Output parameters for the `EOS_Mods_UpdateMod` Function. These parameters are received through the callback provided to `EOS_Mods_UpdateMod` */
public struct SwiftEOS_Mods_UpdateModCallbackInfo {

    /** Result code for the operation. `EOS_Success` is returned if the request to update was successfull, otherwise one of the error codes is returned. */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user for which mod update was requested */
    public let LocalUserId: EOS_EpicAccountId?

    /** Mod for which update was requested */
    public let Mod: SwiftEOS_Mod_Identifier?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_UpdateModCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod.pointee)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Mods_UpdateModCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: Result code for the operation. `EOS_Success` is returned if the request to update was successfull, otherwise one of the error codes is returned.
    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which mod update was requested
    - Parameter Mod: Mod for which update was requested
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.Mod = Mod
    }
}
