import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogEventParamPairTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogEventParamPair() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogEventParamPair.self) { cstruct in
            XCTAssertEqual(cstruct.ParamValueType, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ParamValue.ClientHandle)
            XCTAssertNil(cstruct.ParamValue.String)
            XCTAssertEqual(cstruct.ParamValue.UInt32, .zero)
            XCTAssertEqual(cstruct.ParamValue.Int32, .zero)
            XCTAssertEqual(cstruct.ParamValue.UInt64, .zero)
            XCTAssertEqual(cstruct.ParamValue.Int64, .zero)
            XCTAssertEqual(cstruct.ParamValue.Vec3f.x, .zero)
            XCTAssertEqual(cstruct.ParamValue.Vec3f.y, .zero)
            XCTAssertEqual(cstruct.ParamValue.Vec3f.z, .zero)
            XCTAssertEqual(cstruct.ParamValue.Quat.w, .zero)
            XCTAssertEqual(cstruct.ParamValue.Quat.x, .zero)
            XCTAssertEqual(cstruct.ParamValue.Quat.y, .zero)
            XCTAssertEqual(cstruct.ParamValue.Quat.z, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogEventParamPair(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ParamValueType, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.ParamValue.ParamValue.ClientHandle)
            XCTAssertNil(swiftObject.ParamValue.ParamValue.String)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.UInt32, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Int32, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.UInt64, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Int64, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Vec3f.x, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Vec3f.y, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Vec3f.z, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Quat.w, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Quat.x, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Quat.y, .zero)
            XCTAssertEqual(swiftObject.ParamValue.ParamValue.Quat.z, .zero) }
    }
}
