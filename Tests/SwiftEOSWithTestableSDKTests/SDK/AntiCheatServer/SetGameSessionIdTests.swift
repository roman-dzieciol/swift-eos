import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_SetGameSessionIdTests: XCTestCase {
    public func testEOS_AntiCheatServer_SetGameSessionId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_SetGameSessionId = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_SetGameSessionId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_SETGAMESESSIONID_API_LATEST)
                XCTAssertNil(Options!.pointee.GameSessionId)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_SetGameSessionId = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetGameSessionId(GameSessionId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_SetGameSessionId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_SetGameSessionId"])
    }
}
