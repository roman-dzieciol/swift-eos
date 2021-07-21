import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorageFileTransferRequest_GetFilenameTests: XCTestCase {
    public func testEOS_TitleStorageFileTransferRequest_GetFilename_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_TitleStorageFileTransferRequest_Release = { TitleStorageFileTransferHandle in
                GTest.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_Release")
                XCTAssertNil(TitleStorageFileTransferHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_TitleStorageFileTransferRequest_GetFilename = { Handle, FilenameStringBufferSizeBytes, OutStringBuffer, OutStringLength in
                GTest.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_GetFilename")
                XCTAssertNil(Handle)
                XCTAssertEqual(FilenameStringBufferSizeBytes, .zero)
                XCTAssertNil(OutStringBuffer)
                XCTAssertNotNil(OutStringLength)
                return .zero
            }
            defer { __on_EOS_TitleStorageFileTransferRequest_GetFilename = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorageFileTransferRequest_Actor = SwiftEOS_TitleStorageFileTransferRequest_Actor(Handle: nil)
            
            // When SDK function is called
            let result: String = try object.GetFilename(FilenameStringBufferSizeBytes: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_GetFilename"])
            XCTAssertEqual(result, "")
        }
        
        // Then
        __on_EOS_TitleStorageFileTransferRequest_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_GetFilename", "EOS_TitleStorageFileTransferRequest_Release"])
    }
}
