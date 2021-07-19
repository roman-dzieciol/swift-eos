import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorageFileTransferRequest_CancelRequestTests: XCTestCase {
    public func testEOS_TitleStorageFileTransferRequest_CancelRequest_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_TitleStorageFileTransferRequest_Release = { TitleStorageFileTransferHandle in
                XCTAssertNil(TitleStorageFileTransferHandle)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_TitleStorageFileTransferRequest_CancelRequest = { Handle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorageFileTransferRequest_CancelRequest")
                return .zero
            }
            defer { __on_EOS_TitleStorageFileTransferRequest_CancelRequest = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorageFileTransferRequest_Actor = SwiftEOS_TitleStorageFileTransferRequest_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.CancelRequest()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorageFileTransferRequest_CancelRequest", "EOS_TitleStorageFileTransferRequest_Release"])
        }
        
        // Then
        __on_EOS_TitleStorageFileTransferRequest_Release = nil
    }
}
