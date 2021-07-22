import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorageFileTransferRequest_GetFileRequestStateTests: XCTestCase {
    public func testEOS_PlayerDataStorageFileTransferRequest_GetFileRequestState_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PlayerDataStorageFileTransferRequest_Release = { PlayerDataStorageFileTransferHandle in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_Release")
                XCTAssertNil(PlayerDataStorageFileTransferHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState = { Handle in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState")
                XCTAssertNil(Handle)
                return .zero
            }
            defer { __on_EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorageFileTransferRequest_Actor = SwiftEOS_PlayerDataStorageFileTransferRequest_Actor(Handle: nil)
            
            // When SDK function is called
            try object.GetFileRequestState()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState"])
        }
        
        // Then
        __on_EOS_PlayerDataStorageFileTransferRequest_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState", "EOS_PlayerDataStorageFileTransferRequest_Release"])
    }
}
