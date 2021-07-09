import Foundation
import EOSSDK
public class SwiftEOS_KWS_Actor: SwiftEOSActor {
    public let Handle: EOS_HKWS

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HKWS
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * This interface is not available for general access at this time.
     * Register to receive notifications about KWS permissions changes for any logged in local users
     * 
     * @note must call EOS_KWS_RemoveNotifyPermissionsUpdateReceived to remove the notification
     * 
     * - Parameter Options:  Structure containing information about the request.
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate.
     * - Parameter NotificationFn:  A callback that is fired when a notification is received.
     * 
     * @return handle representing the registered callback
     */
    public func AddNotifyPermissionsUpdateReceived(
        Options: SwiftEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions,
        NotificationFn: @escaping (SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_KWS_AddNotifyPermissionsUpdateReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [weak self] notificationId in
                    self?.RemoveNotifyPermissionsUpdateReceived(InId: notificationId) }
            ) }
    }

    /**
     * This interface is not available for general access at this time.
     * Fetch a permission for a given by index for a given local user
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutPermission:  the permission for the given index, if it exists and is valid, use EOS_KWS_PermissionStatus_Release when finished
     * 
     * @see EOS_KWS_CreateUser
     * @see EOS_KWS_QueryPermissions
     * @see EOS_KWS_RequestPermissions
     * @see EOS_KWS_PermissionStatus_Release
     * 
     * @return EOS_Success if the permission state is known for the given user and index
     *         EOS_NotFound if the user is not found or the index is invalid
     */
    public func CopyPermissionByIndex(
        Options: SwiftEOS_KWS_CopyPermissionByIndexOptions
    ) throws -> SwiftEOS_KWS_PermissionStatus? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutPermission in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_KWS_CopyPermissionByIndex(
                                Handle,
                                Options,
                                OutPermission
                            ) } } },
                release: EOS_KWS_PermissionStatus_Release
            ) }
    }

    /**
     * This interface is not available for general access at this time.
     * Create an account with Kids Web Services and associate it with the local Product User ID
     * 
     * - Parameter Options:  options required for creating an account such as the local users Product User ID, their data of birth, and parental contact information
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the operation completes, either successfully or in error
     * 
     * @return EOS_Success if account creation completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_TooManyRequests if the number of allowed requests is exceeded
     */
    public func CreateUser(
        Options: SwiftEOS_KWS_CreateUserOptions,
        CompletionDelegate: @escaping (SwiftEOS_KWS_CreateUserCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_CreateUser(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_CreateUserCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * This interface is not available for general access at this time.
     * Fetch the state of a given permission that are cached for a given local user.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutPermission:  the permission for the given key, if it exists and is valid
     * 
     * @see EOS_KWS_CreateUser
     * @see EOS_KWS_QueryPermissions
     * @see EOS_KWS_RequestPermissions
     * 
     * @return EOS_Success if the permission state is known for the given user and key
     *         EOS_NotFound if the user or the permission is not found
     */
    public func GetPermissionByKey(
        Options: SwiftEOS_KWS_GetPermissionByKeyOptions
    ) throws -> EOS_EKWSPermissionStatus? {
        try withPointerManager { pointerManager in
            try withPointeeReturned(managedBy: pointerManager) { OutPermission in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_KWS_GetPermissionByKey(
                            Handle,
                            Options,
                            OutPermission
                        ) } } } }
    }

    /**
     * This interface is not available for general access at this time.
     * Fetch the number of permissions found for a given local user
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @return the number of permissions associated with the given user
     */
    public func GetPermissionsCount(
        Options: SwiftEOS_KWS_GetPermissionsCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_KWS_GetPermissionsCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * This interface is not available for general access at this time.
     * Query the client's country and age permissions for client side reasoning about the possible need enforce age based restrictions
     * 
     * - Parameter Options:  options required for interacting with the age gate system
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the operation completes, either successfully or in error
     * 
     * @return EOS_Success if the query completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_TooManyRequests if the number of allowed queries is exceeded
     */
    public func QueryAgeGate(
        Options: SwiftEOS_KWS_QueryAgeGateOptions,
        CompletionDelegate: @escaping (SwiftEOS_KWS_QueryAgeGateCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_QueryAgeGate(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_QueryAgeGateCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * This interface is not available for general access at this time.
     * Query the current state of permissions for a given local Product User ID
     * 
     * - Parameter Options:  options required for querying permissions such as the local users Product User ID
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the operation completes, either successfully or in error
     * 
     * @return EOS_Success if the account query completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_TooManyRequests if the number of allowed requests is exceeded
     */
    public func QueryPermissions(
        Options: SwiftEOS_KWS_QueryPermissionsOptions,
        CompletionDelegate: @escaping (SwiftEOS_KWS_QueryPermissionsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_QueryPermissions(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_QueryPermissionsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * This interface is not available for general access at this time.
     * Unregister from receiving notifications about KWS permissions related to logged in users
     * 
     * - Parameter InId:  Handle representing the registered callback
     */
    public func RemoveNotifyPermissionsUpdateReceived(
        InId: EOS_NotificationId
    ) {
        withPointerManager { pointerManager in
            EOS_KWS_RemoveNotifyPermissionsUpdateReceived(
                Handle,
                InId
            ) }
    }

    /**
     * This interface is not available for general access at this time.
     * Request new permissions for a given local Product User ID
     * 
     * - Parameter Options:  options required for updating permissions such as the new list of permissions
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the operation completes, either successfully or in error
     * 
     * @return EOS_Success if contact information update completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_TooManyRequests if the number of allowed requests is exceeded
     *         EOS_KWS_ParentEmailMissing if the account requesting permissions has no parent email associated with it
     *         EOS_LimitExceeded if the number of permissions exceeds EOS_KWS_MAX_PERMISSIONS, or if any permission name exceeds EOS_KWS_MAX_PERMISSION_LENGTH
     */
    public func RequestPermissions(
        Options: SwiftEOS_KWS_RequestPermissionsOptions,
        CompletionDelegate: @escaping (SwiftEOS_KWS_RequestPermissionsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_RequestPermissions(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_RequestPermissionsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * This interface is not available for general access at this time.
     * Update the parent contact information for a given local Product User ID
     * 
     * - Parameter Options:  options required for updating the contact information such as the new email address
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the operation completes, either successfully or in error
     * 
     * @return EOS_Success if contact information update completes successfully
     *         EOS_InvalidParameters if any of the options are incorrect
     *         EOS_TooManyRequests if the number of allowed requests is exceeded
     */
    public func UpdateParentEmail(
        Options: SwiftEOS_KWS_UpdateParentEmailOptions,
        CompletionDelegate: @escaping (SwiftEOS_KWS_UpdateParentEmailCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_UpdateParentEmail(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_UpdateParentEmailCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
