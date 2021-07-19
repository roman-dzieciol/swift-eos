import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_GetStatsCountTests: XCTestCase {
    public func testEOS_Stats_GetStatsCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Stats_GetStatsCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                TestGlobals.current.sdkReceived.append("EOS_Stats_GetStatsCount")
                return .zero
            }
            defer { __on_EOS_Stats_GetStatsCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetStatsCount(TargetUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Stats_GetStatsCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
