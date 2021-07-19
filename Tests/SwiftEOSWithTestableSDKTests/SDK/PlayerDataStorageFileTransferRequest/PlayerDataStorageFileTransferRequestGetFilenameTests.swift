import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorageFileTransferRequest_GetFilenameTests: XCTestCase {
    public func testEOS_PlayerDataStorageFileTransferRequest_GetFilename_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PlayerDataStorageFileTransferRequest_Release = { PlayerDataStorageFileTransferHandle in
                XCTAssertNil(PlayerDataStorageFileTransferHandle)
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorageFileTransferRequest_GetFilename = { Handle, FilenameStringBufferSizeBytes, OutStringBuffer, OutStringLength in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(FilenameStringBufferSizeBytes, .zero)
                XCTAssertNil(OutStringBuffer)
                XCTAssertNil(OutStringLength)
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_GetFilename")
                return .zero
            }
            defer { __on_EOS_PlayerDataStorageFileTransferRequest_GetFilename = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorageFileTransferRequest_Actor = SwiftEOS_PlayerDataStorageFileTransferRequest_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: String? = try object.GetFilename(FilenameStringBufferSizeBytes: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_GetFilename", "EOS_PlayerDataStorageFileTransferRequest_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_PlayerDataStorageFileTransferRequest_Release = nil
    }
}
