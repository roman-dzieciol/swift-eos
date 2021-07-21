import Foundation
import EOSSDK

public class SwiftEOS_KWS_Actor: SwiftEOSActor {
    public let Handle: EOS_HKWS?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HKWS?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    This interface is not available for general access at this time.

    Register to receive notifications about KWS permissions changes for any logged in local users

    - Note: must call `EOS_KWS_RemoveNotifyPermissionsUpdateReceived` to remove the notification
    - Parameter NotificationFn: A callback that is fired when a notification is received.
    - Returns: handle representing the registered callback
    */
    public func AddNotifyPermissionsUpdateReceived(
        NotificationFn: @escaping (SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo> {
        try ____AddNotifyPermissionsUpdateReceived(NotificationFn)
    }

    /**
    This interface is not available for general access at this time.

    Fetch a permission for a given by index for a given local user

    - Parameter LocalUserId: The Product User ID of the local user whose permissions are being accessed
    - Parameter Index: The index of the permission to get.
    - SeeAlso: `EOS_KWS_CreateUser`
    - SeeAlso: `EOS_KWS_QueryPermissions`
    - SeeAlso: `EOS_KWS_RequestPermissions`
    - SeeAlso: `EOS_KWS_PermissionStatus_Release`
    - Throws: `EOS_NotFound` if the user is not found or the index is invalid
    - Returns: the permission for the given index, if it exists and is valid, use `EOS_KWS_PermissionStatus_Release` when finished
    */
    public func CopyPermissionByIndex(
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) throws -> SwiftEOS_KWS_PermissionStatus {
        try ____CopyPermissionByIndex(.init(
                LocalUserId: LocalUserId,
                Index: Index
            ))
    }

    /**
    This interface is not available for general access at this time.

    Create an account with Kids Web Services and associate it with the local Product User ID

    - Parameter LocalUserId: Local user creating a KWS entry
    - Parameter DateOfBirth: Date of birth in ISO8601 form (YYYY-MM-DD)
    - Parameter ParentEmail: Parent email
    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if account creation completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed requests is exceeded
    */
    public func CreateUser(
        LocalUserId: EOS_ProductUserId?,
        DateOfBirth: String?,
        ParentEmail: String?,
        CompletionDelegate: @escaping (SwiftEOS_KWS_CreateUserCallbackInfo) -> Void
    ) throws {
        try ____CreateUser(
            .init(
                LocalUserId: LocalUserId,
                DateOfBirth: DateOfBirth,
                ParentEmail: ParentEmail
            ),
            CompletionDelegate
        )
    }

    /**
    This interface is not available for general access at this time.

    Fetch the state of a given permission that are cached for a given local user.

    - Parameter LocalUserId: The Product User ID of the local user getting permissions
    - Parameter Key: Permission name to query
    - SeeAlso: `EOS_KWS_CreateUser`
    - SeeAlso: `EOS_KWS_QueryPermissions`
    - SeeAlso: `EOS_KWS_RequestPermissions`
    - Throws: `EOS_NotFound` if the user or the permission is not found
    - Returns: the permission for the given key, if it exists and is valid
    */
    public func GetPermissionByKey(
        LocalUserId: EOS_ProductUserId?,
        Key: String?
    ) throws -> EOS_EKWSPermissionStatus {
        try ____GetPermissionByKey(.init(
                LocalUserId: LocalUserId,
                Key: Key
            ))
    }

    /**
    This interface is not available for general access at this time.

    Fetch the number of permissions found for a given local user

    - Parameter LocalUserId: The Product User ID of the local user whose permissions are being accessed
    - Returns: the number of permissions associated with the given user
    */
    public func GetPermissionsCount(
        LocalUserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetPermissionsCount(.init(LocalUserId: LocalUserId))
    }

    /**
    This interface is not available for general access at this time.

    Query the client's country and age permissions for client side reasoning about the possible need enforce age based restrictions

    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if the query completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed queries is exceeded
    */
    public func QueryAgeGate(
        CompletionDelegate: @escaping (SwiftEOS_KWS_QueryAgeGateCallbackInfo) -> Void
    ) throws {
        try ____QueryAgeGate(CompletionDelegate)
    }

    /**
    This interface is not available for general access at this time.

    Query the current state of permissions for a given local Product User ID

    - Parameter LocalUserId: Local user querying their permisssions
    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if the account query completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed requests is exceeded
    */
    public func QueryPermissions(
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_KWS_QueryPermissionsCallbackInfo) -> Void
    ) throws {
        try ____QueryPermissions(
            .init(LocalUserId: LocalUserId),
            CompletionDelegate
        )
    }

    /**
    This interface is not available for general access at this time.

    Request new permissions for a given local Product User ID

    - Parameter LocalUserId: Local user requesting new permisssions
    - Parameter PermissionKeys: Names of the permissions to request (Setup with KWS)
    - Note: ``EOS/_tagEOS_KWS_RequestPermissionsOptions/PermissionKeyCount``:
    The number of permissions to request, may not exceed `EOS_KWS_MAX_PERMISSIONS`. Only new permissions need be included.
    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if contact information update completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed requests is exceeded
               `EOS_KWS_ParentEmailMissing` if the account requesting permissions has no parent email associated with it
               `EOS_LimitExceeded` if the number of permissions exceeds `EOS_KWS_MAX_PERMISSIONS`, or if any permission name exceeds `EOS_KWS_MAX_PERMISSION_LENGTH`
    */
    public func RequestPermissions(
        LocalUserId: EOS_ProductUserId?,
        PermissionKeys: [String]?,
        CompletionDelegate: @escaping (SwiftEOS_KWS_RequestPermissionsCallbackInfo) -> Void
    ) throws {
        try ____RequestPermissions(
            .init(
                LocalUserId: LocalUserId,
                PermissionKeys: PermissionKeys
            ),
            CompletionDelegate
        )
    }

    /**
    This interface is not available for general access at this time.

    Update the parent contact information for a given local Product User ID

    - Parameter LocalUserId: Local user updating parental information
    - Parameter ParentEmail: New parent email
    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if contact information update completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed requests is exceeded
    */
    public func UpdateParentEmail(
        LocalUserId: EOS_ProductUserId?,
        ParentEmail: String?,
        CompletionDelegate: @escaping (SwiftEOS_KWS_UpdateParentEmailCallbackInfo) -> Void
    ) throws {
        try ____UpdateParentEmail(
            .init(
                LocalUserId: LocalUserId,
                ParentEmail: ParentEmail
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_KWS_Actor {

    /**
    This interface is not available for general access at this time.

    Register to receive notifications about KWS permissions changes for any logged in local users

    - Note: must call `EOS_KWS_RemoveNotifyPermissionsUpdateReceived` to remove the notification
    - Parameter NotificationFn: A callback that is fired when a notification is received.
    - Returns: handle representing the registered callback
    */
    private func ____AddNotifyPermissionsUpdateReceived(
        _ NotificationFn: @escaping (SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo) -> Void
    ) throws -> SwiftEOS_Notification<SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo> {
        try withPointerManager { pointerManager in
            try withNotification(
                notification: NotificationFn,
                managedBy: pointerManager,
                nested: { ClientData in
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions(), managedBy: pointerManager) { Options in
                        EOS_KWS_AddNotifyPermissionsUpdateReceived(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo.sendNotification(sdkCallbackInfoPointer) }
                        ) } },
                onDeinit: { [Handle] notificationId in
                    EOS_KWS_RemoveNotifyPermissionsUpdateReceived(
                        Handle,
                        notificationId
                    ) }
            ) }
    }

    /**
    This interface is not available for general access at this time.

    Fetch a permission for a given by index for a given local user

    - Parameter Options: Structure containing the input parameters
    - SeeAlso: `EOS_KWS_CreateUser`
    - SeeAlso: `EOS_KWS_QueryPermissions`
    - SeeAlso: `EOS_KWS_RequestPermissions`
    - SeeAlso: `EOS_KWS_PermissionStatus_Release`
    - Throws: `EOS_NotFound` if the user is not found or the index is invalid
    - Returns: the permission for the given index, if it exists and is valid, use `EOS_KWS_PermissionStatus_Release` when finished
    */
    private func ____CopyPermissionByIndex(
        _ Options: SwiftEOS_KWS_CopyPermissionByIndexOptions
    ) throws -> SwiftEOS_KWS_PermissionStatus {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutPermission in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_KWS_CopyPermissionByIndex(
                                    Handle,
                                    Options,
                                    OutPermission
                                ) } } },
                    release: EOS_KWS_PermissionStatus_Release
                ) } }
    }

    /**
    This interface is not available for general access at this time.

    Create an account with Kids Web Services and associate it with the local Product User ID

    - Parameter Options: options required for creating an account such as the local users Product User ID, their data of birth, and parental contact information
    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if account creation completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed requests is exceeded
    */
    private func ____CreateUser(
        _ Options: SwiftEOS_KWS_CreateUserOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_KWS_CreateUserCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_CreateUser(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_CreateUserCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    This interface is not available for general access at this time.

    Fetch the state of a given permission that are cached for a given local user.

    - Parameter Options: Structure containing the input parameters
    - SeeAlso: `EOS_KWS_CreateUser`
    - SeeAlso: `EOS_KWS_QueryPermissions`
    - SeeAlso: `EOS_KWS_RequestPermissions`
    - Throws: `EOS_NotFound` if the user or the permission is not found
    - Returns: the permission for the given key, if it exists and is valid
    */
    private func ____GetPermissionByKey(
        _ Options: SwiftEOS_KWS_GetPermissionByKeyOptions
    ) throws -> EOS_EKWSPermissionStatus {
        try withPointerManager { pointerManager in
            try withTrivialPointerReturnedAsTrivial(managedBy: pointerManager) { OutPermission in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_KWS_GetPermissionByKey(
                            Handle,
                            Options,
                            OutPermission
                        ) } } } }
    }

    /**
    This interface is not available for general access at this time.

    Fetch the number of permissions found for a given local user

    - Parameter Options: Structure containing the input parameters
    - Returns: the number of permissions associated with the given user
    */
    private func ____GetPermissionsCount(
        _ Options: SwiftEOS_KWS_GetPermissionsCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_KWS_GetPermissionsCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    This interface is not available for general access at this time.

    Query the client's country and age permissions for client side reasoning about the possible need enforce age based restrictions

    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if the query completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed queries is exceeded
    */
    private func ____QueryAgeGate(
        _ CompletionDelegate: @escaping (SwiftEOS_KWS_QueryAgeGateCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_KWS_QueryAgeGateOptions(), managedBy: pointerManager) { Options in
                    EOS_KWS_QueryAgeGate(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_QueryAgeGateCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    This interface is not available for general access at this time.

    Query the current state of permissions for a given local Product User ID

    - Parameter Options: options required for querying permissions such as the local users Product User ID
    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if the account query completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed requests is exceeded
    */
    private func ____QueryPermissions(
        _ Options: SwiftEOS_KWS_QueryPermissionsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_KWS_QueryPermissionsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_QueryPermissions(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_QueryPermissionsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    This interface is not available for general access at this time.

    Request new permissions for a given local Product User ID

    - Parameter Options: options required for updating permissions such as the new list of permissions
    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if contact information update completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed requests is exceeded
               `EOS_KWS_ParentEmailMissing` if the account requesting permissions has no parent email associated with it
               `EOS_LimitExceeded` if the number of permissions exceeds `EOS_KWS_MAX_PERMISSIONS`, or if any permission name exceeds `EOS_KWS_MAX_PERMISSION_LENGTH`
    */
    private func ____RequestPermissions(
        _ Options: SwiftEOS_KWS_RequestPermissionsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_KWS_RequestPermissionsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_RequestPermissions(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_RequestPermissionsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    This interface is not available for general access at this time.

    Update the parent contact information for a given local Product User ID

    - Parameter Options: options required for updating the contact information such as the new email address
    - Parameter CompletionDelegate: A callback that is fired when the operation completes, either successfully or in error
    - Returns: `EOS_Success` if contact information update completes successfully
               `EOS_InvalidParameters` if any of the options are incorrect
               `EOS_TooManyRequests` if the number of allowed requests is exceeded
    */
    private func ____UpdateParentEmail(
        _ Options: SwiftEOS_KWS_UpdateParentEmailOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_KWS_UpdateParentEmailCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_KWS_UpdateParentEmail(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_KWS_UpdateParentEmailCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
