import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_EndSessionTests: XCTestCase {
    public func testEOS_AntiCheatClient_EndSession_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_EndSession = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_EndSession")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_EndSession = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.EndSession()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_EndSession"])
        }
    }
}
