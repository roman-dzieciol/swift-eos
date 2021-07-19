import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogGameRoundStartTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogGameRoundStart_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogGameRoundStart = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.SessionIdentifier)
                XCTAssertNil(Options!.pointee.LevelName)
                XCTAssertNil(Options!.pointee.ModeName)
                XCTAssertEqual(Options!.pointee.RoundTimeSeconds, .zero)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_LogGameRoundStart")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogGameRoundStart = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LogGameRoundStart(
                SessionIdentifier: nil,
                LevelName: nil,
                ModeName: nil,
                RoundTimeSeconds: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_LogGameRoundStart"])
        }
    }
}
