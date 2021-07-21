import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_RegisterEventTests: XCTestCase {
    public func testEOS_AntiCheatServer_RegisterEvent_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_RegisterEvent = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_RegisterEvent")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_REGISTEREVENT_API_LATEST)
                XCTAssertEqual(Options!.pointee.EventId, .zero)
                XCTAssertNil(Options!.pointee.EventName)
                XCTAssertEqual(Options!.pointee.EventType, .zero)
                XCTAssertEqual(Options!.pointee.ParamDefsCount, .zero)
                XCTAssertNil(Options!.pointee.ParamDefs)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_RegisterEvent = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.RegisterEvent(
                EventId: .zero,
                EventName: nil,
                EventType: .zero,
                ParamDefs: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_RegisterEvent"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_RegisterEvent"])
    }
}
