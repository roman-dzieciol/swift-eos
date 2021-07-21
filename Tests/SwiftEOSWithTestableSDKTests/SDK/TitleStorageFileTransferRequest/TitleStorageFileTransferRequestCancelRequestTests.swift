import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorageFileTransferRequest_CancelRequestTests: XCTestCase {
    public func testEOS_TitleStorageFileTransferRequest_CancelRequest_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_TitleStorageFileTransferRequest_Release = { TitleStorageFileTransferHandle in
                GTest.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_Release")
                XCTAssertNil(TitleStorageFileTransferHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_TitleStorageFileTransferRequest_CancelRequest = { Handle in
                GTest.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_CancelRequest")
                XCTAssertNil(Handle)
                return .zero
            }
            defer { __on_EOS_TitleStorageFileTransferRequest_CancelRequest = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorageFileTransferRequest_Actor = SwiftEOS_TitleStorageFileTransferRequest_Actor(Handle: nil)
            
            // When SDK function is called
            try object.CancelRequest()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_CancelRequest"])
        }
        
        // Then
        __on_EOS_TitleStorageFileTransferRequest_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_CancelRequest", "EOS_TitleStorageFileTransferRequest_Release"])
    }
}
