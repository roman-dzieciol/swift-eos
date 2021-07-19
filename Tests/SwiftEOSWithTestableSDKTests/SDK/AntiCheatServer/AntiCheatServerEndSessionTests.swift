import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_EndSessionTests: XCTestCase {
    public func testEOS_AntiCheatServer_EndSession_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_EndSession = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_EndSession")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_EndSession = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.EndSession()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_EndSession"])
        }
    }
}
