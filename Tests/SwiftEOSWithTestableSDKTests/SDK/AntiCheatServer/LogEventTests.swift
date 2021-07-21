import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogEventTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogEvent_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogEvent = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_LogEvent")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGEVENT_API_LATEST)
                XCTAssertNil(Options!.pointee.ClientHandle)
                XCTAssertEqual(Options!.pointee.EventId, .zero)
                XCTAssertEqual(Options!.pointee.ParamsCount, .zero)
                XCTAssertNil(Options!.pointee.Params)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogEvent = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.LogEvent(
                ClientHandle: nil,
                EventId: .zero,
                Params: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogEvent"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogEvent"])
    }
}
