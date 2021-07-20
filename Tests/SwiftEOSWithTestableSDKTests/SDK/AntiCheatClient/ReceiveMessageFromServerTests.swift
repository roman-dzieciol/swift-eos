import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_ReceiveMessageFromServerTests: XCTestCase {
    public func testEOS_AntiCheatClient_ReceiveMessageFromServer_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_ReceiveMessageFromServer = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMSERVER_API_LATEST)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.Data)
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_ReceiveMessageFromServer")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_ReceiveMessageFromServer = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            try object.ReceiveMessageFromServer(Data: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_ReceiveMessageFromServer"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_ReceiveMessageFromServer"])
    }
}
