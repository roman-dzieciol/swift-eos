import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sanctions_GetPlayerSanctionCountTests: XCTestCase {
    public func testEOS_Sanctions_GetPlayerSanctionCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sanctions_GetPlayerSanctionCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                TestGlobals.current.sdkReceived.append("EOS_Sanctions_GetPlayerSanctionCount")
                return .zero
            }
            defer { __on_EOS_Sanctions_GetPlayerSanctionCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Sanctions_Actor = SwiftEOS_Sanctions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetPlayerSanctionCount(TargetUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sanctions_GetPlayerSanctionCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
