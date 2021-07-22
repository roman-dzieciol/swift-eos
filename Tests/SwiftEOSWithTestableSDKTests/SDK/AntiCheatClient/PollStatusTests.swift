import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatClient_PollStatusTests: XCTestCase {
    public func testEOS_AntiCheatClient_PollStatus_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            var ViolationType: EOS_EAntiCheatClientViolationType? = nil
            var OutMessage: String? = nil
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_PollStatus = { Handle, Options, ViolationType, OutMessage in
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_PollStatus")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_POLLSTATUS_API_LATEST)
                XCTAssertEqual(Options!.pointee.OutMessageLength, .zero)
                XCTAssertNotNil(ViolationType)
                XCTAssertNil(OutMessage)
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_PollStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            try object.PollStatus(
                OutMessageLength: .zero,
                ViolationType: &ViolationType,
                OutMessage: &OutMessage
            )
            
            // Then
            XCTAssertEqual(ViolationType, .zero)
            XCTAssertEqual(OutMessage, "")
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_PollStatus"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_PollStatus"])
    }
}
