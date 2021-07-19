import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_PollStatusTests: XCTestCase {
    public func testEOS_AntiCheatClient_PollStatus_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            var ViolationType: EOS_EAntiCheatClientViolationType? = nil
            var OutMessage: String? = nil
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_PollStatus = { Handle, Options, ViolationType, OutMessage in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.OutMessageLength, .zero)
                XCTAssertNil(ViolationType)
                XCTAssertNil(OutMessage)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_PollStatus")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_PollStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.PollStatus(
                OutMessageLength: .zero,
                ViolationType: &ViolationType,
                OutMessage: &OutMessage
            )
            
            // Then
            XCTAssertNil(ViolationType)
            XCTAssertNil(OutMessage)
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_PollStatus"])
        }
    }
}
