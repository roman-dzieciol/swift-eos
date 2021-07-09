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
     * Fetches an external user info for a given external account ID.
     * 
     * - Parameter Options:  Structure containing the account ID being accessed
     * - Parameter OutExternalUserInfo:  The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
     * 
     * @see EOS_UserInfo_ExternalUserInfo_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutExternalUserInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the external user info is not found
     */
    public func CopyExternalUserInfoByAccountId(
        Options: SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions,
        OutExternalUserInfo: inout SwiftEOS_UserInfo_ExternalUserInfo?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutExternalUserInfo, managedBy: pointerManager) { OutExternalUserInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_UserInfo_CopyExternalUserInfoByAccountId(
                            Handle,
                            Options,
                            OutExternalUserInfo
                        ) } } } }
    }

    /**
     * Fetches an external user info for a given external account type.
     * 
     * - Parameter Options:  Structure containing the account type being accessed
     * - Parameter OutExternalUserInfo:  The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
     * 
     * @see EOS_UserInfo_ExternalUserInfo_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutExternalUserInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the external user info is not found
     */
    public func CopyExternalUserInfoByAccountType(
        Options: SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions,
        OutExternalUserInfo: inout SwiftEOS_UserInfo_ExternalUserInfo?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutExternalUserInfo, managedBy: pointerManager) { OutExternalUserInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_UserInfo_CopyExternalUserInfoByAccountType(
                            Handle,
                            Options,
                            OutExternalUserInfo
                        ) } } } }
    }

    /**
     * Fetches an external user info from a given index.
     * 
     * - Parameter Options:  Structure containing the index being accessed
     * - Parameter OutExternalUserInfo:  The external user info. If it exists and is valid, use EOS_UserInfo_ExternalUserInfo_Release when finished
     * 
     * @see EOS_UserInfo_ExternalUserInfo_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutExternalUserInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the external user info is not found
     */
    public func CopyExternalUserInfoByIndex(
        Options: SwiftEOS_UserInfo_CopyExternalUserInfoByIndexOptions,
        OutExternalUserInfo: inout SwiftEOS_UserInfo_ExternalUserInfo?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutExternalUserInfo, managedBy: pointerManager) { OutExternalUserInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_UserInfo_CopyExternalUserInfoByIndex(
                            Handle,
                            Options,
                            OutExternalUserInfo
                        ) } } } }
    }

    /**
     * EOS_UserInfo_CopyUserInfo is used to immediately retrieve a copy of user information based on an Epic Online Services Account ID, cached by a previous call to EOS_UserInfo_QueryUserInfo.
     * If the call returns an EOS_Success result, the out parameter, OutUserInfo, must be passed to EOS_UserInfo_Release to release the memory associated with it.
     * 
     * - Parameter Options:  structure containing the input parameters
     * - Parameter OutUserInfo:  out parameter used to receive the EOS_UserInfo structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutUserInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     *         EOS_NotFound if the user info is not locally cached. The information must have been previously cached by a call to EOS_UserInfo_QueryUserInfo
     * 
     * @see EOS_UserInfo
     * @see EOS_UserInfo_CopyUserInfoOptions
     * @see EOS_UserInfo_Release
     */
    public func CopyUserInfo(
        Options: SwiftEOS_UserInfo_CopyUserInfoOptions,
        OutUserInfo: inout SwiftEOS_UserInfo?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutUserInfo, managedBy: pointerManager) { OutUserInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_UserInfo_CopyUserInfo(
                            Handle,
                            Options,
                            OutUserInfo
                        ) } } } }
    }

    /**
     * Fetch the number of external user infos that are cached locally.
     * 
     * - Parameter Options:  The options associated with retrieving the external user info count
     * 
     * @see EOS_UserInfo_CopyExternalUserInfoByIndex
     * 
     * @return The number of external user infos, or 0 if there is an error
     */
    public func GetExternalUserInfoCount(
        Options: SwiftEOS_UserInfo_GetExternalUserInfoCountOptions
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
     * EOS_UserInfo_QueryUserInfo is used to start an asynchronous query to retrieve information, such as display name, about another account.
     * Once the callback has been fired with a successful ResultCode, it is possible to call EOS_UserInfo_CopyUserInfo to receive an EOS_UserInfo containing the available information.
     * 
     * - Parameter Options:  structure containing the input parameters
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see EOS_UserInfo
     * @see EOS_UserInfo_CopyUserInfo
     * @see EOS_UserInfo_QueryUserInfoOptions
     * @see EOS_UserInfo_OnQueryUserInfoCallback
     */
    public func QueryUserInfo(
        Options: SwiftEOS_UserInfo_QueryUserInfoOptions,
        CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoCallbackInfo) -> Void
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
     * EOS_UserInfo_QueryUserInfoByDisplayName is used to start an asynchronous query to retrieve user information by display name. This can be useful for getting the EOS_EpicAccountId for a display name.
     * Once the callback has been fired with a successful ResultCode, it is possible to call EOS_UserInfo_CopyUserInfo to receive an EOS_UserInfo containing the available information.
     * 
     * - Parameter Options:  structure containing the input parameters
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see EOS_UserInfo
     * @see EOS_UserInfo_CopyUserInfo
     * @see EOS_UserInfo_QueryUserInfoByDisplayNameOptions
     * @see EOS_UserInfo_OnQueryUserInfoByDisplayNameCallback
     */
    public func QueryUserInfoByDisplayName(
        Options: SwiftEOS_UserInfo_QueryUserInfoByDisplayNameOptions,
        CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo) -> Void
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
     * EOS_UserInfo_QueryUserInfoByExternalAccount is used to start an asynchronous query to retrieve user information by external accounts.
     * This can be useful for getting the EOS_EpicAccountId for external accounts.
     * Once the callback has been fired with a successful ResultCode, it is possible to call CopyUserInfo to receive an EOS_UserInfo containing the available information.
     * 
     * - Parameter Options:  structure containing the input parameters
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see EOS_UserInfo
     * @see EOS_UserInfo_QueryUserInfoByExternalAccountOptions
     * @see EOS_UserInfo_OnQueryUserInfoByExternalAccountCallback
     */
    public func QueryUserInfoByExternalAccount(
        Options: SwiftEOS_UserInfo_QueryUserInfoByExternalAccountOptions,
        CompletionDelegate: @escaping (SwiftEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo) -> Void
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
