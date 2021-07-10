import Foundation
import EOSSDK

/** Input parameters for the EOS_Auth_LinkAccount function. */
public struct SwiftEOS_Auth_LinkAccountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_LINKACCOUNT_API_LATEST. */
    public let ApiVersion: Int32

    /** Combination of the enumeration flags to specify how the account linking operation will be performed. */
    public let LinkAccountFlags: EOS_ELinkAccountFlags

    /**
    Continuance token received from a previous call to the EOS_Auth_Login API.

    A continuance token is received in the case when the external account used for login was not found to be linked
    against any existing Epic Account. In such case, the application needs to proceed with an account linking operation in which case
    the user is first asked to create a new account or login into their existing Epic Account, and then link their external account to it.
    Alternatively, the application may suggest the user to login using another external account that they have already linked to their existing Epic Account.
    In this flow, the external account is typically the currently logged in local platform user account.
    It can also be another external user account that the user is offered to login with.
    */
    public let ContinuanceToken: EOS_ContinuanceToken?

    /**
    The Epic Online Services Account ID of the logged in local user whose Epic Account will be linked with the local Nintendo NSA ID Account. By default set to NULL.

    This parameter is only used and required to be set when EOS_ELinkAccountFlags::EOS_LA_NintendoNsaId is specified.
    Otherwise, set to NULL, as the standard account linking and login flow using continuance token will handle logging in the user to their Epic Account.
    */
    public let LocalUserId: EOS_EpicAccountId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_LinkAccountOptions {
        _tagEOS_Auth_LinkAccountOptions(
            ApiVersion: ApiVersion,
            LinkAccountFlags: LinkAccountFlags,
            ContinuanceToken: ContinuanceToken,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LinkAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LinkAccountFlags = sdkObject.LinkAccountFlags
        self.ContinuanceToken = sdkObject.ContinuanceToken
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_AUTH_LINKACCOUNT_API_LATEST.
    - Parameter LinkAccountFlags: Combination of the enumeration flags to specify how the account linking operation will be performed.
    - Parameter ContinuanceToken: Continuance token received from a previous call to the EOS_Auth_Login API.
    A continuance token is received in the case when the external account used for login was not found to be linked
    against any existing Epic Account. In such case, the application needs to proceed with an account linking operation in which case
    the user is first asked to create a new account or login into their existing Epic Account, and then link their external account to it.
    Alternatively, the application may suggest the user to login using another external account that they have already linked to their existing Epic Account.
    In this flow, the external account is typically the currently logged in local platform user account.
    It can also be another external user account that the user is offered to login with.
    - Parameter LocalUserId: The Epic Online Services Account ID of the logged in local user whose Epic Account will be linked with the local Nintendo NSA ID Account. By default set to NULL.
    This parameter is only used and required to be set when EOS_ELinkAccountFlags::EOS_LA_NintendoNsaId is specified.
    Otherwise, set to NULL, as the standard account linking and login flow using continuance token will handle logging in the user to their Epic Account.
    */
    public init(
        ApiVersion: Int32 = EOS_AUTH_LINKACCOUNT_API_LATEST,
        LinkAccountFlags: EOS_ELinkAccountFlags,
        ContinuanceToken: EOS_ContinuanceToken?,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LinkAccountFlags = LinkAccountFlags
        self.ContinuanceToken = ContinuanceToken
        self.LocalUserId = LocalUserId
    }
}
