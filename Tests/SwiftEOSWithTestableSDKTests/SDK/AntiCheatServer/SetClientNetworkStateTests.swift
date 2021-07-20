import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_SetClientNetworkStateTests: XCTestCase {
    public func testEOS_AntiCheatServer_SetClientNetworkState_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_SetClientNetworkState = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_SETCLIENTNETWORKSTATE_API_LATEST)
                XCTAssertNil(Options!.pointee.ClientHandle)
                XCTAssertEqual(Options!.pointee.bIsNetworkActive, .zero)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_SetClientNetworkState")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_SetClientNetworkState = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetClientNetworkState(
                ClientHandle: nil,
                bIsNetworkActive: false
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_SetClientNetworkState"])
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_SetClientNetworkState"])
    }
}
