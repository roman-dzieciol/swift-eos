import Foundation
import EOSSDK
public class SwiftEOS_UserInfo_Actor: SwiftEOSActor {
    public let Handle: EOS_HUserInfo

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HUserInfo
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Fetches an external user info for a given external account ID.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter TargetUserId: The Epic Online Services Account ID of the player whose information is being retrieved
    - Parameter AccountId: The external account ID associated with the (external) user info to retrieve from the cache; cannot be null
    - SeeAlso: EOS_UserInfo_ExternalUserInfo_Release
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter EOS_NotFound if the external user info is not found
    - Returns: The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
    */
    public func CopyExternalUserInfoByAccountId(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        AccountId: String?
    ) throws -> SwiftEOS_UserInfo_ExternalUserInfo? {
        try ____CopyExternalUserInfoByAccountId(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId,
                AccountId: AccountId
            ))
    }

    /**
    Fetches an external user info for a given external account type.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter TargetUserId: The Epic Online Services Account ID of the player whose information is being retrieved
    - Parameter AccountType: Account type of the external user info to retrieve from the cache
    - SeeAlso: EOS_UserInfo_ExternalUserInfo_Release
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter EOS_NotFound if the external user info is not found
    - Returns: The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
    */
    public func CopyExternalUserInfoByAccountType(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        AccountType: EOS_EExternalAccountType
    ) throws -> SwiftEOS_UserInfo_ExternalUserInfo? {
        try ____CopyExternalUserInfoByAccountType(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId,
                AccountType: AccountType
            ))
    }

    /**
    Fetches an external user info from a given index.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter TargetUserId: The Epic Online Services Account ID of the player whose information is being retrieved
    - Parameter Index: Index of the external user info to retrieve from the cache
    - SeeAlso: EOS_UserInfo_ExternalUserInfo_Release
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter EOS_NotFound if the external user info is not found
    - Returns: The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
    */
    public func CopyExternalUserInfoByIndex(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        Index: Int
    ) throws -> SwiftEOS_UserInfo_ExternalUserInfo? {
        try ____CopyExternalUserInfoByIndex(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId,
                Index: Index
            ))
    }

    /**
    EOS_UserInfo_CopyUserInfo is used to immediately retrieve a copy of user information based on an Epic Online Services Account ID, cached by a previous call to EOS_UserInfo_QueryUserInfo.If the call returns an EOS_Success result, the out parameter, OutUserInfo, must be passed to EOS_UserInfo_Release to release the memory associated with it.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter TargetUserId: The Epic Online Services Account ID of the player whose information is being retrieved
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter EOS_IncompatibleVersion if the API version passed in is incorrect EOS_NotFound if the user info is not locally cached. The information must have been previously cached by a call to EOS_UserInfo_QueryUserInfo
    - SeeAlso: EOS_UserInfo
    - SeeAlso: EOS_UserInfo_CopyUserInfoOptions
    - SeeAlso: EOS_UserInfo_Release
    - Returns: out parameter used to receive the EOS_UserInfo structure.
    */
    public func CopyUserInfo(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) throws -> SwiftEOS_UserInfo? {
        try ____CopyUserInfo(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ))
    }

    /**
    Fetch the number of external user infos that are cached locally.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter TargetUserId: The Epic Online Services Account ID of the player whose information is being retrieved
    - SeeAlso: EOS_UserInfo_CopyExternalUserInfoByIndex
    - Returns: The number of external user infos, or 0 if there is an error
    */
    public func GetExternalUserInfoCount(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) throws -> Int {
        try ____GetExternalUserInfoCount(.init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ))
    }

    /**
    EOS_UserInfo_QueryUserInfo is used to start an asynchronous query to retrieve information, such as display name, about another account.Once the callback has been fired with a successful ResultCode, it is possible to call EOS_UserInfo_CopyUserInfo to receive an EOS_UserInfo containing the available information.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter TargetUserId: The Epic Online Services Account ID of the player whose information is being retrieved
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: EOS_UserInfo
    - SeeAlso: EOS_UserInfo_CopyUserInfo
    - SeeAlso: EOS_UserInfo_QueryUserInfoOptions
    - SeeAlso: EOS_UserInfo_OnQueryUserInfoCallback
    */
    public func QueryUserInfo(
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoCallbackInfo) -> Void
    ) throws {
        try ____QueryUserInfo(
            .init(
                LocalUserId: LocalUserId,
                TargetUserId: TargetUserId
            ),
            CompletionDelegate
        )
    }

    /**
    EOS_UserInfo_QueryUserInfoByDisplayName is used to start an asynchronous query to retrieve user information by display name. This can be useful for getting the EOS_EpicAccountId for a display name.Once the callback has been fired with a successful ResultCode, it is possible to call EOS_UserInfo_CopyUserInfo to receive an EOS_UserInfo containing the available information.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter DisplayName: Display name of the player being queried
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: EOS_UserInfo
    - SeeAlso: EOS_UserInfo_CopyUserInfo
    - SeeAlso: EOS_UserInfo_QueryUserInfoByDisplayNameOptions
    - SeeAlso: EOS_UserInfo_OnQueryUserInfoByDisplayNameCallback
    */
    public func QueryUserInfoByDisplayName(
        LocalUserId: EOS_EpicAccountId?,
        DisplayName: String?,
        CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo) -> Void
    ) throws {
        try ____QueryUserInfoByDisplayName(
            .init(
                LocalUserId: LocalUserId,
                DisplayName: DisplayName
            ),
            CompletionDelegate
        )
    }

    /**
    EOS_UserInfo_QueryUserInfoByExternalAccount is used to start an asynchronous query to retrieve user information by external accounts.This can be useful for getting the EOS_EpicAccountId for external accounts.Once the callback has been fired with a successful ResultCode, it is possible to call CopyUserInfo to receive an EOS_UserInfo containing the available information.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter ExternalAccountId: External account ID of the user whose information is being retrieved
    - Parameter AccountType: Account type of the external user info to query
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: EOS_UserInfo
    - SeeAlso: EOS_UserInfo_QueryUserInfoByExternalAccountOptions
    - SeeAlso: EOS_UserInfo_OnQueryUserInfoByExternalAccountCallback
    */
    public func QueryUserInfoByExternalAccount(
        LocalUserId: EOS_EpicAccountId?,
        ExternalAccountId: String?,
        AccountType: EOS_EExternalAccountType,
        CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo) -> Void
    ) throws {
        try ____QueryUserInfoByExternalAccount(
            .init(
                LocalUserId: LocalUserId,
                ExternalAccountId: ExternalAccountId,
                AccountType: AccountType
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_UserInfo_Actor {

    /**
    Fetches an external user info for a given external account ID.

    - Parameter Options: Structure containing the account ID being accessed
    - SeeAlso: EOS_UserInfo_ExternalUserInfo_Release
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter EOS_NotFound if the external user info is not found
    - Returns: The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
    */
    private func ____CopyExternalUserInfoByAccountId(
        _ Options: SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions
    ) throws -> SwiftEOS_UserInfo_ExternalUserInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutExternalUserInfo in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_UserInfo_CopyExternalUserInfoByAccountId(
                                Handle,
                                Options,
                                OutExternalUserInfo
                            ) } } },
                release: EOS_UserInfo_ExternalUserInfo_Release
            ) }
    }

    /**
    Fetches an external user info for a given external account type.

    - Parameter Options: Structure containing the account type being accessed
    - SeeAlso: EOS_UserInfo_ExternalUserInfo_Release
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter EOS_NotFound if the external user info is not found
    - Returns: The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
    */
    private func ____CopyExternalUserInfoByAccountType(
        _ Options: SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions
    ) throws -> SwiftEOS_UserInfo_ExternalUserInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutExternalUserInfo in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_UserInfo_CopyExternalUserInfoByAccountType(
                                Handle,
                                Options,
                                OutExternalUserInfo
                            ) } } },
                release: EOS_UserInfo_ExternalUserInfo_Release
            ) }
    }

    /**
    Fetches an external user info from a given index.

    - Parameter Options: Structure containing the index being accessed
    - SeeAlso: EOS_UserInfo_ExternalUserInfo_Release
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter EOS_NotFound if the external user info is not found
    - Returns: The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
    */
    private func ____CopyExternalUserInfoByIndex(
        _ Options: SwiftEOS_UserInfo_CopyExternalUserInfoByIndexOptions
    ) throws -> SwiftEOS_UserInfo_ExternalUserInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutExternalUserInfo in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_UserInfo_CopyExternalUserInfoByIndex(
                                Handle,
                                Options,
                                OutExternalUserInfo
                            ) } } },
                release: EOS_UserInfo_ExternalUserInfo_Release
            ) }
    }

    /**
    EOS_UserInfo_CopyUserInfo is used to immediately retrieve a copy of user information based on an Epic Online Services Account ID, cached by a previous call to EOS_UserInfo_QueryUserInfo.If the call returns an EOS_Success result, the out parameter, OutUserInfo, must be passed to EOS_UserInfo_Release to release the memory associated with it.

    - Parameter Options: structure containing the input parameters
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter EOS_IncompatibleVersion if the API version passed in is incorrect EOS_NotFound if the user info is not locally cached. The information must have been previously cached by a call to EOS_UserInfo_QueryUserInfo
    - SeeAlso: EOS_UserInfo
    - SeeAlso: EOS_UserInfo_CopyUserInfoOptions
    - SeeAlso: EOS_UserInfo_Release
    - Returns: out parameter used to receive the EOS_UserInfo structure.
    */
    private func ____CopyUserInfo(
        _ Options: SwiftEOS_UserInfo_CopyUserInfoOptions
    ) throws -> SwiftEOS_UserInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutUserInfo in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_UserInfo_CopyUserInfo(
                                Handle,
                                Options,
                                OutUserInfo
                            ) } } },
                release: EOS_UserInfo_Release
            ) }
    }

    /**
    Fetch the number of external user infos that are cached locally.

    - Parameter Options: The options associated with retrieving the external user info count
    - SeeAlso: EOS_UserInfo_CopyExternalUserInfoByIndex
    - Returns: The number of external user infos, or 0 if there is an error
    */
    private func ____GetExternalUserInfoCount(
        _ Options: SwiftEOS_UserInfo_GetExternalUserInfoCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_UserInfo_GetExternalUserInfoCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    EOS_UserInfo_QueryUserInfo is used to start an asynchronous query to retrieve information, such as display name, about another account.Once the callback has been fired with a successful ResultCode, it is possible to call EOS_UserInfo_CopyUserInfo to receive an EOS_UserInfo containing the available information.

    - Parameter Options: structure containing the input parameters
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: EOS_UserInfo
    - SeeAlso: EOS_UserInfo_CopyUserInfo
    - SeeAlso: EOS_UserInfo_QueryUserInfoOptions
    - SeeAlso: EOS_UserInfo_OnQueryUserInfoCallback
    */
    private func ____QueryUserInfo(
        _ Options: SwiftEOS_UserInfo_QueryUserInfoOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_UserInfo_QueryUserInfo(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_UserInfo_QueryUserInfoCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    EOS_UserInfo_QueryUserInfoByDisplayName is used to start an asynchronous query to retrieve user information by display name. This can be useful for getting the EOS_EpicAccountId for a display name.Once the callback has been fired with a successful ResultCode, it is possible to call EOS_UserInfo_CopyUserInfo to receive an EOS_UserInfo containing the available information.

    - Parameter Options: structure containing the input parameters
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: EOS_UserInfo
    - SeeAlso: EOS_UserInfo_CopyUserInfo
    - SeeAlso: EOS_UserInfo_QueryUserInfoByDisplayNameOptions
    - SeeAlso: EOS_UserInfo_OnQueryUserInfoByDisplayNameCallback
    */
    private func ____QueryUserInfoByDisplayName(
        _ Options: SwiftEOS_UserInfo_QueryUserInfoByDisplayNameOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_UserInfo_QueryUserInfoByDisplayName(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    EOS_UserInfo_QueryUserInfoByExternalAccount is used to start an asynchronous query to retrieve user information by external accounts.This can be useful for getting the EOS_EpicAccountId for external accounts.Once the callback has been fired with a successful ResultCode, it is possible to call CopyUserInfo to receive an EOS_UserInfo containing the available information.

    - Parameter Options: structure containing the input parameters
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: EOS_UserInfo
    - SeeAlso: EOS_UserInfo_QueryUserInfoByExternalAccountOptions
    - SeeAlso: EOS_UserInfo_OnQueryUserInfoByExternalAccountCallback
    */
    private func ____QueryUserInfoByExternalAccount(
        _ Options: SwiftEOS_UserInfo_QueryUserInfoByExternalAccountOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_UserInfo_QueryUserInfoByExternalAccount(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
