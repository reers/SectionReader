// The Swift Programming Language
// https://docs.swift.org/swift-book

import SectionReader

@_used
@_section("__DATA,__inttest")
let my_global1: Int = 11

@_used
@_section("__DATA,__inttest")
let my_global2: Int = 22

@_used
@_section("__DATA,__strtest")
let my_global3: StaticString = "2rdsf*"

@_used
@_section("__DATA,__strtest")
let my_global4: StaticString = "22sfasfd23"

public typealias RheaFunction = @convention(c) (Int) -> Void

@_used
@_section("__DATA,__functest")
let my_global5: RheaFunction = { int in
    print(int)
}

@_used
@_section("__DATA,__functest")
let my_global6: RheaFunction = { int in
    print(int)
}

public typealias RheaRegisterInfo = (StaticString, RheaFunction)

@_used
@_section("__DATA,__tupletest")
let my_global7: RheaRegisterInfo = ("111", { int in
    print(int)
})

@_used
@_section("__DATA,__tupletest")
let my_global8: RheaRegisterInfo = ("222", { int in
    print(int)
})

@_used
@_section("__MYCUSTOM,__tuple2test")
let my_global9: RheaRegisterInfo = ("aaaa", { int in
    print(int)
})

@_used
@_section("__MYCUSTOM,__tuple2test")
let my_global10: RheaRegisterInfo = ("bbbb", { int in
    print(int)
})


@main
struct Demo {
    static func main() {
        print(SectionReader.read(Int.self, section: "__inttest"))
        print(SectionReader.read(StaticString.self, section: "__strtest"))
        SectionReader.read(RheaFunction.self, section: "__functest").forEach({ $0(33) })
        
        SectionReader.read(RheaRegisterInfo.self, section: "__tupletest").forEach({
            print($0.0)
            $0.1(44)
        })
        
        SectionReader.read(RheaRegisterInfo.self, segment: "__MYCUSTOM", section: "__tuple2test").forEach({
            print($0.0)
            $0.1(55)
        })
    }
}
