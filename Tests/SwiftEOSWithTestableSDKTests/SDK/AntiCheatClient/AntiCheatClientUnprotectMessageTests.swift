import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_UnprotectMessageTests: XCTestCase {
    public func testEOS_AntiCheatClient_UnprotectMessage_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_UnprotectMessage = { Handle, Options, OutBuffer, OutBufferLengthBytes in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.Data)
                XCTAssertEqual(Options!.pointee.OutBufferSizeBytes, .zero)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(OutBufferLengthBytes)
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_UnprotectMessage")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_UnprotectMessage = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            let result: [UInt8]? = try object.UnprotectMessage(
                Data: nil,
                OutBufferSizeBytes: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_UnprotectMessage"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_UnprotectMessage"])
    }
}
