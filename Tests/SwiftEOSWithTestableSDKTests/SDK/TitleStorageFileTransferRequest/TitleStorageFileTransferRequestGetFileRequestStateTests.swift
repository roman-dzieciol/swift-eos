import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorageFileTransferRequest_GetFileRequestStateTests: XCTestCase {
    public func testEOS_TitleStorageFileTransferRequest_GetFileRequestState_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_TitleStorageFileTransferRequest_Release = { TitleStorageFileTransferHandle in
                XCTAssertNil(TitleStorageFileTransferHandle)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_TitleStorageFileTransferRequest_GetFileRequestState = { Handle in
                XCTAssertNil(Handle)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_GetFileRequestState")
                return .zero
            }
            defer { __on_EOS_TitleStorageFileTransferRequest_GetFileRequestState = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorageFileTransferRequest_Actor = SwiftEOS_TitleStorageFileTransferRequest_Actor(Handle: nil)
            
            // When SDK function is called
            try object.GetFileRequestState()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_GetFileRequestState"])
        }
        
        // Then
        __on_EOS_TitleStorageFileTransferRequest_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_GetFileRequestState", "EOS_TitleStorageFileTransferRequest_Release"])
    }
}
