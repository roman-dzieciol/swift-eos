import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_ProtectMessageTests: XCTestCase {
    public func testEOS_AntiCheatServer_ProtectMessage_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_ProtectMessage = { Handle, Options, OutBuffer, OutBufferLengthBytes in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_PROTECTMESSAGE_API_LATEST)
                XCTAssertNil(Options!.pointee.ClientHandle)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.Data)
                XCTAssertEqual(Options!.pointee.OutBufferSizeBytes, .zero)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(OutBufferLengthBytes)
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_ProtectMessage")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_ProtectMessage = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            let result: [UInt8]? = try object.ProtectMessage(
                ClientHandle: nil,
                Data: nil,
                OutBufferSizeBytes: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_ProtectMessage"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_ProtectMessage"])
    }
}
