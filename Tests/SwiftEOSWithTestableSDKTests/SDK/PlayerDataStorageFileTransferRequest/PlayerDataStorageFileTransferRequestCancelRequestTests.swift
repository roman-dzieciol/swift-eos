import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorageFileTransferRequest_CancelRequestTests: XCTestCase {
    public func testEOS_PlayerDataStorageFileTransferRequest_CancelRequest_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PlayerDataStorageFileTransferRequest_Release = { PlayerDataStorageFileTransferHandle in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_Release")
                XCTAssertNil(PlayerDataStorageFileTransferHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorageFileTransferRequest_CancelRequest = { Handle in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_CancelRequest")
                XCTAssertNil(Handle)
                return .zero
            }
            defer { __on_EOS_PlayerDataStorageFileTransferRequest_CancelRequest = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorageFileTransferRequest_Actor = SwiftEOS_PlayerDataStorageFileTransferRequest_Actor(Handle: nil)
            
            // When SDK function is called
            try object.CancelRequest()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_CancelRequest"])
        }
        
        // Then
        __on_EOS_PlayerDataStorageFileTransferRequest_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_CancelRequest", "EOS_PlayerDataStorageFileTransferRequest_Release"])
    }
}
