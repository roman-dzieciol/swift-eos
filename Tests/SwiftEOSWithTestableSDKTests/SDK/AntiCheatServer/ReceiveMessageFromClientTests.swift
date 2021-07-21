import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_ReceiveMessageFromClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_ReceiveMessageFromClient_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_ReceiveMessageFromClient = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_ReceiveMessageFromClient")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_RECEIVEMESSAGEFROMCLIENT_API_LATEST)
                XCTAssertNil(Options!.pointee.ClientHandle)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.Data)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_ReceiveMessageFromClient = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.ReceiveMessageFromClient(
                ClientHandle: nil,
                Data: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_ReceiveMessageFromClient"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_ReceiveMessageFromClient"])
    }
}
