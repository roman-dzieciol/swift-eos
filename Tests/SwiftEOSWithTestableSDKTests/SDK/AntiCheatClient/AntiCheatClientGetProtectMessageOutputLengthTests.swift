import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_GetProtectMessageOutputLengthTests: XCTestCase {
    public func testEOS_AntiCheatClient_GetProtectMessageOutputLength_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_GetProtectMessageOutputLength = { Handle, Options, OutBufferLengthBytes in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNotNil(OutBufferLengthBytes)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_GetProtectMessageOutputLength")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_GetProtectMessageOutputLength = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int? = try object.GetProtectMessageOutputLength(DataLengthBytes: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_GetProtectMessageOutputLength"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_GetProtectMessageOutputLength"])
    }
}
