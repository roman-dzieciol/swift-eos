import Foundation
import EOSSDK

/** Structure containing information about the local network NAT type */
public struct SwiftEOS_P2P_OnQueryNATTypeCompleteInfo {

    /** Result code for the operation. EOS_Success is returned for a successful query, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The queried NAT type  */
    public let NATType: EOS_ENATType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_OnQueryNATTypeCompleteInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.NATType = sdkObject.NATType
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_P2P_OnQueryNATTypeCompleteInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
     * Memberwise initializer
     * - Parameter ResultCode:  Result code for the operation. EOS_Success is returned for a successful query, other codes indicate an error 
     * - Parameter NATType:  The queried NAT type 
     */
    public init(
        ResultCode: EOS_EResult,
        NATType: EOS_ENATType
    ) {
        self.ResultCode = ResultCode
        self.NATType = NATType
    }
}
