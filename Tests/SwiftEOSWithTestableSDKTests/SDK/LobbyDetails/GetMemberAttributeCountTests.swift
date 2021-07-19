import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetMemberAttributeCountTests: XCTestCase {
    public func testEOS_LobbyDetails_GetMemberAttributeCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_GetMemberAttributeCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_GetMemberAttributeCount")
                return .zero
            }
            defer { __on_EOS_LobbyDetails_GetMemberAttributeCount = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetMemberAttributeCount(TargetUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_GetMemberAttributeCount", "EOS_LobbyDetails_Release"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
    }
}
