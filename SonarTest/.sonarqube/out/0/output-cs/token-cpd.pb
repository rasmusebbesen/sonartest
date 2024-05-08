ˆ%
\/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/ValueObjects/Colour.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
ValueObjects '
;' (
public 
class 
Colour 
( 
string 
code 
)  
:! "
ValueObject# .
{ 
public 

static 
Colour 
From 
( 
string $
code% )
)) *
{ 
var 
colour 
= 
new 
Colour 
(  
code  $
)$ %
;% &
if		 

(		 
!		 
SupportedColours		 
.		 
Contains		 &
(		& '
colour		' -
)		- .
)		. /
{

 	
throw 
new &
UnsupportedColourException 0
(0 1
code1 5
)5 6
;6 7
} 	
return 
colour 
; 
} 
public 

static 
Colour 
White 
=> !
new" %
(% &
$str& /
)/ 0
;0 1
public 

static 
Colour 
Red 
=> 
new  #
(# $
$str$ -
)- .
;. /
public 

static 
Colour 
Orange 
=>  "
new# &
(& '
$str' 0
)0 1
;1 2
public 

static 
Colour 
Yellow 
=>  "
new# &
(& '
$str' 0
)0 1
;1 2
public 

static 
Colour 
Green 
=> !
new" %
(% &
$str& /
)/ 0
;0 1
public 

static 
Colour 
Blue 
=>  
new! $
($ %
$str% .
). /
;/ 0
public 

static 
Colour 
Purple 
=>  "
new# &
(& '
$str' 0
)0 1
;1 2
public 

static 
Colour 
Grey 
=>  
new! $
($ %
$str% .
). /
;/ 0
public!! 

string!! 
Code!! 
{!! 
get!! 
;!! 
private!! %
set!!& )
;!!) *
}!!+ ,
=!!- .
string!!/ 5
.!!5 6
IsNullOrWhiteSpace!!6 H
(!!H I
code!!I M
)!!M N
?!!O P
$str!!Q Z
:!![ \
code!!] a
;!!a b
public## 

static## 
implicit## 
operator## #
string##$ *
(##* +
Colour##+ 1
colour##2 8
)##8 9
{$$ 
return%% 
colour%% 
.%% 
ToString%% 
(%% 
)%%  
;%%  !
}&& 
public(( 

static(( 
explicit(( 
operator(( #
Colour(($ *
(((* +
string((+ 1
code((2 6
)((6 7
{)) 
return** 
From** 
(** 
code** 
)** 
;** 
}++ 
public-- 

override-- 
string-- 
ToString-- #
(--# $
)--$ %
{.. 
return// 
Code// 
;// 
}00 
	protected22 
static22 
IEnumerable22  
<22  !
Colour22! '
>22' (
SupportedColours22) 9
{33 
get44 
{55 	
yield66 
return66 
White66 
;66 
yield77 
return77 
Red77 
;77 
yield88 
return88 
Orange88 
;88  
yield99 
return99 
Yellow99 
;99  
yield:: 
return:: 
Green:: 
;:: 
yield;; 
return;; 
Blue;; 
;;; 
yield<< 
return<< 
Purple<< 
;<<  
yield== 
return== 
Grey== 
;== 
}>> 	
}?? 
	protectedAA 
overrideAA 
IEnumerableAA "
<AA" #
objectAA# )
>AA) *!
GetEqualityComponentsAA+ @
(AA@ A
)AAA B
{BB 
yieldCC 
returnCC 
CodeCC 
;CC 
}DD 
}EE W
U/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/GlobalUsings.cs“
n/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Exceptions/UnsupportedColourException.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 

Exceptions %
;% &
public 
class &
UnsupportedColourException '
:( )
	Exception* 3
{ 
public 
&
UnsupportedColourException %
(% &
string& ,
code- 1
)1 2
: 	
base
 
( 
$" 
$str 
{ 
code 
}  
$str  2
"2 3
)3 4
{ 
} 
}		 ƒ
d/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Events/TodoItemDeletedEvent.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Events !
;! "
public 
class  
TodoItemDeletedEvent !
:" #
	BaseEvent$ -
{ 
public 
 
TodoItemDeletedEvent 
(  
TodoItem  (
item) -
)- .
{ 
Item 
= 
item 
; 
} 
public

 

TodoItem

 
Item

 
{

 
get

 
;

 
}

  !
} ƒ
d/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Events/TodoItemCreatedEvent.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Events !
;! "
public 
class  
TodoItemCreatedEvent !
:" #
	BaseEvent$ -
{ 
public 
 
TodoItemCreatedEvent 
(  
TodoItem  (
item) -
)- .
{ 
Item 
= 
item 
; 
} 
public

 

TodoItem

 
Item

 
{

 
get

 
;

 
}

  !
}  
f/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Events/TodoItemCompletedEvent.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Events !
;! "
public 
class "
TodoItemCompletedEvent #
:$ %
	BaseEvent& /
{ 
public 
"
TodoItemCompletedEvent !
(! "
TodoItem" *
item+ /
)/ 0
{ 
Item 
= 
item 
; 
} 
public

 

TodoItem

 
Item

 
{

 
get

 
;

 
}

  !
} ±
\/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Enums/PriorityLevel.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Enums  
;  !
public 
enum 
PriorityLevel 
{ 
None 
=	 

$num 
, 
Low 
= 	
$num
 
, 
Medium 

= 
$num 
, 
High 
=	 

$num 
}		 Ó
Z/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Entities/TodoList.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Entities #
;# $
public 
class 
TodoList 
: 
BaseAuditableEntity +
{ 
public 

string 
? 
Title 
{ 
get 
; 
set  #
;# $
}% &
public 

Colour 
Colour 
{ 
get 
; 
set  #
;# $
}% &
=' (
Colour) /
./ 0
White0 5
;5 6
public		 

IList		 
<		 
TodoItem		 
>		 
Items		  
{		! "
get		# &
;		& '
private		( /
set		0 3
;		3 4
}		5 6
=		7 8
new		9 <
List		= A
<		A B
TodoItem		B J
>		J K
(		K L
)		L M
;		M N
}

 á
Z/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Entities/TodoItem.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Entities #
;# $
public 
class 
TodoItem 
: 
BaseAuditableEntity +
{ 
public 

int 
ListId 
{ 
get 
; 
set  
;  !
}" #
public 

string 
? 
Title 
{ 
get 
; 
set  #
;# $
}% &
public		 

string		 
?		 
Note		 
{		 
get		 
;		 
set		 "
;		" #
}		$ %
public 

PriorityLevel 
Priority !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

DateTime 
? 
Reminder 
{ 
get  #
;# $
set% (
;( )
}* +
private 
bool 
_done 
; 
public 

bool 
Done 
{ 
get 
=> 
_done 
; 
set 
{ 	
if 
( 
value 
&& 
! 
_done 
)  
{ 
AddDomainEvent 
( 
new ""
TodoItemCompletedEvent# 9
(9 :
this: >
)> ?
)? @
;@ A
} 
_done 
= 
value 
; 
} 	
} 
public 

TodoList 
List 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
}   á
X/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Constants/Roles.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
	Constants $
;$ %
public 
abstract 
class 
Roles 
{ 
public 

const 
string 
Administrator %
=& '
nameof( .
(. /
Administrator/ <
)< =
;= >
} É
[/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Constants/Policies.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
	Constants $
;$ %
public 
abstract 
class 
Policies 
{ 
public 

const 
string 
CanPurge  
=! "
nameof# )
() *
CanPurge* 2
)2 3
;3 4
} ê
[/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Common/ValueObject.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Common !
;! "
public 
abstract 
class 
ValueObject !
{ 
	protected 
static 
bool 
EqualOperator '
(' (
ValueObject( 3
left4 8
,8 9
ValueObject: E
rightF K
)K L
{ 
if 

( 
left 
is 
null 
^ 
right  
is! #
null$ (
)( )
{		 	
return

 
false

 
;

 
} 	
return 
left 
? 
. 
Equals 
( 
right !
!! "
)" #
!=$ &
false' ,
;, -
} 
	protected 
static 
bool 
NotEqualOperator *
(* +
ValueObject+ 6
left7 ;
,; <
ValueObject= H
rightI N
)N O
{ 
return 
! 
( 
EqualOperator 
( 
left #
,# $
right% *
)* +
)+ ,
;, -
} 
	protected 
abstract 
IEnumerable "
<" #
object# )
>) *!
GetEqualityComponents+ @
(@ A
)A B
;B C
public 

override 
bool 
Equals 
(  
object  &
?& '
obj( +
)+ ,
{ 
if 

( 
obj 
== 
null 
|| 
obj 
. 
GetType &
(& '
)' (
!=) +
GetType, 3
(3 4
)4 5
)5 6
{ 	
return 
false 
; 
} 	
var 
other 
= 
( 
ValueObject  
)  !
obj! $
;$ %
return !
GetEqualityComponents $
($ %
)% &
.& '
SequenceEqual' 4
(4 5
other5 :
.: ;!
GetEqualityComponents; P
(P Q
)Q R
)R S
;S T
}   
public"" 

override"" 
int"" 
GetHashCode"" #
(""# $
)""$ %
{## 
var$$ 
hash$$ 
=$$ 
new$$ 
HashCode$$ 
($$  
)$$  !
;$$! "
foreach&& 
(&& 
var&& 
	component&& 
in&& !!
GetEqualityComponents&&" 7
(&&7 8
)&&8 9
)&&9 :
{'' 	
hash(( 
.(( 
Add(( 
((( 
	component(( 
)(( 
;((  
})) 	
return++ 
hash++ 
.++ 

ToHashCode++ 
(++ 
)++  
;++  !
},, 
}-- Ú
Y/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Common/BaseEvent.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Common !
;! "
public 
abstract 
class 
	BaseEvent 
:  !
INotification" /
{ 
} æ
Z/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Common/BaseEntity.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Common !
;! "
public 
abstract 
class 

BaseEntity  
{ 
public		 

int		 
Id		 
{		 
get		 
;		 
set		 
;		 
}		 
private 
readonly 
List 
< 
	BaseEvent #
># $
_domainEvents% 2
=3 4
new5 8
(8 9
)9 :
;: ;
[ 
	NotMapped 
] 
public 
IReadOnlyCollection *
<* +
	BaseEvent+ 4
>4 5
DomainEvents6 B
=>C E
_domainEventsF S
.S T

AsReadOnlyT ^
(^ _
)_ `
;` a
public 

void 
AddDomainEvent 
( 
	BaseEvent (
domainEvent) 4
)4 5
{ 
_domainEvents 
. 
Add 
( 
domainEvent %
)% &
;& '
} 
public 

void 
RemoveDomainEvent !
(! "
	BaseEvent" +
domainEvent, 7
)7 8
{ 
_domainEvents 
. 
Remove 
( 
domainEvent (
)( )
;) *
} 
public 

void 
ClearDomainEvents !
(! "
)" #
{ 
_domainEvents 
. 
Clear 
( 
) 
; 
} 
} ´
c/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Domain/Common/BaseAuditableEntity.cs
	namespace 	
	SonarTest
 
. 
Domain 
. 
Common !
;! "
public 
abstract 
class 
BaseAuditableEntity )
:* +

BaseEntity, 6
{ 
public 

DateTimeOffset 
Created !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
? 
	CreatedBy 
{ 
get "
;" #
set$ '
;' (
}) *
public		 

DateTimeOffset		 
LastModified		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public 

string 
? 
LastModifiedBy !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 