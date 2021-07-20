import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorageFileTransferRequest_GetFileRequestStateTests: XCTestCase {
    public func testEOS_PlayerDataStorageFileTransferRequest_GetFileRequestState_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PlayerDataStorageFileTransferRequest_Release = { PlayerDataStorageFileTransferHandle in
                XCTAssertNil(PlayerDataStorageFileTransferHandle)
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState = { Handle in
                XCTAssertNil(Handle)
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState")
                return .zero
            }
            defer { __on_EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorageFileTransferRequest_Actor = SwiftEOS_PlayerDataStorageFileTransferRequest_Actor(Handle: nil)
            
            // When SDK function is called
            try object.GetFileRequestState()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState"])
        }
        
        // Then
        __on_EOS_PlayerDataStorageFileTransferRequest_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState", "EOS_PlayerDataStorageFileTransferRequest_Release"])
    }
}
