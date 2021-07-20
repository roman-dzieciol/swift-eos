import Foundation
import EOSSDK

public class SwiftEOS_Mods_Actor: SwiftEOSActor {
    public let Handle: EOS_HMods?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HMods?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Get cached enumerated mods object. If successful, this data must be released by calling `EOS_Mods_ModInfo_Release`
    Types of the cached enumerated mods can be specified through `EOS_Mods_CopyModInfoOptions`

    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which mods should be copied
    - Parameter `Type`: Type of the enumerated mod to copy
    - Throws: Success if we have cached data, or an error result if the request was invalid or we do not have cached data.
    - SeeAlso: `EOS_Mods_ModInfo_Release`
    This request may fail with an `EOS_NotFound` code if an enumeration of a certain type was not performed before this call.

    - Returns: Enumerated mods Info. If the returned result is success, this will be set to data that must be later released, otherwise this will be set to NULL
    */
    public func CopyModInfo(
        LocalUserId: EOS_EpicAccountId?,
        `Type`: EOS_EModEnumerationType
    ) throws -> SwiftEOS_Mods_ModInfo? {
        try ____CopyModInfo(.init(
                LocalUserId: LocalUserId,
                `Type`: `Type`
            ))
    }

    /**
    Starts an asynchronous task that makes a request to enumerate mods for the specified game.
    Types of the mods to enumerate can be specified through `EOS_Mods_EnumerateModsOptions`

    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which the mod should be enumerated
    - Parameter `Type`: Type of the mods to enumerate
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: the section related to mods in `eos_result`.h for more details.
    */
    public func EnumerateMods(
        LocalUserId: EOS_EpicAccountId?,
        `Type`: EOS_EModEnumerationType,
        CompletionDelegate: @escaping (SwiftEOS_Mods_EnumerateModsCallbackInfo) -> Void
    ) throws {
        try ____EnumerateMods(
            .init(
                LocalUserId: LocalUserId,
                `Type`: `Type`
            ),
            CompletionDelegate
        )
    }

    /**
    Starts an asynchronous task that makes a request to install the specified mod.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which the mod should be installed
    - Parameter Mod: The mod to install
    - Parameter bRemoveAfterExit: Indicates whether the mod should be uninstalled after exiting the game or not.
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: the section related to mods in `eos_result`.h for more details.
    */
    public func InstallMod(
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?,
        bRemoveAfterExit: Bool,
        CompletionDelegate: @escaping (SwiftEOS_Mods_InstallModCallbackInfo) -> Void
    ) throws {
        try ____InstallMod(
            .init(
                LocalUserId: LocalUserId,
                Mod: Mod,
                bRemoveAfterExit: bRemoveAfterExit
            ),
            CompletionDelegate
        )
    }

    /**
    Starts an asynchronous task that makes a request to uninstall the specified mod.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which the mod should be uninstalled
    - Parameter Mod: The mod to uninstall
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: the section related to mods in `eos_result`.h for more details.
    */
    public func UninstallMod(
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?,
        CompletionDelegate: @escaping (SwiftEOS_Mods_UninstallModCallbackInfo) -> Void
    ) throws {
        try ____UninstallMod(
            .init(
                LocalUserId: LocalUserId,
                Mod: Mod
            ),
            CompletionDelegate
        )
    }

    /**
    Starts an asynchronous task that makes a request to update the specified mod to the latest version.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user for which the mod should be updated
    - Parameter Mod: The mod to update
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error. If the mod is up to date then the operation will complete with success.
    - SeeAlso: the section related to mods in `eos_result`.h for more details.
    */
    public func UpdateMod(
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?,
        CompletionDelegate: @escaping (SwiftEOS_Mods_UpdateModCallbackInfo) -> Void
    ) throws {
        try ____UpdateMod(
            .init(
                LocalUserId: LocalUserId,
                Mod: Mod
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Mods_Actor {

    /**
    Get cached enumerated mods object. If successful, this data must be released by calling `EOS_Mods_ModInfo_Release`
    Types of the cached enumerated mods can be specified through `EOS_Mods_CopyModInfoOptions`

    - Parameter Options: structure containing the game identifier for which requesting enumerated mods
    - Throws: Success if we have cached data, or an error result if the request was invalid or we do not have cached data.
    - SeeAlso: `EOS_Mods_ModInfo_Release`
    This request may fail with an `EOS_NotFound` code if an enumeration of a certain type was not performed before this call.

    - Returns: Enumerated mods Info. If the returned result is success, this will be set to data that must be later released, otherwise this will be set to NULL
    */
    private func ____CopyModInfo(
        _ Options: SwiftEOS_Mods_CopyModInfoOptions
    ) throws -> SwiftEOS_Mods_ModInfo? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutEnumeratedMods in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Mods_CopyModInfo(
                                Handle,
                                Options,
                                OutEnumeratedMods
                            ) } } },
                release: EOS_Mods_ModInfo_Release
            ) }
    }

    /**
    Starts an asynchronous task that makes a request to enumerate mods for the specified game.
    Types of the mods to enumerate can be specified through `EOS_Mods_EnumerateModsOptions`

    - Parameter Options: structure containing the game identifiers
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: the section related to mods in `eos_result`.h for more details.
    */
    private func ____EnumerateMods(
        _ Options: SwiftEOS_Mods_EnumerateModsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Mods_EnumerateModsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Mods_EnumerateMods(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Mods_EnumerateModsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Starts an asynchronous task that makes a request to install the specified mod.

    - Parameter Options: structure containing the game and mod identifiers
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: the section related to mods in `eos_result`.h for more details.
    */
    private func ____InstallMod(
        _ Options: SwiftEOS_Mods_InstallModOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Mods_InstallModCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Mods_InstallMod(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Mods_InstallModCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Starts an asynchronous task that makes a request to uninstall the specified mod.

    - Parameter Options: structure containing the game and mod identifiers
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: the section related to mods in `eos_result`.h for more details.
    */
    private func ____UninstallMod(
        _ Options: SwiftEOS_Mods_UninstallModOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Mods_UninstallModCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Mods_UninstallMod(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Mods_UninstallModCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Starts an asynchronous task that makes a request to update the specified mod to the latest version.

    - Parameter Options: structure containing the game and mod identifiers
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error. If the mod is up to date then the operation will complete with success.
    - SeeAlso: the section related to mods in `eos_result`.h for more details.
    */
    private func ____UpdateMod(
        _ Options: SwiftEOS_Mods_UpdateModOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Mods_UpdateModCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Mods_UpdateMod(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Mods_UpdateModCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
