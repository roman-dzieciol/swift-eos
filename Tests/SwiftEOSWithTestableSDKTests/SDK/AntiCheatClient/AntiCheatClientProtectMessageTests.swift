import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_ProtectMessageTests: XCTestCase {
    public func testEOS_AntiCheatClient_ProtectMessage_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_ProtectMessage = { Handle, Options, OutBuffer, OutBufferLengthBytes in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_PROTECTMESSAGE_API_LATEST)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.Data)
                XCTAssertEqual(Options!.pointee.OutBufferSizeBytes, .zero)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(OutBufferLengthBytes)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_ProtectMessage")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_ProtectMessage = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: [UInt8]? = try object.ProtectMessage(
                Data: nil,
                OutBufferSizeBytes: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_ProtectMessage"])
            XCTAssertNil(result)
        }
    }
}
