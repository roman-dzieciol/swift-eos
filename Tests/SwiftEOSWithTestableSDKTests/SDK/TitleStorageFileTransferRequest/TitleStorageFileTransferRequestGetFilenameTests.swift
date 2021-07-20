import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorageFileTransferRequest_GetFilenameTests: XCTestCase {
    public func testEOS_TitleStorageFileTransferRequest_GetFilename_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_TitleStorageFileTransferRequest_Release = { TitleStorageFileTransferHandle in
                XCTAssertNil(TitleStorageFileTransferHandle)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_TitleStorageFileTransferRequest_GetFilename = { Handle, FilenameStringBufferSizeBytes, OutStringBuffer, OutStringLength in
                XCTAssertNil(Handle)
                XCTAssertEqual(FilenameStringBufferSizeBytes, .zero)
                XCTAssertNotNil(OutStringBuffer)
                XCTAssertNotNil(OutStringLength)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_GetFilename")
                return .zero
            }
            defer { __on_EOS_TitleStorageFileTransferRequest_GetFilename = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorageFileTransferRequest_Actor = SwiftEOS_TitleStorageFileTransferRequest_Actor(Handle: nil)
            
            // When SDK function is called
            let result: String? = try object.GetFilename(FilenameStringBufferSizeBytes: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_GetFilename"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_TitleStorageFileTransferRequest_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_GetFilename", "EOS_TitleStorageFileTransferRequest_Release"])
    }
}
