# 화면상의 객체를 제어하는 방법

@IBOutlet은 프로퍼티에, @IBAction 은 메소드에 각각 추가되는데 이 어노테이션이 붙어있는 프로퍼티나 메소드는 인터페이스 빌더에 관련된 것이라는 의미를 나타낸다. 

### 3.1 @IBOutlet 과 @IBAction 

@IBOutlet 과 @IBAction 을 모아서 인터페이스 빌더 어노테이션이라고 합니다. 처음에 앱이 빌드될 때 컴파일러가 체크하고 연결 정보를 찾아 인터페이스 빌더의 객체와 서로 연결해줍니다. 이와 연결된 정보는 Xcode 의 Attribute 탭에서 확인할 수 있다. 

### 3.1.1 @IBOutlet - 객체의 참조

@IBOutlet 은 화면상의 객체를 소스 코드에서 참조하기 위해 사용하는 어노테이션이다. 주로 객체의 속성을 제어할 목적으로 클래스의 프로퍼티에 연결한다. @IBOutlet 으로 정의된 프로퍼티를 아울렛 변수라고 한다. 
 
[Storage] 항목 중 Strong/Weak 두 가지 값중 타입의 차이는 메모리 회수 정책에 있다. 일번작으로 변수나 상수는 다른 곳에서 참조되고 있을 경우 메모리에서 제거되지 않는 것이 원칙이지만, Weak 타입으로 선언된 변수나 상수는 다른곳에서 참조되고 있더라도 시스템이 임의로 메모리에서 제거할 수 있다. 
 
저장된 값이 지워질 수도 있는 불안함에도 불구하고 Weak 타입이 필요한 이유는 메모리 관리의 이슈이다. Strong 타입 객체들끼리 상호 참조되는 일이 발생하는 경우, 어떤 경우에도 참조 카운트가 0이 되지 않으므로 애플리케이션이 실행되는 한 영원히 메모리에서 제거되지 않는데 이는 메모리 누수로 이어진다. 이때 상호 참조되는 객체의 어느 한쪽 타입을 Weak 타입으로 지정하면 시스템에 의해 임의로 제거가 가능하므로 순환되는 상호 참조로 부터 벗어날 수 있다. 자세한건 ARC 참고
 
### 3.1.2 @IBAction - 객체의 이벤트 제어
 
@IBAction은 객체의 이벤트를 제어할 때 사용하는 어노테이션이다. 버튼의 외형 및 성질에 관한 값을 변경하려면 @IBOutlet 을 사용해야 하고, 사용자의 액션이 발생했을 때 수행해야 하는 작업이 있다면 메소드와 함께 사용되는 @IBAction 을 사용해야 한다. 단 대부분의 객체와 연결할 수 있는 아울렛 변수와 달리 액션 메소드는 버튼이나 테이블 셀 등 사용자와 상호 반응할 수 있는 객체를 연결할 때만 사용할 수 있다는 제한이 있다.
 
### 