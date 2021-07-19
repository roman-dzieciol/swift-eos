import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_ReceiveMessageFromServerTests: XCTestCase {
    public func testEOS_AntiCheatClient_ReceiveMessageFromServer_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_ReceiveMessageFromServer = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.Data)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_ReceiveMessageFromServer")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_ReceiveMessageFromServer = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.ReceiveMessageFromServer(Data: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_ReceiveMessageFromServer"])
        }
    }
}
