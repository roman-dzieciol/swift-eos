import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sanctions_CopyPlayerSanctionByIndexTests: XCTestCase {
    public func testEOS_Sanctions_CopyPlayerSanctionByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sanctions_CopyPlayerSanctionByIndex = { Handle, Options, OutSanction in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.SanctionIndex, .zero)
                XCTAssertNil(OutSanction)
                TestGlobals.current.sdkReceived.append("EOS_Sanctions_CopyPlayerSanctionByIndex")
                return .zero
            }
            defer { __on_EOS_Sanctions_CopyPlayerSanctionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Sanctions_Actor = SwiftEOS_Sanctions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Sanctions_PlayerSanction? = try object.CopyPlayerSanctionByIndex(
                TargetUserId: nil,
                SanctionIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sanctions_CopyPlayerSanctionByIndex"])
            XCTAssertNil(result)
        }
    }
}
