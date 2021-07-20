import Foundation
import EOSSDK

public class SwiftEOS_SessionDetails_Actor: SwiftEOSActor {
    public let Handle: EOS_HSessionDetails?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HSessionDetails?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_SessionDetails_Release(Handle)
    }

    /**
    `EOS_SessionDetails_CopyInfo` is used to immediately retrieve a copy of session information from a given source such as a active session or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionInfo, must be passed to `EOS_SessionDetails_Info_Release` to release the memory associated with it.

    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_SessionDetails_Info`
    - SeeAlso: `EOS_SessionDetails_CopyInfoOptions`
    - SeeAlso: `EOS_SessionDetails_Info_Release`
    - Returns: Out parameter used to receive the `EOS_SessionDetails_Info` structure.
    */
    public func CopyInfo() throws -> SwiftEOS_SessionDetails_Info? {
        try ____CopyInfo()
    }

    /**
    `EOS_SessionDetails_CopySessionAttributeByIndex` is used to immediately retrieve a copy of session attribution from a given source such as a active session or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionAttribute, must be passed to `EOS_SessionDetails_Attribute_Release` to release the memory associated with it.

    - Parameter AttrIndex: The index of the attribute to retrieve
    - SeeAlso: `EOS_SessionDetails_GetSessionAttributeCount`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_SessionDetails_Attribute`
    - SeeAlso: `EOS_SessionDetails_CopySessionAttributeByIndexOptions`
    - SeeAlso: `EOS_SessionDetails_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_SessionDetails_Attribute` structure.
    */
    public func CopySessionAttributeByIndex(
        AttrIndex: Int
    ) throws -> SwiftEOS_SessionDetails_Attribute? {
        try ____CopySessionAttributeByIndex(.init(AttrIndex: AttrIndex))
    }

    /**
    `EOS_SessionDetails_CopySessionAttributeByKey` is used to immediately retrieve a copy of session attribution from a given source such as a active session or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionAttribute, must be passed to `EOS_SessionDetails_Attribute_Release` to release the memory associated with it.

    - Parameter AttrKey: The name of the key to get the session attribution for
    - SeeAlso: `EOS_SessionModification_AddAttribute`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_SessionDetails_Attribute`
    - SeeAlso: `EOS_SessionDetails_CopySessionAttributeByKeyOptions`
    - SeeAlso: `EOS_SessionDetails_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_SessionDetails_Attribute` structure.
    */
    public func CopySessionAttributeByKey(
        AttrKey: String?
    ) throws -> SwiftEOS_SessionDetails_Attribute? {
        try ____CopySessionAttributeByKey(.init(AttrKey: AttrKey))
    }

    /**
    Get the number of attributes associated with this session

    - Returns: number of attributes on the session or 0 if there is an error
    */
    public func GetSessionAttributeCount() throws -> Int {
        try ____GetSessionAttributeCount()
    }
}

extension SwiftEOS_SessionDetails_Actor {

    /**
    `EOS_SessionDetails_CopyInfo` is used to immediately retrieve a copy of session information from a given source such as a active session or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionInfo, must be passed to `EOS_SessionDetails_Info_Release` to release the memory associated with it.

    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_SessionDetails_Info`
    - SeeAlso: `EOS_SessionDetails_CopyInfoOptions`
    - SeeAlso: `EOS_SessionDetails_Info_Release`
    - Returns: Out parameter used to receive the `EOS_SessionDetails_Info` structure.
    */
    private func ____CopyInfo() throws -> SwiftEOS_SessionDetails_Info? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutSessionInfo in
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_SessionDetails_CopyInfoOptions(), managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_SessionDetails_CopyInfo(
                                Handle,
                                Options,
                                OutSessionInfo
                            ) } } },
                release: EOS_SessionDetails_Info_Release
            ) }
    }

    /**
    `EOS_SessionDetails_CopySessionAttributeByIndex` is used to immediately retrieve a copy of session attribution from a given source such as a active session or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionAttribute, must be passed to `EOS_SessionDetails_Attribute_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_SessionDetails_Attribute`
    - SeeAlso: `EOS_SessionDetails_CopySessionAttributeByIndexOptions`
    - SeeAlso: `EOS_SessionDetails_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_SessionDetails_Attribute` structure.
    */
    private func ____CopySessionAttributeByIndex(
        _ Options: SwiftEOS_SessionDetails_CopySessionAttributeByIndexOptions
    ) throws -> SwiftEOS_SessionDetails_Attribute? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutSessionAttribute in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_SessionDetails_CopySessionAttributeByIndex(
                                Handle,
                                Options,
                                OutSessionAttribute
                            ) } } },
                release: EOS_SessionDetails_Attribute_Release
            ) }
    }

    /**
    `EOS_SessionDetails_CopySessionAttributeByKey` is used to immediately retrieve a copy of session attribution from a given source such as a active session or a search result.
    If the call returns an `EOS_Success` result, the out parameter, OutSessionAttribute, must be passed to `EOS_SessionDetails_Attribute_Release` to release the memory associated with it.

    - Parameter Options: Structure containing the input parameters
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_IncompatibleVersion` if the API version passed in is incorrect
    - SeeAlso: `EOS_SessionDetails_Attribute`
    - SeeAlso: `EOS_SessionDetails_CopySessionAttributeByKeyOptions`
    - SeeAlso: `EOS_SessionDetails_Attribute_Release`
    - Returns: Out parameter used to receive the `EOS_SessionDetails_Attribute` structure.
    */
    private func ____CopySessionAttributeByKey(
        _ Options: SwiftEOS_SessionDetails_CopySessionAttributeByKeyOptions
    ) throws -> SwiftEOS_SessionDetails_Attribute? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutSessionAttribute in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_SessionDetails_CopySessionAttributeByKey(
                                Handle,
                                Options,
                                OutSessionAttribute
                            ) } } },
                release: EOS_SessionDetails_Attribute_Release
            ) }
    }

    /**
    Get the number of attributes associated with this session

    - Returns: number of attributes on the session or 0 if there is an error
    */
    private func ____GetSessionAttributeCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectMutablePointerFromSwiftObject(SwiftEOS_SessionDetails_GetSessionAttributeCountOptions(), managedBy: pointerManager) { Options in
                        EOS_SessionDetails_GetSessionAttributeCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }
}
