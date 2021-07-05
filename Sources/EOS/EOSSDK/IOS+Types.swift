import Foundation
import EOSSDK

/** Options for initializing login for IOS. */
public struct SwiftEOS_IOS_Auth_CredentialsOptions {

    /** API version of EOS_IOS_Auth_CredentialsOptions.  */
    public let ApiVersion: Int32

    /**
     * When calling EOS_Auth_Login
     *  NSObject that implements the ASWebAuthenticationPresentationContextProviding protocol,
     *  typically this is added to the applications UIViewController.
     *  Required for iOS 13+ only, for earlier versions this value must be a nullptr.
     *  Object must be retained and cast to a void* using: (void*)CFBridgingRetain(presentationContextProviding)
     *  EOSSDK will release this bridged object when the value is consumed for iOS 13+.
     */
    public let PresentationContextProviding: UnsafeMutableRawPointer?

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_IOS_AUTH_CREDENTIALSOPTIONS_API_LATEST,
        PresentationContextProviding: UnsafeMutableRawPointer?
    ) {
        self.ApiVersion = ApiVersion
        self.PresentationContextProviding = PresentationContextProviding
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_IOS_Auth_CredentialsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PresentationContextProviding = sdkObject.PresentationContextProviding
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_IOS_Auth_CredentialsOptions {
        _tagEOS_IOS_Auth_CredentialsOptions(
            ApiVersion: ApiVersion,
            PresentationContextProviding: /* TODO: */ PresentationContextProviding
        )
    }
}
