import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatServer_LogGameRoundEndTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogGameRoundEnd_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogGameRoundEnd = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_LogGameRoundEnd")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGGAMEROUNDEND_API_LATEST)
                XCTAssertEqual(Options!.pointee.WinningTeamId, .zero)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogGameRoundEnd = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.LogGameRoundEnd(WinningTeamId: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogGameRoundEnd"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogGameRoundEnd"])
    }
}
