import Foundation
import EOSSDK
public class SwiftEOS_SessionDetails_Actor: SwiftEOSActor {
    public let Handle: EOS_HSessionDetails

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HSessionDetails
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_SessionDetails_Release(Handle)
    }

    /**
     * EOS_SessionDetails_CopyInfo is used to immediately retrieve a copy of session information from a given source such as a active session or a search result.
     * If the call returns an EOS_Success result, the out parameter, OutSessionInfo, must be passed to EOS_SessionDetails_Info_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutSessionInfo:  Out parameter used to receive the EOS_SessionDetails_Info structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutSessionInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_SessionDetails_Info
     * @see EOS_SessionDetails_CopyInfoOptions
     * @see EOS_SessionDetails_Info_Release
     */
    public func CopyInfo(
        Options: SwiftEOS_SessionDetails_CopyInfoOptions,
        OutSessionInfo: inout SwiftEOS_SessionDetails_Info?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutSessionInfo, managedBy: pointerManager) { OutSessionInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_SessionDetails_CopyInfo(
                            Handle,
                            Options,
                            OutSessionInfo
                        ) } } } }
    }

    /**
     * EOS_SessionDetails_CopySessionAttributeByIndex is used to immediately retrieve a copy of session attribution from a given source such as a active session or a search result.
     * If the call returns an EOS_Success result, the out parameter, OutSessionAttribute, must be passed to EOS_SessionDetails_Attribute_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutSessionAttribute:  Out parameter used to receive the EOS_SessionDetails_Attribute structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutSessionAttribute
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_SessionDetails_Attribute
     * @see EOS_SessionDetails_CopySessionAttributeByIndexOptions
     * @see EOS_SessionDetails_Attribute_Release
     */
    public func CopySessionAttributeByIndex(
        Options: SwiftEOS_SessionDetails_CopySessionAttributeByIndexOptions,
        OutSessionAttribute: inout SwiftEOS_SessionDetails_Attribute?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutSessionAttribute, managedBy: pointerManager) { OutSessionAttribute in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_SessionDetails_CopySessionAttributeByIndex(
                            Handle,
                            Options,
                            OutSessionAttribute
                        ) } } } }
    }

    /**
     * EOS_SessionDetails_CopySessionAttributeByKey is used to immediately retrieve a copy of session attribution from a given source such as a active session or a search result.
     * If the call returns an EOS_Success result, the out parameter, OutSessionAttribute, must be passed to EOS_SessionDetails_Attribute_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutSessionAttribute:  Out parameter used to receive the EOS_SessionDetails_Attribute structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutSessionAttribute
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_SessionDetails_Attribute
     * @see EOS_SessionDetails_CopySessionAttributeByKeyOptions
     * @see EOS_SessionDetails_Attribute_Release
     */
    public func CopySessionAttributeByKey(
        Options: SwiftEOS_SessionDetails_CopySessionAttributeByKeyOptions,
        OutSessionAttribute: inout SwiftEOS_SessionDetails_Attribute?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutSessionAttribute, managedBy: pointerManager) { OutSessionAttribute in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_SessionDetails_CopySessionAttributeByKey(
                            Handle,
                            Options,
                            OutSessionAttribute
                        ) } } } }
    }

    /**
     * Get the number of attributes associated with this session
     * 
     * - Parameter Options:  the Options associated with retrieving the attribute count
     * 
     * @return number of attributes on the session or 0 if there is an error
     */
    public func GetSessionAttributeCount(
        Options: SwiftEOS_SessionDetails_GetSessionAttributeCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try typecastIntResult { 
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_SessionDetails_GetSessionAttributeCount(
                        Handle,
                        Options
                    ) } } }
    }
}
