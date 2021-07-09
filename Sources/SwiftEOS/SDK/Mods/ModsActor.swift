import Foundation
import EOSSDK
public class SwiftEOS_Mods_Actor: SwiftEOSActor {
    public let Handle: EOS_HMods

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HMods
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Get cached enumerated mods object. If successful, this data must be released by calling EOS_Mods_ModInfo_Release
     * Types of the cached enumerated mods can be specified through EOS_Mods_CopyModInfoOptions
     * 
     * - Parameter Options:  structure containing the game identifier for which requesting enumerated mods
     * - Parameter OutEnumeratedMods:  Enumerated mods Info. If the returned result is success, this will be set to data that must be later released, otherwise this will be set to NULL
     * @return Success if we have cached data, or an error result if the request was invalid or we do not have cached data.
     * 
     * @see EOS_Mods_ModInfo_Release
     * This request may fail with an EOS_NotFound code if an enumeration of a certain type was not performed before this call.
     */
    public func CopyModInfo(
        Options: SwiftEOS_Mods_CopyModInfoOptions
    ) throws -> SwiftEOS_Mods_ModInfo? {
        try ____CopyModInfo(Options)
    }

    /**
     * Starts an asynchronous task that makes a request to enumerate mods for the specified game.
     * Types of the mods to enumerate can be specified through EOS_Mods_EnumerateModsOptions
     * 
     * - Parameter Options:  structure containing the game identifiers
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see the section related to mods in eos_result.h for more details.
     */
    public func EnumerateMods(
        Options: SwiftEOS_Mods_EnumerateModsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Mods_EnumerateModsCallbackInfo) -> Void
    ) throws {
        try ____EnumerateMods(
            Options,
            CompletionDelegate
        )
    }

    /**
     * Starts an asynchronous task that makes a request to install the specified mod.
     * 
     * - Parameter Options:  structure containing the game and mod identifiers
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see the section related to mods in eos_result.h for more details.
     */
    public func InstallMod(
        Options: SwiftEOS_Mods_InstallModOptions,
        CompletionDelegate: @escaping (SwiftEOS_Mods_InstallModCallbackInfo) -> Void
    ) throws {
        try ____InstallMod(
            Options,
            CompletionDelegate
        )
    }

    /**
     * Starts an asynchronous task that makes a request to uninstall the specified mod.
     * 
     * - Parameter Options:  structure containing the game and mod identifiers
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see the section related to mods in eos_result.h for more details.
     */
    public func UninstallMod(
        Options: SwiftEOS_Mods_UninstallModOptions,
        CompletionDelegate: @escaping (SwiftEOS_Mods_UninstallModCallbackInfo) -> Void
    ) throws {
        try ____UninstallMod(
            Options,
            CompletionDelegate
        )
    }

    /**
     * Starts an asynchronous task that makes a request to update the specified mod to the latest version.
     * 
     * - Parameter Options:  structure containing the game and mod identifiers
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error. If the mod is up to date then the operation will complete with success.
     * 
     * @see the section related to mods in eos_result.h for more details.
     */
    public func UpdateMod(
        Options: SwiftEOS_Mods_UpdateModOptions,
        CompletionDelegate: @escaping (SwiftEOS_Mods_UpdateModCallbackInfo) -> Void
    ) throws {
        try ____UpdateMod(
            Options,
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Mods_Actor {

    /**
     * Get cached enumerated mods object. If successful, this data must be released by calling EOS_Mods_ModInfo_Release
     * Types of the cached enumerated mods can be specified through EOS_Mods_CopyModInfoOptions
     * 
     * - Parameter Options:  structure containing the game identifier for which requesting enumerated mods
     * - Parameter OutEnumeratedMods:  Enumerated mods Info. If the returned result is success, this will be set to data that must be later released, otherwise this will be set to NULL
     * @return Success if we have cached data, or an error result if the request was invalid or we do not have cached data.
     * 
     * @see EOS_Mods_ModInfo_Release
     * This request may fail with an EOS_NotFound code if an enumeration of a certain type was not performed before this call.
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
     * Starts an asynchronous task that makes a request to enumerate mods for the specified game.
     * Types of the mods to enumerate can be specified through EOS_Mods_EnumerateModsOptions
     * 
     * - Parameter Options:  structure containing the game identifiers
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see the section related to mods in eos_result.h for more details.
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
     * Starts an asynchronous task that makes a request to install the specified mod.
     * 
     * - Parameter Options:  structure containing the game and mod identifiers
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see the section related to mods in eos_result.h for more details.
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
     * Starts an asynchronous task that makes a request to uninstall the specified mod.
     * 
     * - Parameter Options:  structure containing the game and mod identifiers
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see the section related to mods in eos_result.h for more details.
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
     * Starts an asynchronous task that makes a request to update the specified mod to the latest version.
     * 
     * - Parameter Options:  structure containing the game and mod identifiers
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error. If the mod is up to date then the operation will complete with success.
     * 
     * @see the section related to mods in eos_result.h for more details.
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
