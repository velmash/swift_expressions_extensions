/* 클래스 */

import Swift

//MARK: - 정의

class 이름 {
    /* 구현부 */
}

//MARK: 프로퍼티 및 메서드

class Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod () {
        print("instance method")
    }
    
    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 불가 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}

//MARK: 클래스 사용

var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200
// mutableReference.immutableProperty = 200

let  immutableReference: Sample = Sample()

immutableReference.mutableProperty = 200
// immutableReference.immutableProperty = 200

// immutableReference = mutableReference

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// mutableReference.mutableProperty = 400
// mutableReference.typeMethod()


//MARK: - 학생 클래스

class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce()  {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생타입입니다

var velmash: Student = Student()
velmash.name = "velmash"
velmash.class = "스위프트"
velmash.selfIntroduce() // 저는 스튀프트반 velmash입니다.

let jina: Student = Student()
jina.name = "jina"
jina.selfIntroduce() // 저는 스위프트반 jina입니다.
