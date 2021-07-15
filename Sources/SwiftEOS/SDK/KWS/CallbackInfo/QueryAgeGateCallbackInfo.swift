import Foundation
import EOSSDK


/** Output parameters for the `EOS_KWS_QueryAgeGate` Function. These parameters are received through the callback provided to `EOS_KWS_QueryAgeGate` */
public struct SwiftEOS_KWS_QueryAgeGateCallbackInfo {

    /** The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors. */
    public let ResultCode: EOS_EResult

    /** Country code determined for this request based on the local client's ip address that the backend resolves */
    public let CountryCode: String?

    /** Age of consent in the given country */
    public let AgeOfConsent: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_KWS_QueryAgeGateCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.CountryCode = stringFromOptionalCStringPointer(sdkObject.CountryCode)
        self.AgeOfConsent = try safeNumericCast(exactly: sdkObject.AgeOfConsent)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_KWS_QueryAgeGateCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors.
    - Parameter CountryCode: Country code determined for this request based on the local client's ip address that the backend resolves
    - Parameter AgeOfConsent: Age of consent in the given country
    */
    public init(
        ResultCode: EOS_EResult,
        CountryCode: String?,
        AgeOfConsent: Int
    ) {
        self.ResultCode = ResultCode
        self.CountryCode = CountryCode
        self.AgeOfConsent = AgeOfConsent
    }
}
