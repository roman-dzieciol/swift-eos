import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatClient_BeginSessionTests: XCTestCase {
    public func testEOS_AntiCheatClient_BeginSession_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_BeginSession = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_BeginSession")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_BEGINSESSION_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Mode, .zero)
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_BeginSession = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            try object.BeginSession(
                LocalUserId: nil,
                Mode: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_BeginSession"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_BeginSession"])
    }
}
