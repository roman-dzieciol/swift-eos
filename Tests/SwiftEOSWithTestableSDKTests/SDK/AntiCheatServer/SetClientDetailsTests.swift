import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_SetClientDetailsTests: XCTestCase {
    public func testEOS_AntiCheatServer_SetClientDetails_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_SetClientDetails = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.ClientHandle)
                XCTAssertEqual(Options!.pointee.ClientFlags, .zero)
                XCTAssertEqual(Options!.pointee.ClientInputMethod, .zero)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_SetClientDetails")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_SetClientDetails = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetClientDetails(
                ClientHandle: nil,
                ClientFlags: .zero,
                ClientInputMethod: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_SetClientDetails"])
        }
    }
}
