import Foundation
import EOSSDK

/** Options for initializing login for IOS. */
public struct SwiftEOS_IOS_Auth_CredentialsOptions {

    /** API version of EOS_IOS_Auth_CredentialsOptions. */
    public let ApiVersion: Int32

    /**
    When calling EOS_Auth_Login
    NSObject that implements the ASWebAuthenticationPresentationContextProviding protocol,
    typically this is added to the applications UIViewController.
    Required for iOS 13+ only, for earlier versions this value must be a nullptr.
    Object must be retained and cast to a void* using: (void*)CFBridgingRetain(presentationContextProviding)
    EOSSDK will release this bridged object when the value is consumed for iOS 13+.
    */
    public let PresentationContextProviding: UnsafeMutableRawPointer?

    /**
    Memberwise initializer

    - Parameter ApiVersion: API version of EOS_IOS_Auth_CredentialsOptions.
    - Parameter PresentationContextProviding: When calling EOS_Auth_Login
    NSObject that implements the ASWebAuthenticationPresentationContextProviding protocol,
    typically this is added to the applications UIViewController.
    Required for iOS 13+ only, for earlier versions this value must be a nullptr.
    Object must be retained and cast to a void* using: (void*)CFBridgingRetain(presentationContextProviding)
    EOSSDK will release this bridged object when the value is consumed for iOS 13+.
    */
    public init(
        ApiVersion: Int32 = EOS_IOS_AUTH_CREDENTIALSOPTIONS_API_LATEST,
        PresentationContextProviding: UnsafeMutableRawPointer?
    ) {
        self.ApiVersion = ApiVersion
        self.PresentationContextProviding = PresentationContextProviding
    }
}
