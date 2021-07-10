import Foundation
import EOSSDK
public class SwiftEOS_Connect_Actor: SwiftEOSActor {
    public let Handle: EOS_HConnect

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HConnect
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Register to receive upcoming authentication expiration notifications.
     * Notification is approximately 10 minutes prior to expiration.
     * Call EOS_Connect_Login again with valid third party credentials to refresh access.
     * 
     * - Note:  must call RemoveNotifyAuthExpiration to remove the notification.
     * 
     * - Parameter Notification:  a callback that is fired when the authentication is about to expire.
     * 
     * - Returns:  handle representing the registered callback.
     */
    public func AddNotifyAuthExpiration(
        Notification: @escaping (SwiftEOS_Connect_AuthExpirationCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Connect_AuthExpirationCallbackInfo> {
        try ____AddNotifyAuthExpiration(Notification)
    }

    /**
     * Register to receive user login status updates.
     * 
     * - Note:  must call RemoveNotifyLoginStatusChanged to remove the notification.
     * 
     * - Parameter Notification:  a callback that is fired when the login status for a user changes.
     * 
     * - Returns:  handle representing the registered callback.
     */
    public func AddNotifyLoginStatusChanged(
        Notification: @escaping (SwiftEOS_Connect_LoginStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Connect_LoginStatusChangedCallbackInfo> {
        try ____AddNotifyLoginStatusChanged(Notification)
    }

    /**
     * Fetch information about an external account linked to a Product User ID.
     * On a successful call, the caller must release the returned structure using the EOS_Connect_ExternalAccountInfo_Release API.
     * 
     * - Parameter TargetUserId:  The Product User ID to look for when copying external account info from the cache. 
     * - Parameter AccountId:  External auth service account ID to look for when copying external account info from the cache. 
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo_Release
     * 
     * - Returns:  An EOS_EResult that indicates the external account data was copied into the OutExternalAccountInfo.
     *         EOS_Success if the information is available and passed out in OutExternalAccountInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the account data doesn't exist or hasn't been queried yet.
     */
    public func CopyProductUserExternalAccountByAccountId(
        TargetUserId: EOS_ProductUserId?,
        AccountId: String?
    ) throws -> SwiftEOS_Connect_ExternalAccountInfo? {
        try ____CopyProductUserExternalAccountByAccountId(.init(
                TargetUserId: TargetUserId,
                AccountId: AccountId
            ))
    }

    /**
     * Fetch information about an external account of a specific type linked to a Product User ID.
     * On a successful call, the caller must release the returned structure using the EOS_Connect_ExternalAccountInfo_Release API.
     * 
     * - Parameter TargetUserId:  The Product User ID to look for when copying external account info from the cache. 
     * - Parameter AccountIdType:  External auth service account type to look for when copying external account info from the cache. 
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo_Release
     * 
     * - Returns:  An EOS_EResult that indicates the external account data was copied into the OutExternalAccountInfo.
     *         EOS_Success if the information is available and passed out in OutExternalAccountInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the account data doesn't exist or hasn't been queried yet.
     */
    public func CopyProductUserExternalAccountByAccountType(
        TargetUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType
    ) throws -> SwiftEOS_Connect_ExternalAccountInfo? {
        try ____CopyProductUserExternalAccountByAccountType(.init(
                TargetUserId: TargetUserId,
                AccountIdType: AccountIdType
            ))
    }

    /**
     * Fetch information about an external account linked to a Product User ID.
     * On a successful call, the caller must release the returned structure using the EOS_Connect_ExternalAccountInfo_Release API.
     * 
     * - Parameter TargetUserId:  The Product User ID to look for when copying external account info from the cache. 
     * - Parameter ExternalAccountInfoIndex:  Index of the external account info to retrieve from the cache. 
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo_Release
     * 
     * - Returns:  An EOS_EResult that indicates the external account data was copied into the OutExternalAccountInfo.
     *         EOS_Success if the information is available and passed out in OutExternalAccountInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the account data doesn't exist or hasn't been queried yet.
     */
    public func CopyProductUserExternalAccountByIndex(
        TargetUserId: EOS_ProductUserId?,
        ExternalAccountInfoIndex: Int
    ) throws -> SwiftEOS_Connect_ExternalAccountInfo? {
        try ____CopyProductUserExternalAccountByIndex(.init(
                TargetUserId: TargetUserId,
                ExternalAccountInfoIndex: ExternalAccountInfoIndex
            ))
    }

    /**
     * Fetch information about a Product User, using the external account that they most recently logged in with as the reference.
     * On a successful call, the caller must release the returned structure using the EOS_Connect_ExternalAccountInfo_Release API.
     * 
     * - Parameter TargetUserId:  Product user ID to look for when copying external account info from the cache. 
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo_Release
     * 
     * - Returns:  An EOS_EResult that indicates the external account data was copied into the OutExternalAccountInfo.
     *         EOS_Success if the information is available and passed out in OutExternalAccountInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the account data doesn't exist or hasn't been queried yet.
     */
    public func CopyProductUserInfo(
        TargetUserId: EOS_ProductUserId?
    ) throws -> SwiftEOS_Connect_ExternalAccountInfo? {
        try ____CopyProductUserInfo(.init(TargetUserId: TargetUserId))
    }

    /**
     * Create a new unique pseudo-account that can be used to identify the current user profile on the local device.
     * This function is intended to be used by mobile games and PC games that wish to allow
     * a new user to start playing without requiring to login to the game using any user identity.
     * In addition to this, the Device ID feature is used to automatically login the local user
     * also when they have linked at least one external user account(s) with the local Device ID.
     * It is possible to link many devices with the same user's account keyring using the Device ID feature.
     * Linking a device later or immediately with a real user account will ensure that the player
     * will not lose their progress if they switch devices or lose the device at some point,
     * as they will be always able to login with one of their linked real accounts and also link
     * another new device with the user account associations keychain. Otherwise, without having
     * at least one permanent user account linked to the Device ID, the player would lose all of their
     * game data and progression permanently should something happen to their device or the local
     * user profile on the device.
     * After a successful one-time CreateDeviceId operation, the game can login the local user
     * automatically on subsequent game starts with EOS_Connect_Login using the EOS_ECT_DEVICEID_ACCESS_TOKEN
     * credentials type. If a Device ID already exists for the local user on the device then EOS_DuplicateNotAllowed
     * error result is returned and the caller should proceed to calling EOS_Connect_Login directly.
     * 
     * - Parameter DeviceModel:  A freeform text description identifying the device type and model,
     * which can be used in account linking management to allow the player
     * and customer support to identify different devices linked to an EOS
     * user keychain. For example 'iPhone 6S' or 'PC Windows'.
     * The input string must be in UTF-8 character format, with a maximum
     * length of 64 characters. Longer string will be silently truncated.
     * This field is required to be present.
     * - Parameter CompletionDelegate:  a callback that is fired when the create operation completes, either successfully or in error.
     */
    public func CreateDeviceId(
        DeviceModel: String?,
        CompletionDelegate: @escaping (SwiftEOS_Connect_CreateDeviceIdCallbackInfo) -> Void
    ) throws {
        try ____CreateDeviceId(
            .init(DeviceModel: DeviceModel),
            CompletionDelegate
        )
    }

    /**
     * Create an account association with the Epic Online Service as a product user given their external auth credentials.
     * 
     * - Parameter ContinuanceToken:  Continuance token from previous call to EOS_Connect_Login 
     * - Parameter CompletionDelegate:  a callback that is fired when the create operation completes, either successfully or in error.
     */
    public func CreateUser(
        ContinuanceToken: EOS_ContinuanceToken?,
        CompletionDelegate: @escaping (SwiftEOS_Connect_CreateUserCallbackInfo) -> Void
    ) throws {
        try ____CreateUser(
            .init(ContinuanceToken: ContinuanceToken),
            CompletionDelegate
        )
    }

    /**
     * Delete any existing Device ID access credentials for the current user profile on the local device.
     * The deletion is permanent and it is not possible to recover lost game data and progression
     * if the Device ID had not been linked with at least one real external user account.
     * 
     * - Parameter CompletionDelegate:  a callback that is fired when the delete operation completes, either successfully or in error
     */
    public func DeleteDeviceId(
        CompletionDelegate: @escaping (SwiftEOS_Connect_DeleteDeviceIdCallbackInfo) -> Void
    ) throws {
        try ____DeleteDeviceId(CompletionDelegate)
    }

    /**
     * Fetch a Product User ID that maps to an external account ID cached from a previous query.
     * 
     * - Parameter LocalUserId:  The Product User ID of the existing, logged-in user who is querying account mappings. 
     * - Parameter AccountIdType:  External auth service supplying the account IDs in string form. 
     * - Parameter TargetExternalUserId:  Target user to retrieve the mapping for, as an external account ID. 
     * 
     * - Returns:  The Product User ID, previously retrieved from the backend service, for the given target external account.
     */
    public func GetExternalAccountMapping(
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        TargetExternalUserId: String?
    ) throws -> EOS_ProductUserId {
        try ____GetExternalAccountMapping(.init(
                LocalUserId: LocalUserId,
                AccountIdType: AccountIdType,
                TargetExternalUserId: TargetExternalUserId
            ))
    }

    /**
     * Fetch a Product User ID that is logged in. This Product User ID is in the Epic Online Services namespace.
     * 
     * - Parameter Index:  an index into the list of logged in users. If the index is out of bounds, the returned Product User ID will be invalid.
     * 
     * - Returns:  the Product User ID associated with the index passed.
     */
    public func GetLoggedInUserByIndex(
        Index: Int
    ) throws -> EOS_ProductUserId {
        try ____GetLoggedInUserByIndex(Index)
    }

    /**
     * Fetch the number of product users that are logged in.
     * 
     * - Returns:  the number of product users logged in.
     */
    public func GetLoggedInUsersCount() throws -> Int {
        try ____GetLoggedInUsersCount()
    }

    /**
     * Fetches the login status for an Product User ID.  This Product User ID is considered logged in as long as the underlying access token has not expired.
     * 
     * - Parameter LocalUserId:  the Product User ID of the user being queried.
     * 
     * - Returns:  the enum value of a user's login status.
     */
    public func GetLoginStatus(
        LocalUserId: EOS_ProductUserId
    ) -> EOS_ELoginStatus {
        ____GetLoginStatus(LocalUserId)
    }

    /**
     * Fetch the number of linked external accounts for a Product User ID.
     * 
     * - Parameter TargetUserId:  The Product User ID to look for when getting external account info count from the cache. 
     * 
     * - SeeAlso:  EOS_Connect_CopyProductUserExternalAccountByIndex
     * 
     * - Returns:  Number of external accounts or 0 otherwise.
     */
    public func GetProductUserExternalAccountCount(
        TargetUserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetProductUserExternalAccountCount(.init(TargetUserId: TargetUserId))
    }

    /**
     * Fetch an external account ID, in string form, that maps to a given Product User ID.
     * 
     * - Parameter LocalUserId:  The Product User ID of the existing, logged-in user that is querying account mappings. 
     * - Parameter AccountIdType:  External auth service mapping to retrieve. 
     * - Parameter TargetProductUserId:  The Product User ID of the user whose information is being requested. 
     * 
     * - Returns:  An EOS_EResult that indicates the external account ID was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutUserInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the mapping doesn't exist or hasn't been queried yet.
     *         EOS_LimitExceeded if the OutBuffer is not large enough to receive the external account ID. InOutBufferLength contains the required minimum length to perform the operation successfully.
     */
    public func GetProductUserIdMapping(
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        TargetProductUserId: EOS_ProductUserId?
    ) throws -> String? {
        try ____GetProductUserIdMapping(.init(
                LocalUserId: LocalUserId,
                AccountIdType: AccountIdType,
                TargetProductUserId: TargetProductUserId
            ))
    }

    /**
     * Link a set of external auth credentials with an existing product user on the Epic Online Service.
     * 
     * - Parameter LocalUserId:  The existing logged in product user for which to link the external account described by the continuance token. 
     * - Parameter ContinuanceToken:  Continuance token from previous call to EOS_Connect_Login. 
     * - Parameter CompletionDelegate:  a callback that is fired when the link operation completes, either successfully or in error.
     */
    public func LinkAccount(
        LocalUserId: EOS_ProductUserId?,
        ContinuanceToken: EOS_ContinuanceToken?,
        CompletionDelegate: @escaping (SwiftEOS_Connect_LinkAccountCallbackInfo) -> Void
    ) throws {
        try ____LinkAccount(
            .init(
                LocalUserId: LocalUserId,
                ContinuanceToken: ContinuanceToken
            ),
            CompletionDelegate
        )
    }

    /**
     * Login/Authenticate given a valid set of external auth credentials.
     * 
     * - Parameter Credentials:  Credentials specified for a given login method 
     * - Parameter UserLoginInfo:  Additional non-authoritative information about the local user.
     * This field is required to be set and only used when authenticating the user using Apple, Google, Nintendo Account, Nintendo Service Account, Oculus or the Device ID feature login.
     * When using other identity providers, set to NULL.
     * - Parameter CompletionDelegate:  a callback that is fired when the login operation completes, either successfully or in error.
     */
    public func Login(
        Credentials: SwiftEOS_Connect_Credentials?,
        UserLoginInfo: SwiftEOS_Connect_UserLoginInfo?,
        CompletionDelegate: @escaping (SwiftEOS_Connect_LoginCallbackInfo) -> Void
    ) throws {
        try ____Login(
            .init(
                Credentials: Credentials,
                UserLoginInfo: UserLoginInfo
            ),
            CompletionDelegate
        )
    }

    /**
     * Retrieve the equivalent Product User IDs from a list of external account IDs from supported account providers.
     * The values will be cached and retrievable through EOS_Connect_GetExternalAccountMapping.
     * 
     * - Parameter LocalUserId:  The Product User ID of the existing, logged-in user who is querying account mappings. 
     * - Parameter AccountIdType:  External auth service supplying the account IDs in string form. 
     * - Parameter ExternalAccountIds:  An array of external account IDs to map to the product user ID representation. 
     * 
     * - Note: ``EOS/_tagEOS_Connect_QueryExternalAccountMappingsOptions/ExternalAccountIdCount``:
     * Number of account IDs to query. 
     * - Parameter CompletionDelegate:  a callback that is fired when the query operation completes, either successfully or in error.
     */
    public func QueryExternalAccountMappings(
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        ExternalAccountIds: [String]?,
        CompletionDelegate: @escaping (SwiftEOS_Connect_QueryExternalAccountMappingsCallbackInfo) -> Void
    ) throws {
        try ____QueryExternalAccountMappings(
            .init(
                LocalUserId: LocalUserId,
                AccountIdType: AccountIdType,
                ExternalAccountIds: ExternalAccountIds
            ),
            CompletionDelegate
        )
    }

    /**
     * Retrieve the equivalent external account mappings from a list of Product User IDs.
     * This will include data for each external account info found for the linked product IDs.
     * The values will be cached and retrievable via EOS_Connect_GetProductUserIdMapping, EOS_Connect_CopyProductUserExternalAccountByIndex,
     * EOS_Connect_CopyProductUserExternalAccountByAccountType or EOS_Connect_CopyProductUserExternalAccountByAccountId.
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo
     * - SeeAlso:  EOS_Connect_GetProductUserExternalAccountCount
     * - SeeAlso:  EOS_Connect_GetProductUserIdMapping
     * - SeeAlso:  EOS_Connect_CopyProductUserExternalAccountByIndex
     * - SeeAlso:  EOS_Connect_CopyProductUserExternalAccountByAccountType
     * - SeeAlso:  EOS_Connect_CopyProductUserExternalAccountByAccountId
     * - SeeAlso:  EOS_Connect_CopyProductUserInfo
     * 
     * - Parameter LocalUserId:  The Product User ID of the existing, logged-in user who is querying account mappings. 
     * - Parameter AccountIdType_DEPRECATED:  Deprecated - all external mappings are included in this call, it is no longer necessary to specify this value. 
     * - Parameter ProductUserIds:  An array of Product User IDs to query for the given external account representation. 
     * 
     * - Note: ``EOS/_tagEOS_Connect_QueryProductUserIdMappingsOptions/ProductUserIdCount``:
     * Number of Product User IDs to query. 
     * - Parameter CompletionDelegate:  a callback that is fired when the query operation completes, either successfully or in error.
     */
    public func QueryProductUserIdMappings(
        LocalUserId: EOS_ProductUserId?,
        AccountIdType_DEPRECATED: EOS_EExternalAccountType,
        ProductUserIds: [EOS_ProductUserId]?,
        CompletionDelegate: @escaping (SwiftEOS_Connect_QueryProductUserIdMappingsCallbackInfo) -> Void
    ) throws {
        try ____QueryProductUserIdMappings(
            .init(
                LocalUserId: LocalUserId,
                AccountIdType_DEPRECATED: AccountIdType_DEPRECATED,
                ProductUserIds: ProductUserIds
            ),
            CompletionDelegate
        )
    }

    /**
     * Transfer a Device ID pseudo-account and the product user associated with it into another
     * keychain linked with real user accounts (such as Epic Games, PlayStation(TM)Network, Xbox Live, and other).
     * This function allows transferring a product user, i.e. the local user's game progression
     * backend data from a Device ID owned keychain into a keychain with real user accounts
     * linked to it. The transfer of Device ID owned product user into a keychain of real user
     * accounts allows persisting the user's game data on the backend in the event that they
     * would lose access to the local device or otherwise switch to another device or platform.
     * This function is only applicable in the situation of where the local user first plays
     * the game using the anonymous Device ID login, then later logs in using a real user
     * account that they have also already used to play the same game or another game under the
     * same organization within Epic Online Services. In such situation, while normally the login
     * attempt with a real user account would return EOS_InvalidUser and an EOS_ContinuanceToken
     * and allow calling the EOS_Connect_LinkAccount API to link it with the Device ID's keychain,
     * instead the login operation succeeds and finds an existing user because the association
     * already exists. Because the user cannot have two product users simultaneously to play with,
     * the game should prompt the user to choose which profile to keep and which one to discard
     * permanently. Based on the user choice, the game may then proceed to transfer the Device ID
     * login into the keychain that is persistent and backed by real user accounts, and if the user
     * chooses so, move the product user as well into the destination keychain and overwrite the
     * existing previous product user with it. To clarify, moving the product user with the Device ID
     * login in this way into a persisted keychain allows to preserve the so far only locally persisted
     * game progression and thus protect the user against a case where they lose access to the device.
     * On success, the completion callback will return the preserved EOS_ProductUserId that remains
     * logged in while the discarded EOS_ProductUserId has been invalidated and deleted permanently.
     * Consecutive logins using the existing Device ID login type or the external account will
     * connect the user to the same backend data belonging to the preserved EOS_ProductUserId.
     * Example walkthrough: Cross-platform mobile game using the anonymous Device ID login.
     * For onboarding new users, the game will attempt to always automatically login the local user
     * by calling EOS_Connect_Login using the EOS_ECT_DEVICEID_ACCESS_TOKEN login type. If the local
     * Device ID credentials are not found, and the game wants a frictionless entry for the first time
     * user experience, the game will automatically call EOS_Connect_CreateDeviceId to create new
     * Device ID pseudo-account and then login the local user into it. Consecutive game starts will
     * thus automatically login the user to their locally persisted Device ID account.
     * The user starts playing anonymously using the Device ID login type and makes significant game progress.
     * Later, they login using an external account that they have already used previously for the
     * same game perhaps on another platform, or another game owned by the same organization.
     * In such case, EOS_Connect_Login will automatically login the user to their existing account
     * linking keychain and create automatically a new empty product user for this product.
     * In order for the user to use their existing previously created keychain and have the locally
     * created Device ID login reference to that keychain instead, the user's current product user
     * needs to be moved to be under that keychain so that their existing game progression will be
     * preserved. To do so, the game can call EOS_Connect_TransferDeviceIdAccount to transfer the
     * Device ID login and the product user associated with it into the other keychain that has real
     * external user account(s) linked to it. Note that it is important that the game either automatically
     * checks that the other product user does not have any meaningful progression data, or otherwise
     * will prompt the user to make the choice on which game progression to preserve and which can
     * be discarded permanently. The other product user will be discarded permanently and cannot be
     * recovered, so it is very important that the user is guided to make the right choice to avoid
     * accidental loss of all game progression.
     * 
     * - SeeAlso:  EOS_Connect_Login
     * - SeeAlso:  EOS_Connect_CreateDeviceId
     * 
     * - Parameter PrimaryLocalUserId:  The primary product user id, currently logged in, that is already associated with a real external user account (such as Epic Games, PlayStation(TM)Network, Xbox Live and other).
     * The account linking keychain that owns this product user will be preserved and receive
     * the Device ID login credentials under it.
     * - Parameter LocalDeviceUserId:  The product user id, currently logged in, that has been originally created using the anonymous local Device ID login type,
     * and whose Device ID login will be transferred to the keychain of the PrimaryLocalUserId.
     * - Parameter ProductUserIdToPreserve:  Specifies which EOS_ProductUserId (i.e. game progression) will be preserved in the operation.
     * After a successful transfer operation, subsequent logins using the same external account or
     * the same local Device ID login will return user session for the ProductUserIdToPreserve.
     * Set to either PrimaryLocalUserId or LocalDeviceUserId.
     * - Parameter CompletionDelegate:  a callback that is fired when the transfer operation completes, either successfully or in error.
     */
    public func TransferDeviceIdAccount(
        PrimaryLocalUserId: EOS_ProductUserId?,
        LocalDeviceUserId: EOS_ProductUserId?,
        ProductUserIdToPreserve: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfo) -> Void
    ) throws {
        try ____TransferDeviceIdAccount(
            .init(
                PrimaryLocalUserId: PrimaryLocalUserId,
                LocalDeviceUserId: LocalDeviceUserId,
                ProductUserIdToPreserve: ProductUserIdToPreserve
            ),
            CompletionDelegate
        )
    }

    /**
     * Unlink external auth credentials from the owning keychain of a logged in product user.
     * This function allows recovering the user from scenarios where they have accidentally proceeded to creating
     * a new product user for the local native user account, instead of linking it with an existing keychain that
     * they have previously created by playing the game (or another game owned by the organization) on another platform.
     * In such scenario, after the initial platform login and a new product user creation, the user wishes to re-login
     * using other set of external auth credentials to connect with their existing game progression data. In order to
     * allow automatic login also on the current platform, they will need to unlink the accidentally created new keychain
     * and product user and then use the EOS_Connect_Login and EOS_Connect_LinkAccount APIs to link the local native platform
     * account with that previously created existing product user and its owning keychain.
     * In another scenario, the user may simply want to disassociate the account that they have logged in with from the current
     * keychain that it is linked with, perhaps to link it against another keychain or to separate the game progressions again.
     * In order to protect against account theft, it is only possible to unlink user accounts that have been authenticated
     * and logged in to the product user in the current session. This prevents a malicious actor from gaining access to one
     * of the linked accounts and using it to remove all other accounts linked with the keychain. This also prevents a malicious
     * actor from replacing the unlinked account with their own corresponding account on the same platform, as the unlinking
     * operation will ensure that any existing authentication session cannot be used to re-link and overwrite the entry without
     * authenticating with one of the other linked accounts in the keychain. These restrictions limit the potential attack surface
     * related to account theft scenarios.
     * 
     * - Parameter LocalUserId:  Existing logged in product user that is subject for the unlinking operation.
     * The external account that was used to login to the product user will be unlinked from the owning keychain.
     * On a successful operation, the product user will be logged out as the external account used to authenticate the user was unlinked from the owning keychain.
     * - Parameter CompletionDelegate:  a callback that is fired when the unlink operation completes, either successfully or in error.
     */
    public func UnlinkAccount(
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Connect_UnlinkAccountCallbackInfo) -> Void
    ) throws {
        try ____UnlinkAccount(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Connect_Actor {

    /**
     * Register to receive upcoming authentication expiration notifications.
     * Notification is approximately 10 minutes prior to expiration.
     * Call EOS_Connect_Login again with valid third party credentials to refresh access.
     * 
     * - Note:  must call RemoveNotifyAuthExpiration to remove the notification.
     * 
     * - Parameter Notification:  a callback that is fired when the authentication is about to expire.
     * 
     * - Returns:  handle representing the registered callback.
     */
    private func ____AddNotifyAuthExpiration(
        _ Notification: @escaping (SwiftEOS_Connect_AuthExpirationCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Connect_AuthExpirationCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: Notification,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Connect_AddNotifyAuthExpirationOptions(), managedBy: pointerManager) { Options in
                        EOS_Connect_AddNotifyAuthExpiration(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Connect_AuthExpirationCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Connect_RemoveNotifyAuthExpiration(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Register to receive user login status updates.
     * 
     * - Note:  must call RemoveNotifyLoginStatusChanged to remove the notification.
     * 
     * - Parameter Notification:  a callback that is fired when the login status for a user changes.
     * 
     * - Returns:  handle representing the registered callback.
     */
    private func ____AddNotifyLoginStatusChanged(
        _ Notification: @escaping (SwiftEOS_Connect_LoginStatusChangedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_Connect_LoginStatusChangedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: Notification,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Connect_AddNotifyLoginStatusChangedOptions(), managedBy: pointerManager) { Options in
                        EOS_Connect_AddNotifyLoginStatusChanged(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_Connect_LoginStatusChangedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_Connect_RemoveNotifyLoginStatusChanged(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
     * Fetch information about an external account linked to a Product User ID.
     * On a successful call, the caller must release the returned structure using the EOS_Connect_ExternalAccountInfo_Release API.
     * 
     * - Parameter Options:  Structure containing the target external account ID.
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo_Release
     * 
     * - Returns:  An EOS_EResult that indicates the external account data was copied into the OutExternalAccountInfo.
     *         EOS_Success if the information is available and passed out in OutExternalAccountInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the account data doesn't exist or hasn't been queried yet.
     */
    private func ____CopyProductUserExternalAccountByAccountId(
        _ Options: SwiftEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions
    ) throws -> SwiftEOS_Connect_ExternalAccountInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutExternalAccountInfo in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Connect_CopyProductUserExternalAccountByAccountId(
                                Handle,
                                Options,
                                OutExternalAccountInfo
                            ) } } },
                release: EOS_Connect_ExternalAccountInfo_Release
            ) }
    }

    /**
     * Fetch information about an external account of a specific type linked to a Product User ID.
     * On a successful call, the caller must release the returned structure using the EOS_Connect_ExternalAccountInfo_Release API.
     * 
     * - Parameter Options:  Structure containing the target external account type.
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo_Release
     * 
     * - Returns:  An EOS_EResult that indicates the external account data was copied into the OutExternalAccountInfo.
     *         EOS_Success if the information is available and passed out in OutExternalAccountInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the account data doesn't exist or hasn't been queried yet.
     */
    private func ____CopyProductUserExternalAccountByAccountType(
        _ Options: SwiftEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions
    ) throws -> SwiftEOS_Connect_ExternalAccountInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutExternalAccountInfo in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Connect_CopyProductUserExternalAccountByAccountType(
                                Handle,
                                Options,
                                OutExternalAccountInfo
                            ) } } },
                release: EOS_Connect_ExternalAccountInfo_Release
            ) }
    }

    /**
     * Fetch information about an external account linked to a Product User ID.
     * On a successful call, the caller must release the returned structure using the EOS_Connect_ExternalAccountInfo_Release API.
     * 
     * - Parameter Options:  Structure containing the target index.
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo_Release
     * 
     * - Returns:  An EOS_EResult that indicates the external account data was copied into the OutExternalAccountInfo.
     *         EOS_Success if the information is available and passed out in OutExternalAccountInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the account data doesn't exist or hasn't been queried yet.
     */
    private func ____CopyProductUserExternalAccountByIndex(
        _ Options: SwiftEOS_Connect_CopyProductUserExternalAccountByIndexOptions
    ) throws -> SwiftEOS_Connect_ExternalAccountInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutExternalAccountInfo in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Connect_CopyProductUserExternalAccountByIndex(
                                Handle,
                                Options,
                                OutExternalAccountInfo
                            ) } } },
                release: EOS_Connect_ExternalAccountInfo_Release
            ) }
    }

    /**
     * Fetch information about a Product User, using the external account that they most recently logged in with as the reference.
     * On a successful call, the caller must release the returned structure using the EOS_Connect_ExternalAccountInfo_Release API.
     * 
     * - Parameter Options:  Structure containing the target external account ID.
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo_Release
     * 
     * - Returns:  An EOS_EResult that indicates the external account data was copied into the OutExternalAccountInfo.
     *         EOS_Success if the information is available and passed out in OutExternalAccountInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the account data doesn't exist or hasn't been queried yet.
     */
    private func ____CopyProductUserInfo(
        _ Options: SwiftEOS_Connect_CopyProductUserInfoOptions
    ) throws -> SwiftEOS_Connect_ExternalAccountInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutExternalAccountInfo in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Connect_CopyProductUserInfo(
                                Handle,
                                Options,
                                OutExternalAccountInfo
                            ) } } },
                release: EOS_Connect_ExternalAccountInfo_Release
            ) }
    }

    /**
     * Create a new unique pseudo-account that can be used to identify the current user profile on the local device.
     * This function is intended to be used by mobile games and PC games that wish to allow
     * a new user to start playing without requiring to login to the game using any user identity.
     * In addition to this, the Device ID feature is used to automatically login the local user
     * also when they have linked at least one external user account(s) with the local Device ID.
     * It is possible to link many devices with the same user's account keyring using the Device ID feature.
     * Linking a device later or immediately with a real user account will ensure that the player
     * will not lose their progress if they switch devices or lose the device at some point,
     * as they will be always able to login with one of their linked real accounts and also link
     * another new device with the user account associations keychain. Otherwise, without having
     * at least one permanent user account linked to the Device ID, the player would lose all of their
     * game data and progression permanently should something happen to their device or the local
     * user profile on the device.
     * After a successful one-time CreateDeviceId operation, the game can login the local user
     * automatically on subsequent game starts with EOS_Connect_Login using the EOS_ECT_DEVICEID_ACCESS_TOKEN
     * credentials type. If a Device ID already exists for the local user on the device then EOS_DuplicateNotAllowed
     * error result is returned and the caller should proceed to calling EOS_Connect_Login directly.
     * 
     * - Parameter Options:  structure containing operation input parameters.
     * - Parameter CompletionDelegate:  a callback that is fired when the create operation completes, either successfully or in error.
     */
    private func ____CreateDeviceId(
        _ Options: SwiftEOS_Connect_CreateDeviceIdOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_CreateDeviceIdCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Connect_CreateDeviceId(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_CreateDeviceIdCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Create an account association with the Epic Online Service as a product user given their external auth credentials.
     * 
     * - Parameter Options:  structure containing a continuance token from a "user not found" response during Login (always try login first).
     * - Parameter CompletionDelegate:  a callback that is fired when the create operation completes, either successfully or in error.
     */
    private func ____CreateUser(
        _ Options: SwiftEOS_Connect_CreateUserOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_CreateUserCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Connect_CreateUser(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_CreateUserCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Delete any existing Device ID access credentials for the current user profile on the local device.
     * The deletion is permanent and it is not possible to recover lost game data and progression
     * if the Device ID had not been linked with at least one real external user account.
     * 
     * - Parameter CompletionDelegate:  a callback that is fired when the delete operation completes, either successfully or in error
     */
    private func ____DeleteDeviceId(
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_DeleteDeviceIdCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_Connect_DeleteDeviceIdOptions(), managedBy: pointerManager) { Options in
                    EOS_Connect_DeleteDeviceId(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_DeleteDeviceIdCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Fetch a Product User ID that maps to an external account ID cached from a previous query.
     * 
     * - Parameter Options:  structure containing the local user and target external account ID.
     * 
     * - Returns:  The Product User ID, previously retrieved from the backend service, for the given target external account.
     */
    private func ____GetExternalAccountMapping(
        _ Options: SwiftEOS_Connect_GetExternalAccountMappingsOptions
    ) throws -> EOS_ProductUserId {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_Connect_GetExternalAccountMapping(
                    Handle,
                    Options
                ) } }
    }

    /**
     * Fetch a Product User ID that is logged in. This Product User ID is in the Epic Online Services namespace.
     * 
     * - Parameter Index:  an index into the list of logged in users. If the index is out of bounds, the returned Product User ID will be invalid.
     * 
     * - Returns:  the Product User ID associated with the index passed.
     */
    private func ____GetLoggedInUserByIndex(
        _ Index: Int
    ) throws -> EOS_ProductUserId {
        try withPointerManager { pointerManager in
            try withTransformed(
                value: Index,
                transform: { Index in
                    try safeNumericCast(exactly: Index) },
                nested: { Index in
                    EOS_Connect_GetLoggedInUserByIndex(
                        Handle,
                        Index
                    ) }
            ) }
    }

    /**
     * Fetch the number of product users that are logged in.
     * 
     * - Returns:  the number of product users logged in.
     */
    private func ____GetLoggedInUsersCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    EOS_Connect_GetLoggedInUsersCount(Handle) },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetches the login status for an Product User ID.  This Product User ID is considered logged in as long as the underlying access token has not expired.
     * 
     * - Parameter LocalUserId:  the Product User ID of the user being queried.
     * 
     * - Returns:  the enum value of a user's login status.
     */
    private func ____GetLoginStatus(
        _ LocalUserId: EOS_ProductUserId
    ) -> EOS_ELoginStatus {
        withPointerManager { pointerManager in
            EOS_Connect_GetLoginStatus(
                Handle,
                LocalUserId
            ) }
    }

    /**
     * Fetch the number of linked external accounts for a Product User ID.
     * 
     * - Parameter Options:  The Options associated with retrieving the external account info count.
     * 
     * - SeeAlso:  EOS_Connect_CopyProductUserExternalAccountByIndex
     * 
     * - Returns:  Number of external accounts or 0 otherwise.
     */
    private func ____GetProductUserExternalAccountCount(
        _ Options: SwiftEOS_Connect_GetProductUserExternalAccountCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Connect_GetProductUserExternalAccountCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch an external account ID, in string form, that maps to a given Product User ID.
     * 
     * - Parameter Options:  structure containing the local user and target Product User ID.
     * 
     * - Returns:  An EOS_EResult that indicates the external account ID was copied into the OutBuffer.
     *         EOS_Success if the information is available and passed out in OutUserInfo.
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter.
     *         EOS_NotFound if the mapping doesn't exist or hasn't been queried yet.
     *         EOS_LimitExceeded if the OutBuffer is not large enough to receive the external account ID. InOutBufferLength contains the required minimum length to perform the operation successfully.
     */
    private func ____GetProductUserIdMapping(
        _ Options: SwiftEOS_Connect_GetProductUserIdMappingOptions
    ) throws -> String? {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Connect_GetProductUserIdMapping(
                            Handle,
                            Options,
                            OutBuffer,
                            InOutBufferLength
                        ) } } } }
    }

    /**
     * Link a set of external auth credentials with an existing product user on the Epic Online Service.
     * 
     * - Parameter Options:  structure containing a continuance token from a "user not found" response during Login (always try login first) and a currently logged in user not already associated with this external auth provider.
     * - Parameter CompletionDelegate:  a callback that is fired when the link operation completes, either successfully or in error.
     */
    private func ____LinkAccount(
        _ Options: SwiftEOS_Connect_LinkAccountOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_LinkAccountCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Connect_LinkAccount(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_LinkAccountCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Login/Authenticate given a valid set of external auth credentials.
     * 
     * - Parameter Options:  structure containing the external account credentials and type to use during the login operation.
     * - Parameter CompletionDelegate:  a callback that is fired when the login operation completes, either successfully or in error.
     */
    private func ____Login(
        _ Options: SwiftEOS_Connect_LoginOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_LoginCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Connect_Login(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_LoginCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Retrieve the equivalent Product User IDs from a list of external account IDs from supported account providers.
     * The values will be cached and retrievable through EOS_Connect_GetExternalAccountMapping.
     * 
     * - Parameter Options:  structure containing a list of external account IDs, in string form, to query for the Product User ID representation.
     * - Parameter CompletionDelegate:  a callback that is fired when the query operation completes, either successfully or in error.
     */
    private func ____QueryExternalAccountMappings(
        _ Options: SwiftEOS_Connect_QueryExternalAccountMappingsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_QueryExternalAccountMappingsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Connect_QueryExternalAccountMappings(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_QueryExternalAccountMappingsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Retrieve the equivalent external account mappings from a list of Product User IDs.
     * This will include data for each external account info found for the linked product IDs.
     * The values will be cached and retrievable via EOS_Connect_GetProductUserIdMapping, EOS_Connect_CopyProductUserExternalAccountByIndex,
     * EOS_Connect_CopyProductUserExternalAccountByAccountType or EOS_Connect_CopyProductUserExternalAccountByAccountId.
     * 
     * - SeeAlso:  EOS_Connect_ExternalAccountInfo
     * - SeeAlso:  EOS_Connect_GetProductUserExternalAccountCount
     * - SeeAlso:  EOS_Connect_GetProductUserIdMapping
     * - SeeAlso:  EOS_Connect_CopyProductUserExternalAccountByIndex
     * - SeeAlso:  EOS_Connect_CopyProductUserExternalAccountByAccountType
     * - SeeAlso:  EOS_Connect_CopyProductUserExternalAccountByAccountId
     * - SeeAlso:  EOS_Connect_CopyProductUserInfo
     * 
     * - Parameter Options:  structure containing a list of Product User IDs to query for the external account representation.
     * - Parameter CompletionDelegate:  a callback that is fired when the query operation completes, either successfully or in error.
     */
    private func ____QueryProductUserIdMappings(
        _ Options: SwiftEOS_Connect_QueryProductUserIdMappingsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_QueryProductUserIdMappingsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Connect_QueryProductUserIdMappings(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_QueryProductUserIdMappingsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Transfer a Device ID pseudo-account and the product user associated with it into another
     * keychain linked with real user accounts (such as Epic Games, PlayStation(TM)Network, Xbox Live, and other).
     * This function allows transferring a product user, i.e. the local user's game progression
     * backend data from a Device ID owned keychain into a keychain with real user accounts
     * linked to it. The transfer of Device ID owned product user into a keychain of real user
     * accounts allows persisting the user's game data on the backend in the event that they
     * would lose access to the local device or otherwise switch to another device or platform.
     * This function is only applicable in the situation of where the local user first plays
     * the game using the anonymous Device ID login, then later logs in using a real user
     * account that they have also already used to play the same game or another game under the
     * same organization within Epic Online Services. In such situation, while normally the login
     * attempt with a real user account would return EOS_InvalidUser and an EOS_ContinuanceToken
     * and allow calling the EOS_Connect_LinkAccount API to link it with the Device ID's keychain,
     * instead the login operation succeeds and finds an existing user because the association
     * already exists. Because the user cannot have two product users simultaneously to play with,
     * the game should prompt the user to choose which profile to keep and which one to discard
     * permanently. Based on the user choice, the game may then proceed to transfer the Device ID
     * login into the keychain that is persistent and backed by real user accounts, and if the user
     * chooses so, move the product user as well into the destination keychain and overwrite the
     * existing previous product user with it. To clarify, moving the product user with the Device ID
     * login in this way into a persisted keychain allows to preserve the so far only locally persisted
     * game progression and thus protect the user against a case where they lose access to the device.
     * On success, the completion callback will return the preserved EOS_ProductUserId that remains
     * logged in while the discarded EOS_ProductUserId has been invalidated and deleted permanently.
     * Consecutive logins using the existing Device ID login type or the external account will
     * connect the user to the same backend data belonging to the preserved EOS_ProductUserId.
     * Example walkthrough: Cross-platform mobile game using the anonymous Device ID login.
     * For onboarding new users, the game will attempt to always automatically login the local user
     * by calling EOS_Connect_Login using the EOS_ECT_DEVICEID_ACCESS_TOKEN login type. If the local
     * Device ID credentials are not found, and the game wants a frictionless entry for the first time
     * user experience, the game will automatically call EOS_Connect_CreateDeviceId to create new
     * Device ID pseudo-account and then login the local user into it. Consecutive game starts will
     * thus automatically login the user to their locally persisted Device ID account.
     * The user starts playing anonymously using the Device ID login type and makes significant game progress.
     * Later, they login using an external account that they have already used previously for the
     * same game perhaps on another platform, or another game owned by the same organization.
     * In such case, EOS_Connect_Login will automatically login the user to their existing account
     * linking keychain and create automatically a new empty product user for this product.
     * In order for the user to use their existing previously created keychain and have the locally
     * created Device ID login reference to that keychain instead, the user's current product user
     * needs to be moved to be under that keychain so that their existing game progression will be
     * preserved. To do so, the game can call EOS_Connect_TransferDeviceIdAccount to transfer the
     * Device ID login and the product user associated with it into the other keychain that has real
     * external user account(s) linked to it. Note that it is important that the game either automatically
     * checks that the other product user does not have any meaningful progression data, or otherwise
     * will prompt the user to make the choice on which game progression to preserve and which can
     * be discarded permanently. The other product user will be discarded permanently and cannot be
     * recovered, so it is very important that the user is guided to make the right choice to avoid
     * accidental loss of all game progression.
     * 
     * - SeeAlso:  EOS_Connect_Login
     * - SeeAlso:  EOS_Connect_CreateDeviceId
     * 
     * - Parameter Options:  structure containing the logged in product users and specifying which one will be preserved.
     * - Parameter CompletionDelegate:  a callback that is fired when the transfer operation completes, either successfully or in error.
     */
    private func ____TransferDeviceIdAccount(
        _ Options: SwiftEOS_Connect_TransferDeviceIdAccountOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Connect_TransferDeviceIdAccount(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_TransferDeviceIdAccountCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Unlink external auth credentials from the owning keychain of a logged in product user.
     * This function allows recovering the user from scenarios where they have accidentally proceeded to creating
     * a new product user for the local native user account, instead of linking it with an existing keychain that
     * they have previously created by playing the game (or another game owned by the organization) on another platform.
     * In such scenario, after the initial platform login and a new product user creation, the user wishes to re-login
     * using other set of external auth credentials to connect with their existing game progression data. In order to
     * allow automatic login also on the current platform, they will need to unlink the accidentally created new keychain
     * and product user and then use the EOS_Connect_Login and EOS_Connect_LinkAccount APIs to link the local native platform
     * account with that previously created existing product user and its owning keychain.
     * In another scenario, the user may simply want to disassociate the account that they have logged in with from the current
     * keychain that it is linked with, perhaps to link it against another keychain or to separate the game progressions again.
     * In order to protect against account theft, it is only possible to unlink user accounts that have been authenticated
     * and logged in to the product user in the current session. This prevents a malicious actor from gaining access to one
     * of the linked accounts and using it to remove all other accounts linked with the keychain. This also prevents a malicious
     * actor from replacing the unlinked account with their own corresponding account on the same platform, as the unlinking
     * operation will ensure that any existing authentication session cannot be used to re-link and overwrite the entry without
     * authenticating with one of the other linked accounts in the keychain. These restrictions limit the potential attack surface
     * related to account theft scenarios.
     * 
     * - Parameter Options:  structure containing operation input parameters.
     * - Parameter CompletionDelegate:  a callback that is fired when the unlink operation completes, either successfully or in error.
     */
    private func ____UnlinkAccount(
        _ Options: SwiftEOS_Connect_UnlinkAccountOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Connect_UnlinkAccountCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Connect_UnlinkAccount(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Connect_UnlinkAccountCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
