import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthTests: XCTestCase {
    public func testEOS_AntiCheatServer_GetProtectMessageOutputLength_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_GetProtectMessageOutputLength = { Handle, Options, OutBufferLengthBytes in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNotNil(OutBufferLengthBytes)
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_GetProtectMessageOutputLength")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_GetProtectMessageOutputLength = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int? = try object.GetProtectMessageOutputLength(DataLengthBytes: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_GetProtectMessageOutputLength"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_GetProtectMessageOutputLength"])
    }
}
