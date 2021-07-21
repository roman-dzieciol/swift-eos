import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogGameRoundStartTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogGameRoundStart_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogGameRoundStart = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_LogGameRoundStart")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGGAMEROUNDSTART_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionIdentifier)
                XCTAssertNil(Options!.pointee.LevelName)
                XCTAssertNil(Options!.pointee.ModeName)
                XCTAssertEqual(Options!.pointee.RoundTimeSeconds, .zero)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogGameRoundStart = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.LogGameRoundStart(
                SessionIdentifier: nil,
                LevelName: nil,
                ModeName: nil,
                RoundTimeSeconds: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogGameRoundStart"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogGameRoundStart"])
    }
}
