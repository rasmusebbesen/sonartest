∏	
ä/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/WeatherForecasts/Queries/GetWeatherForecasts/WeatherForecast.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
WeatherForecasts  0
.0 1
Queries1 8
.8 9
GetWeatherForecasts9 L
;L M
public 
class 
WeatherForecast 
{ 
public 

DateTime 
Date 
{ 
get 
; 
init  $
;$ %
}& '
public 

int 
TemperatureC 
{ 
get !
;! "
init# '
;' (
}) *
public		 

int		 
TemperatureF		 
=>		 
$num		 !
+		" #
(		$ %
int		% (
)		( )
(		) *
TemperatureC		* 6
/		7 8
$num		9 ?
)		? @
;		@ A
public 

string 
? 
Summary 
{ 
get  
;  !
init" &
;& '
}( )
} •
ì/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/WeatherForecasts/Queries/GetWeatherForecasts/GetWeatherForecastsQuery.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
WeatherForecasts  0
.0 1
Queries1 8
.8 9
GetWeatherForecasts9 L
;L M
public 
record $
GetWeatherForecastsQuery &
:' (
IRequest) 1
<1 2
IEnumerable2 =
<= >
WeatherForecast> M
>M N
>N O
;O P
public 
class +
GetWeatherForecastsQueryHandler ,
:- .
IRequestHandler/ >
<> ?$
GetWeatherForecastsQuery? W
,W X
IEnumerableY d
<d e
WeatherForecaste t
>t u
>u v
{ 
private 
static 
readonly 
string "
[" #
]# $
	Summaries% .
=/ 0
new1 4
[4 5
]5 6
{ 
$str		 
,		 
$str		 
,		 
$str		 '
,		' (
$str		) /
,		/ 0
$str		1 7
,		7 8
$str		9 ?
,		? @
$str		A H
,		H I
$str		J O
,		O P
$str		Q ]
,		] ^
$str		_ j
}

 
;

 
public 

async 
Task 
< 
IEnumerable !
<! "
WeatherForecast" 1
>1 2
>2 3
Handle4 :
(: ;$
GetWeatherForecastsQuery; S
requestT [
,[ \
CancellationToken 
cancellationToken +
)+ ,
{ 
var 
rng 
= 
new 
Random 
( 
) 
; 
return 

Enumerable 
. 
Range 
(  
$num  !
,! "
$num# $
)$ %
.% &
Select& ,
(, -
index- 2
=>3 5
new6 9
WeatherForecast: I
{ 	
Date 
= 
DateTime 
. 
Now 
.  
AddDays  '
(' (
index( -
)- .
,. /
TemperatureC 
= 
rng 
. 
Next #
(# $
-$ %
$num% '
,' (
$num) +
)+ ,
,, -
Summary 
= 
	Summaries 
[  
rng  #
.# $
Next$ (
(( )
	Summaries) 2
.2 3
Length3 9
)9 :
]: ;
} 	
)	 

;
 
} 
} ©	
p/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Queries/GetTodos/TodosVm.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Queries* 1
.1 2
GetTodos2 :
;: ;
public 
class 
TodosVm 
{ 
public 

IReadOnlyCollection 
< 
	LookupDto (
>( )
PriorityLevels* 8
{9 :
get; >
;> ?
init@ D
;D E
}F G
=H I
ArrayJ O
.O P
EmptyP U
<U V
	LookupDtoV _
>_ `
(` a
)a b
;b c
public		 

IReadOnlyCollection		 
<		 
TodoListDto		 *
>		* +
Lists		, 1
{		2 3
get		4 7
;		7 8
init		9 =
;		= >
}		? @
=		A B
Array		C H
.		H I
Empty		I N
<		N O
TodoListDto		O Z
>		Z [
(		[ \
)		\ ]
;		] ^
}

 ç
t/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Queries/GetTodos/TodoListDto.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Queries* 1
.1 2
GetTodos2 :
;: ;
public 
class 
TodoListDto 
{ 
public 

TodoListDto 
( 
) 
{ 
Items		 
=		 
Array		 
.		 
Empty		 
<		 
TodoItemDto		 '
>		' (
(		( )
)		) *
;		* +
}

 
public 

int 
Id 
{ 
get 
; 
init 
; 
}  
public 

string 
? 
Title 
{ 
get 
; 
init  $
;$ %
}& '
public 

string 
? 
Colour 
{ 
get 
;  
init! %
;% &
}' (
public 

IReadOnlyCollection 
< 
TodoItemDto *
>* +
Items, 1
{2 3
get4 7
;7 8
init9 =
;= >
}? @
private 
class 
Mapping 
: 
Profile #
{ 
public 
Mapping 
( 
) 
{ 	
	CreateMap 
< 
TodoList 
, 
TodoListDto  +
>+ ,
(, -
)- .
;. /
} 	
} 
} Ó
t/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Queries/GetTodos/TodoItemDto.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Queries* 1
.1 2
GetTodos2 :
;: ;
public 
class 
TodoItemDto 
{ 
public 

int 
Id 
{ 
get 
; 
init 
; 
}  
public		 

int		 
ListId		 
{		 
get		 
;		 
init		 !
;		! "
}		# $
public 

string 
? 
Title 
{ 
get 
; 
init  $
;$ %
}& '
public 

bool 
Done 
{ 
get 
; 
init  
;  !
}" #
public 

int 
Priority 
{ 
get 
; 
init #
;# $
}% &
public 

string 
? 
Note 
{ 
get 
; 
init #
;# $
}% &
private 
class 
Mapping 
: 
Profile #
{ 
public 
Mapping 
( 
) 
{ 	
	CreateMap 
< 
TodoItem 
, 
TodoItemDto  +
>+ ,
(, -
)- .
.. /
	ForMember/ 8
(8 9
d9 :
=>; =
d> ?
.? @
Priority@ H
,H I
opt 
=> 
opt 
. 
MapFrom "
(" #
s# $
=>% '
(( )
int) ,
), -
s- .
.. /
Priority/ 7
)7 8
)8 9
;9 :
} 	
} 
} Ä
q/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Queries/GetTodos/GetTodos.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Queries* 1
.1 2
GetTodos2 :
;: ;
[ 
	Authorize 

]
 
public		 
record		 
GetTodosQuery		 
:		 
IRequest		 &
<		& '
TodosVm		' .
>		. /
;		/ 0
public 
class  
GetTodosQueryHandler !
:" #
IRequestHandler$ 3
<3 4
GetTodosQuery4 A
,A B
TodosVmC J
>J K
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
private 
readonly 
IMapper 
_mapper $
;$ %
public 
 
GetTodosQueryHandler 
(  !
IApplicationDbContext  5
context6 =
,= >
IMapper? F
mapperG M
)M N
{ 
_context 
= 
context 
; 
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
TodosVm 
> 
Handle %
(% &
GetTodosQuery& 3
request4 ;
,; <
CancellationToken= N
cancellationTokenO `
)` a
{ 
return 
new 
TodosVm 
{ 	
PriorityLevels 
= 
Enum !
.! "
	GetValues" +
(+ ,
typeof, 2
(2 3
PriorityLevel3 @
)@ A
)A B
. 
Cast 
< 
PriorityLevel #
># $
($ %
)% &
. 
Select 
( 
p 
=> 
new  
	LookupDto! *
{+ ,
Id- /
=0 1
(2 3
int3 6
)6 7
p7 8
,8 9
Title: ?
=@ A
pB C
.C D
ToStringD L
(L M
)M N
}O P
)P Q
. 
ToList 
( 
) 
, 
Lists 
= 
await 
_context "
." #
	TodoLists# ,
.   
AsNoTracking   
(   
)   
.!! 
	ProjectTo!! 
<!! 
TodoListDto!! &
>!!& '
(!!' (
_mapper!!( /
.!!/ 0!
ConfigurationProvider!!0 E
)!!E F
."" 
OrderBy"" 
("" 
t"" 
=>"" 
t"" 
.""  
Title""  %
)""% &
.## 
ToListAsync## 
(## 
cancellationToken## .
)##. /
}$$ 	
;$$	 

}%% 
}&& í
é/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Commands/UpdateTodoList/UpdateTodoListCommandValidator.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Commands* 2
.2 3
UpdateTodoList3 A
;A B
public 
class *
UpdateTodoListCommandValidator +
:, -
AbstractValidator. ?
<? @!
UpdateTodoListCommand@ U
>U V
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
public		 
*
UpdateTodoListCommandValidator		 )
(		) *!
IApplicationDbContext		* ?
context		@ G
)		G H
{

 
_context 
= 
context 
; 
RuleFor 
( 
v 
=> 
v 
. 
Title 
) 
. 
NotEmpty 
( 
) 
. 
MaximumLength 
( 
$num 
) 
. 
	MustAsync 
( 
BeUniqueTitle $
)$ %
. 
WithMessage 
( 
$str ;
); <
. 
WithErrorCode 
( 
$str #
)# $
;$ %
} 
public 

async 
Task 
< 
bool 
> 
BeUniqueTitle )
() *!
UpdateTodoListCommand* ?
model@ E
,E F
stringG M
titleN S
,S T
CancellationToken 
cancellationToken +
)+ ,
{ 
return 
await 
_context 
. 
	TodoLists '
. 
Where 
( 
l 
=> 
l 
. 
Id 
!= 
model  %
.% &
Id& (
)( )
. 
AllAsync 
( 
l 
=> 
l 
. 
Title "
!=# %
title& +
,+ ,
cancellationToken- >
)> ?
;? @
} 
} ñ
~/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Commands/UpdateTodoList/UpdateTodoList.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Commands* 2
.2 3
UpdateTodoList3 A
;A B
public 
record !
UpdateTodoListCommand #
:$ %
IRequest& .
{ 
public 

int 
Id 
{ 
get 
; 
init 
; 
}  
public		 

string		 
?		 
Title		 
{		 
get		 
;		 
init		  $
;		$ %
}		& '
}

 
public 
class (
UpdateTodoListCommandHandler )
:* +
IRequestHandler, ;
<; <!
UpdateTodoListCommand< Q
>Q R
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
public 
(
UpdateTodoListCommandHandler '
(' (!
IApplicationDbContext( =
context> E
)E F
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
Handle 
( !
UpdateTodoListCommand 2
request3 :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 
var 
entity 
= 
await 
_context #
.# $
	TodoLists$ -
. 
	FindAsync 
( 
new 
object !
[! "
]" #
{$ %
request& -
.- .
Id. 0
}1 2
,2 3
cancellationToken4 E
)E F
;F G
Guard 
. 
Against 
. 
NotFound 
( 
request &
.& '
Id' )
,) *
entity+ 1
)1 2
;2 3
entity 
. 
Title 
= 
request 
. 
Title $
;$ %
await 
_context 
. 
SaveChangesAsync '
(' (
cancellationToken( 9
)9 :
;: ;
} 
}   ˆ
~/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Commands/PurgeTodoLists/PurgeTodoLists.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Commands* 2
.2 3
PurgeTodoLists3 A
;A B
[ 
	Authorize 

(
 
Roles 
= 
Roles 
. 
Administrator &
)& '
]' (
[ 
	Authorize 

(
 
Policy 
= 
Policies 
. 
CanPurge %
)% &
]& '
public		 
record		 !
PurgeTodoListsCommand		 #
:		$ %
IRequest		& .
;		. /
public 
class (
PurgeTodoListsCommandHandler )
:* +
IRequestHandler, ;
<; <!
PurgeTodoListsCommand< Q
>Q R
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
public 
(
PurgeTodoListsCommandHandler '
(' (!
IApplicationDbContext( =
context> E
)E F
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
Handle 
( !
PurgeTodoListsCommand 2
request3 :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 
_context 
. 
	TodoLists 
. 
RemoveRange &
(& '
_context' /
./ 0
	TodoLists0 9
)9 :
;: ;
await 
_context 
. 
SaveChangesAsync '
(' (
cancellationToken( 9
)9 :
;: ;
} 
} ⁄
~/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Commands/DeleteTodoList/DeleteTodoList.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Commands* 2
.2 3
DeleteTodoList3 A
;A B
public 
record !
DeleteTodoListCommand #
(# $
int$ '
Id( *
)* +
:, -
IRequest. 6
;6 7
public 
class (
DeleteTodoListCommandHandler )
:* +
IRequestHandler, ;
<; <!
DeleteTodoListCommand< Q
>Q R
{ 
private		 
readonly		 !
IApplicationDbContext		 *
_context		+ 3
;		3 4
public 
(
DeleteTodoListCommandHandler '
(' (!
IApplicationDbContext( =
context> E
)E F
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
Handle 
( !
DeleteTodoListCommand 2
request3 :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 
var 
entity 
= 
await 
_context #
.# $
	TodoLists$ -
. 
Where 
( 
l 
=> 
l 
. 
Id 
== 
request  '
.' (
Id( *
)* +
.  
SingleOrDefaultAsync !
(! "
cancellationToken" 3
)3 4
;4 5
Guard 
. 
Against 
. 
NotFound 
( 
request &
.& '
Id' )
,) *
entity+ 1
)1 2
;2 3
_context 
. 
	TodoLists 
. 
Remove !
(! "
entity" (
)( )
;) *
await 
_context 
. 
SaveChangesAsync '
(' (
cancellationToken( 9
)9 :
;: ;
} 
} ˛
é/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Commands/CreateTodoList/CreateTodoListCommandValidator.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Commands* 2
.2 3
CreateTodoList3 A
;A B
public 
class *
CreateTodoListCommandValidator +
:, -
AbstractValidator. ?
<? @!
CreateTodoListCommand@ U
>U V
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
public		 
*
CreateTodoListCommandValidator		 )
(		) *!
IApplicationDbContext		* ?
context		@ G
)		G H
{

 
_context 
= 
context 
; 
RuleFor 
( 
v 
=> 
v 
. 
Title 
) 
. 
NotEmpty 
( 
) 
. 
MaximumLength 
( 
$num 
) 
. 
	MustAsync 
( 
BeUniqueTitle $
)$ %
. 
WithMessage 
( 
$str ;
); <
. 
WithErrorCode 
( 
$str #
)# $
;$ %
} 
public 

async 
Task 
< 
bool 
> 
BeUniqueTitle )
() *
string* 0
title1 6
,6 7
CancellationToken8 I
cancellationTokenJ [
)[ \
{ 
return 
await 
_context 
. 
	TodoLists '
. 
AllAsync 
( 
l 
=> 
l 
. 
Title "
!=# %
title& +
,+ ,
cancellationToken- >
)> ?
;? @
} 
} Ç
~/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoLists/Commands/CreateTodoList/CreateTodoList.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoLists  )
.) *
Commands* 2
.2 3
CreateTodoList3 A
;A B
public 
record !
CreateTodoListCommand #
:$ %
IRequest& .
<. /
int/ 2
>2 3
{ 
public 

string 
? 
Title 
{ 
get 
; 
init  $
;$ %
}& '
}		 
public 
class (
CreateTodoListCommandHandler )
:* +
IRequestHandler, ;
<; <!
CreateTodoListCommand< Q
,Q R
intS V
>V W
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
public 
(
CreateTodoListCommandHandler '
(' (!
IApplicationDbContext( =
context> E
)E F
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
< 
int 
> 
Handle !
(! "!
CreateTodoListCommand" 7
request8 ?
,? @
CancellationTokenA R
cancellationTokenS d
)d e
{ 
var 
entity 
= 
new 
TodoList !
(! "
)" #
;# $
entity 
. 
Title 
= 
request 
. 
Title $
;$ %
_context 
. 
	TodoLists 
. 
Add 
( 
entity %
)% &
;& '
await 
_context 
. 
SaveChangesAsync '
(' (
cancellationToken( 9
)9 :
;: ;
return 
entity 
. 
Id 
; 
} 
}   ƒ
ã/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Queries/GetTodoItemsWithPagination/TodoItemBriefDto.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Queries* 1
.1 2&
GetTodoItemsWithPagination2 L
;L M
public 
class 
TodoItemBriefDto 
{ 
public 

int 
Id 
{ 
get 
; 
init 
; 
}  
public		 

int		 
ListId		 
{		 
get		 
;		 
init		 !
;		! "
}		# $
public 

string 
? 
Title 
{ 
get 
; 
init  $
;$ %
}& '
public 

bool 
Done 
{ 
get 
; 
init  
;  !
}" #
private 
class 
Mapping 
: 
Profile #
{ 
public 
Mapping 
( 
) 
{ 	
	CreateMap 
< 
TodoItem 
, 
TodoItemBriefDto  0
>0 1
(1 2
)2 3
;3 4
} 	
} 
}  
£/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Queries/GetTodoItemsWithPagination/GetTodoItemsWithPaginationQueryValidator.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Queries* 1
.1 2&
GetTodoItemsWithPagination2 L
;L M
public 
class 4
(GetTodoItemsWithPaginationQueryValidator 5
:6 7
AbstractValidator8 I
<I J+
GetTodoItemsWithPaginationQueryJ i
>i j
{ 
public 
4
(GetTodoItemsWithPaginationQueryValidator 3
(3 4
)4 5
{ 
RuleFor 
( 
x 
=> 
x 
. 
ListId 
) 
. 
NotEmpty 
( 
) 
. 
WithMessage #
(# $
$str$ 9
)9 :
;: ;
RuleFor

 
(

 
x

 
=>

 
x

 
.

 

PageNumber

 !
)

! "
.  
GreaterThanOrEqualTo !
(! "
$num" #
)# $
.$ %
WithMessage% 0
(0 1
$str1 b
)b c
;c d
RuleFor 
( 
x 
=> 
x 
. 
PageSize 
)  
.  
GreaterThanOrEqualTo !
(! "
$num" #
)# $
.$ %
WithMessage% 0
(0 1
$str1 `
)` a
;a b
} 
} ﬂ
ï/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Queries/GetTodoItemsWithPagination/GetTodoItemsWithPagination.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Queries* 1
.1 2&
GetTodoItemsWithPagination2 L
;L M
public 
record +
GetTodoItemsWithPaginationQuery -
:. /
IRequest0 8
<8 9
PaginatedList9 F
<F G
TodoItemBriefDtoG W
>W X
>X Y
{ 
public		 

int		 
ListId		 
{		 
get		 
;		 
init		 !
;		! "
}		# $
public

 

int

 

PageNumber

 
{

 
get

 
;

  
init

! %
;

% &
}

' (
=

) *
$num

+ ,
;

, -
public 

int 
PageSize 
{ 
get 
; 
init #
;# $
}% &
=' (
$num) +
;+ ,
} 
public 
class 2
&GetTodoItemsWithPaginationQueryHandler *
:+ ,
IRequestHandler- <
<< =+
GetTodoItemsWithPaginationQuery= \
,\ ]
PaginatedList 
< 
TodoItemBriefDto "
>" #
># $
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
private 
readonly 
IMapper 
_mapper $
;$ %
public 
2
&GetTodoItemsWithPaginationQueryHandler 1
(1 2!
IApplicationDbContext2 G
contextH O
,O P
IMapperQ X
mapperY _
)_ `
{ 
_context 
= 
context 
; 
_mapper 
= 
mapper 
; 
} 
public 

async 
Task 
< 
PaginatedList #
<# $
TodoItemBriefDto$ 4
>4 5
>5 6
Handle7 =
(= >+
GetTodoItemsWithPaginationQuery> ]
request^ e
,e f
CancellationToken 
cancellationToken +
)+ ,
{ 
return 
await 
_context 
. 
	TodoItems '
. 
Where 
( 
x 
=> 
x 
. 
ListId  
==! #
request$ +
.+ ,
ListId, 2
)2 3
.   
OrderBy   
(   
x   
=>   
x   
.   
Title   !
)  ! "
.!! 
	ProjectTo!! 
<!! 
TodoItemBriefDto!! '
>!!' (
(!!( )
_mapper!!) 0
.!!0 1!
ConfigurationProvider!!1 F
)!!F G
."" 
PaginatedListAsync"" 
(""  
request""  '
.""' (

PageNumber""( 2
,""2 3
request""4 ;
.""; <
PageSize""< D
)""D E
;""E F
}## 
}$$ ‘
Å/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/EventHandlers/TodoItemCreatedEventHandler.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
EventHandlers* 7
;7 8
public 
class '
TodoItemCreatedEventHandler (
:) * 
INotificationHandler+ ?
<? @ 
TodoItemCreatedEvent@ T
>T U
{ 
private 
readonly 
ILogger 
< '
TodoItemCreatedEventHandler 8
>8 9
_logger: A
;A B
public

 
'
TodoItemCreatedEventHandler

 &
(

& '
ILogger

' .
<

. /'
TodoItemCreatedEventHandler

/ J
>

J K
logger

L R
)

R S
{ 
_logger 
= 
logger 
; 
} 
public 

Task 
Handle 
(  
TodoItemCreatedEvent +
notification, 8
,8 9
CancellationToken: K
cancellationTokenL ]
)] ^
{ 
_logger 
. 
LogInformation 
( 
$str F
,F G
notificationH T
.T U
GetTypeU \
(\ ]
)] ^
.^ _
Name_ c
)c d
;d e
return 
Task 
. 
CompletedTask !
;! "
} 
} ‚
É/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/EventHandlers/TodoItemCompletedEventHandler.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
EventHandlers* 7
;7 8
public 
class )
TodoItemCompletedEventHandler *
:+ , 
INotificationHandler- A
<A B"
TodoItemCompletedEventB X
>X Y
{ 
private 
readonly 
ILogger 
< )
TodoItemCompletedEventHandler :
>: ;
_logger< C
;C D
public

 
)
TodoItemCompletedEventHandler

 (
(

( )
ILogger

) 0
<

0 1)
TodoItemCompletedEventHandler

1 N
>

N O
logger

P V
)

V W
{ 
_logger 
= 
logger 
; 
} 
public 

Task 
Handle 
( "
TodoItemCompletedEvent -
notification. :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 
_logger 
. 
LogInformation 
( 
$str F
,F G
notificationH T
.T U
GetTypeU \
(\ ]
)] ^
.^ _
Name_ c
)c d
;d e
return 
Task 
. 
CompletedTask !
;! "
} 
} û
ä/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Commands/UpdateTodoItemDetail/UpdateTodoItemDetail.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Commands* 2
.2 3 
UpdateTodoItemDetail3 G
;G H
public 
record '
UpdateTodoItemDetailCommand )
:* +
IRequest, 4
{ 
public 

int 
Id 
{ 
get 
; 
init 
; 
}  
public

 

int

 
ListId

 
{

 
get

 
;

 
init

 !
;

! "
}

# $
public 

PriorityLevel 
Priority !
{" #
get$ '
;' (
init) -
;- .
}/ 0
public 

string 
? 
Note 
{ 
get 
; 
init #
;# $
}% &
} 
public 
class .
"UpdateTodoItemDetailCommandHandler /
:0 1
IRequestHandler2 A
<A B'
UpdateTodoItemDetailCommandB ]
>] ^
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
public 
.
"UpdateTodoItemDetailCommandHandler -
(- .!
IApplicationDbContext. C
contextD K
)K L
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
Handle 
( '
UpdateTodoItemDetailCommand 8
request9 @
,@ A
CancellationTokenB S
cancellationTokenT e
)e f
{ 
var 
entity 
= 
await 
_context #
.# $
	TodoItems$ -
. 
	FindAsync 
( 
new 
object !
[! "
]" #
{$ %
request& -
.- .
Id. 0
}1 2
,2 3
cancellationToken4 E
)E F
;F G
Guard 
. 
Against 
. 
NotFound 
( 
request &
.& '
Id' )
,) *
entity+ 1
)1 2
;2 3
entity!! 
.!! 
ListId!! 
=!! 
request!! 
.!!  
ListId!!  &
;!!& '
entity"" 
."" 
Priority"" 
="" 
request"" !
.""! "
Priority""" *
;""* +
entity## 
.## 
Note## 
=## 
request## 
.## 
Note## "
;##" #
await%% 
_context%% 
.%% 
SaveChangesAsync%% '
(%%' (
cancellationToken%%( 9
)%%9 :
;%%: ;
}&& 
}'' Ô
é/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Commands/UpdateTodoItem/UpdateTodoItemCommandValidator.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Commands* 2
.2 3
UpdateTodoItem3 A
;A B
public 
class *
UpdateTodoItemCommandValidator +
:, -
AbstractValidator. ?
<? @!
UpdateTodoItemCommand@ U
>U V
{ 
public 
*
UpdateTodoItemCommandValidator )
() *
)* +
{ 
RuleFor 
( 
v 
=> 
v 
. 
Title 
) 
. 
MaximumLength 
( 
$num 
) 
.		 
NotEmpty		 
(		 
)		 
;		 
}

 
} ∂
~/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Commands/UpdateTodoItem/UpdateTodoItem.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Commands* 2
.2 3
UpdateTodoItem3 A
;A B
public 
record !
UpdateTodoItemCommand #
:$ %
IRequest& .
{ 
public 

int 
Id 
{ 
get 
; 
init 
; 
}  
public		 

string		 
?		 
Title		 
{		 
get		 
;		 
init		  $
;		$ %
}		& '
public 

bool 
Done 
{ 
get 
; 
init  
;  !
}" #
} 
public 
class (
UpdateTodoItemCommandHandler )
:* +
IRequestHandler, ;
<; <!
UpdateTodoItemCommand< Q
>Q R
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
public 
(
UpdateTodoItemCommandHandler '
(' (!
IApplicationDbContext( =
context> E
)E F
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
Handle 
( !
UpdateTodoItemCommand 2
request3 :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 
var 
entity 
= 
await 
_context #
.# $
	TodoItems$ -
. 
	FindAsync 
( 
new 
object !
[! "
]" #
{$ %
request& -
.- .
Id. 0
}1 2
,2 3
cancellationToken4 E
)E F
;F G
Guard 
. 
Against 
. 
NotFound 
( 
request &
.& '
Id' )
,) *
entity+ 1
)1 2
;2 3
entity 
. 
Title 
= 
request 
. 
Title $
;$ %
entity 
. 
Done 
= 
request 
. 
Done "
;" #
await!! 
_context!! 
.!! 
SaveChangesAsync!! '
(!!' (
cancellationToken!!( 9
)!!9 :
;!!: ;
}"" 
}## Û
~/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Commands/DeleteTodoItem/DeleteTodoItem.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Commands* 2
.2 3
DeleteTodoItem3 A
;A B
public 
record !
DeleteTodoItemCommand #
(# $
int$ '
Id( *
)* +
:, -
IRequest. 6
;6 7
public 
class (
DeleteTodoItemCommandHandler )
:* +
IRequestHandler, ;
<; <!
DeleteTodoItemCommand< Q
>Q R
{		 
private

 
readonly

 !
IApplicationDbContext

 *
_context

+ 3
;

3 4
public 
(
DeleteTodoItemCommandHandler '
(' (!
IApplicationDbContext( =
context> E
)E F
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
Handle 
( !
DeleteTodoItemCommand 2
request3 :
,: ;
CancellationToken< M
cancellationTokenN _
)_ `
{ 
var 
entity 
= 
await 
_context #
.# $
	TodoItems$ -
. 
	FindAsync 
( 
new 
object !
[! "
]" #
{$ %
request& -
.- .
Id. 0
}1 2
,2 3
cancellationToken4 E
)E F
;F G
Guard 
. 
Against 
. 
NotFound 
( 
request &
.& '
Id' )
,) *
entity+ 1
)1 2
;2 3
_context 
. 
	TodoItems 
. 
Remove !
(! "
entity" (
)( )
;) *
entity 
. 
AddDomainEvent 
( 
new ! 
TodoItemDeletedEvent" 6
(6 7
entity7 =
)= >
)> ?
;? @
await 
_context 
. 
SaveChangesAsync '
(' (
cancellationToken( 9
)9 :
;: ;
} 
} Ô
é/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Commands/CreateTodoItem/CreateTodoItemCommandValidator.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Commands* 2
.2 3
CreateTodoItem3 A
;A B
public 
class *
CreateTodoItemCommandValidator +
:, -
AbstractValidator. ?
<? @!
CreateTodoItemCommand@ U
>U V
{ 
public 
*
CreateTodoItemCommandValidator )
() *
)* +
{ 
RuleFor 
( 
v 
=> 
v 
. 
Title 
) 
. 
MaximumLength 
( 
$num 
) 
.		 
NotEmpty		 
(		 
)		 
;		 
}

 
} Ê
~/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/TodoItems/Commands/CreateTodoItem/CreateTodoItem.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
	TodoItems  )
.) *
Commands* 2
.2 3
CreateTodoItem3 A
;A B
public 
record !
CreateTodoItemCommand #
:$ %
IRequest& .
<. /
int/ 2
>2 3
{ 
public		 

int		 
ListId		 
{		 
get		 
;		 
init		 !
;		! "
}		# $
public 

string 
? 
Title 
{ 
get 
; 
init  $
;$ %
}& '
} 
public 
class (
CreateTodoItemCommandHandler )
:* +
IRequestHandler, ;
<; <!
CreateTodoItemCommand< Q
,Q R
intS V
>V W
{ 
private 
readonly !
IApplicationDbContext *
_context+ 3
;3 4
public 
(
CreateTodoItemCommandHandler '
(' (!
IApplicationDbContext( =
context> E
)E F
{ 
_context 
= 
context 
; 
} 
public 

async 
Task 
< 
int 
> 
Handle !
(! "!
CreateTodoItemCommand" 7
request8 ?
,? @
CancellationTokenA R
cancellationTokenS d
)d e
{ 
var 
entity 
= 
new 
TodoItem !
{ 	
ListId 
= 
request 
. 
ListId #
,# $
Title 
= 
request 
. 
Title !
,! "
Done 
= 
false 
} 	
;	 

entity   
.   
AddDomainEvent   
(   
new   ! 
TodoItemCreatedEvent  " 6
(  6 7
entity  7 =
)  = >
)  > ?
;  ? @
_context"" 
."" 
	TodoItems"" 
."" 
Add"" 
("" 
entity"" %
)""% &
;""& '
await$$ 
_context$$ 
.$$ 
SaveChangesAsync$$ '
($$' (
cancellationToken$$( 9
)$$9 :
;$$: ;
return&& 
entity&& 
.&& 
Id&& 
;&& 
}'' 
}(( \
Z/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/GlobalUsings.csü
a/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/DependencyInjection.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
;2 3
public 
static 
class 
DependencyInjection '
{ 
public 

static 
IServiceCollection $"
AddApplicationServices% ;
(; <
this< @
IServiceCollectionA S
servicesT \
)\ ]
{		 
services

 
.

 
AddAutoMapper

 
(

 
Assembly

 '
.

' ( 
GetExecutingAssembly

( <
(

< =
)

= >
)

> ?
;

? @
services 
. %
AddValidatorsFromAssembly *
(* +
Assembly+ 3
.3 4 
GetExecutingAssembly4 H
(H I
)I J
)J K
;K L
services 
. 

AddMediatR 
( 
cfg 
=>  "
{ 	
cfg 
. (
RegisterServicesFromAssembly ,
(, -
Assembly- 5
.5 6 
GetExecutingAssembly6 J
(J K
)K L
)L M
;M N
cfg 
. 
AddBehavior 
( 
typeof "
(" #
IPipelineBehavior# 4
<4 5
,5 6
>6 7
)7 8
,8 9
typeof: @
(@ A'
UnhandledExceptionBehaviourA \
<\ ]
,] ^
>^ _
)_ `
)` a
;a b
cfg 
. 
AddBehavior 
( 
typeof "
(" #
IPipelineBehavior# 4
<4 5
,5 6
>6 7
)7 8
,8 9
typeof: @
(@ A"
AuthorizationBehaviourA W
<W X
,X Y
>Y Z
)Z [
)[ \
;\ ]
cfg 
. 
AddBehavior 
( 
typeof "
(" #
IPipelineBehavior# 4
<4 5
,5 6
>6 7
)7 8
,8 9
typeof: @
(@ A
ValidationBehaviourA T
<T U
,U V
>V W
)W X
)X Y
;Y Z
cfg 
. 
AddBehavior 
( 
typeof "
(" #
IPipelineBehavior# 4
<4 5
,5 6
>6 7
)7 8
,8 9
typeof: @
(@ A 
PerformanceBehaviourA U
<U V
,V W
>W X
)X Y
)Y Z
;Z [
} 	
)	 

;
 
return 
services 
; 
} 
} ï

p/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Security/AuthorizeAttribute.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '
Security' /
;/ 0
[ 
AttributeUsage 
( 
AttributeTargets  
.  !
Class! &
,& '
AllowMultiple( 5
=6 7
true8 <
,< =
	Inherited> G
=H I
trueJ N
)N O
]O P
public 
class 
AuthorizeAttribute 
:  !
	Attribute" +
{ 
public 

AuthorizeAttribute 
( 
) 
{ 
} 
public 

string 
Roles 
{ 
get 
; 
set "
;" #
}$ %
=& '
string( .
.. /
Empty/ 4
;4 5
public 

string 
Policy 
{ 
get 
; 
set  #
;# $
}% &
=' (
string) /
./ 0
Empty0 5
;5 6
} ß
b/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Models/Result.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '
Models' -
;- .
public 
class 
Result 
{ 
internal 
Result 
( 
bool 
	succeeded "
," #
IEnumerable$ /
</ 0
string0 6
>6 7
errors8 >
)> ?
{ 
	Succeeded 
= 
	succeeded 
; 
Errors 
= 
errors 
. 
ToArray 
(  
)  !
;! "
}		 
public 

bool 
	Succeeded 
{ 
get 
;  
init! %
;% &
}' (
public 

string 
[ 
] 
Errors 
{ 
get  
;  !
init" &
;& '
}( )
public 

static 
Result 
Success  
(  !
)! "
{ 
return 
new 
Result 
( 
true 
, 
Array  %
.% &
Empty& +
<+ ,
string, 2
>2 3
(3 4
)4 5
)5 6
;6 7
} 
public 

static 
Result 
Failure  
(  !
IEnumerable! ,
<, -
string- 3
>3 4
errors5 ;
); <
{ 
return 
new 
Result 
( 
false 
,  
errors! '
)' (
;( )
} 
} π
i/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Models/PaginatedList.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '
Models' -
;- .
public 
class 
PaginatedList 
< 
T 
> 
{ 
public 

IReadOnlyCollection 
< 
T  
>  !
Items" '
{( )
get* -
;- .
}/ 0
public 

int 

PageNumber 
{ 
get 
;  
}! "
public 

int 

TotalPages 
{ 
get 
;  
}! "
public 

int 

TotalCount 
{ 
get 
;  
}! "
public

 

PaginatedList

 
(

 
IReadOnlyCollection

 ,
<

, -
T

- .
>

. /
items

0 5
,

5 6
int

7 :
count

; @
,

@ A
int

B E

pageNumber

F P
,

P Q
int

R U
pageSize

V ^
)

^ _
{ 

PageNumber 
= 

pageNumber 
;  

TotalPages 
= 
( 
int 
) 
Math 
. 
Ceiling &
(& '
count' ,
/- .
(/ 0
double0 6
)6 7
pageSize7 ?
)? @
;@ A

TotalCount 
= 
count 
; 
Items 
= 
items 
; 
} 
public 

bool 
HasPreviousPage 
=>  "

PageNumber# -
>. /
$num0 1
;1 2
public 

bool 
HasNextPage 
=> 

PageNumber )
<* +

TotalPages, 6
;6 7
public 

static 
async 
Task 
< 
PaginatedList *
<* +
T+ ,
>, -
>- .
CreateAsync/ :
(: ;

IQueryable; E
<E F
TF G
>G H
sourceI O
,O P
intQ T

pageNumberU _
,_ `
inta d
pageSizee m
)m n
{ 
var 
count 
= 
await 
source  
.  !

CountAsync! +
(+ ,
), -
;- .
var 
items 
= 
await 
source  
.  !
Skip! %
(% &
(& '

pageNumber' 1
-2 3
$num4 5
)5 6
*7 8
pageSize9 A
)A B
.B C
TakeC G
(G H
pageSizeH P
)P Q
.Q R
ToListAsyncR ]
(] ^
)^ _
;_ `
return 
new 
PaginatedList  
<  !
T! "
>" #
(# $
items$ )
,) *
count+ 0
,0 1

pageNumber2 <
,< =
pageSize> F
)F G
;G H
} 
} √	
e/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Models/LookupDto.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '
Models' -
;- .
public 
class 
	LookupDto 
{ 
public 

int 
Id 
{ 
get 
; 
init 
; 
}  
public		 

string		 
?		 
Title		 
{		 
get		 
;		 
init		  $
;		$ %
}		& '
private 
class 
Mapping 
: 
Profile #
{ 
public 
Mapping 
( 
) 
{ 	
	CreateMap 
< 
TodoList 
, 
	LookupDto  )
>) *
(* +
)+ ,
;, -
	CreateMap 
< 
TodoItem 
, 
	LookupDto  )
>) *
(* +
)+ ,
;, -
} 	
} 
} ó
o/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Mappings/MappingExtensions.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '
Mappings' /
;/ 0
public 
static 
class 
MappingExtensions %
{ 
public 

static 
Task 
< 
PaginatedList $
<$ %
TDestination% 1
>1 2
>2 3
PaginatedListAsync4 F
<F G
TDestinationG S
>S T
(T U
this 

IQueryable 
< 
TDestination $
>$ %
	queryable& /
,/ 0
int1 4

pageNumber5 ?
,? @
intA D
pageSizeE M
)M N
whereO T
TDestinationU a
:b c
classd i
=>		 

PaginatedList		 
<		 
TDestination		 %
>		% &
.		& '
CreateAsync		' 2
(		2 3
	queryable		3 <
.		< =
AsNoTracking		= I
(		I J
)		J K
,		K L

pageNumber		M W
,		W X
pageSize		Y a
)		a b
;		b c
public 

static 
Task 
< 
List 
< 
TDestination (
>( )
>) *
ProjectToListAsync+ =
<= >
TDestination> J
>J K
(K L
thisL P

IQueryableQ [
	queryable\ e
,e f"
IConfigurationProvider 
configuration ,
), -
where. 3
TDestination4 @
:A B
classC H
=> 

	queryable 
. 
	ProjectTo 
< 
TDestination +
>+ ,
(, -
configuration- :
): ;
.; <
AsNoTracking< H
(H I
)I J
.J K
ToListAsyncK V
(V W
)W X
;X Y
} €
e/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Interfaces/IUser.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Interfaces' 1
;1 2
public 
	interface 
IUser 
{ 
string 

?
 
Id 
{ 
get 
; 
} 
} ´
p/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Interfaces/IIdentityService.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Interfaces' 1
;1 2
public 
	interface 
IIdentityService !
{ 
Task 
< 	
string	 
? 
> 
GetUserNameAsync "
(" #
string# )
userId* 0
)0 1
;1 2
Task		 
<		 	
bool			 
>		 
IsInRoleAsync		 
(		 
string		 #
userId		$ *
,		* +
string		, 2
role		3 7
)		7 8
;		8 9
Task 
< 	
bool	 
> 
AuthorizeAsync 
( 
string $
userId% +
,+ ,
string- 3

policyName4 >
)> ?
;? @
Task 
< 	
(	 

Result
 
Result 
, 
string 
UserId  &
)& '
>' (
CreateUserAsync) 8
(8 9
string9 ?
userName@ H
,H I
stringJ P
passwordQ Y
)Y Z
;Z [
Task 
< 	
Result	 
> 
DeleteUserAsync  
(  !
string! '
userId( .
). /
;/ 0
} å
u/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Interfaces/IApplicationDbContext.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Interfaces' 1
;1 2
public 
	interface !
IApplicationDbContext &
{ 
DbSet 	
<	 

TodoList
 
> 
	TodoLists 
{ 
get  #
;# $
}% &
DbSet		 	
<			 

TodoItem		
 
>		 
	TodoItems		 
{		 
get		  #
;		# $
}		% &
Task 
< 	
int	 
> 
SaveChangesAsync 
( 
CancellationToken 0
cancellationToken1 B
)B C
;C D
} Î
s/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Exceptions/ValidationException.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Exceptions' 1
;1 2
public 
class 
ValidationException  
:! "
	Exception# ,
{ 
public 

ValidationException 
( 
)  
: 	
base
 
( 
$str ?
)? @
{		 
Errors

 
=

 
new

 

Dictionary

 
<

  
string

  &
,

& '
string

( .
[

. /
]

/ 0
>

0 1
(

1 2
)

2 3
;

3 4
} 
public 

ValidationException 
( 
IEnumerable *
<* +
ValidationFailure+ <
>< =
failures> F
)F G
: 	
this
 
( 
) 
{ 
Errors 
= 
failures 
. 
GroupBy 
( 
e 
=> 
e 
. 
PropertyName (
,( )
e* +
=>, .
e/ 0
.0 1
ErrorMessage1 =
)= >
. 
ToDictionary 
( 
failureGroup &
=>' )
failureGroup* 6
.6 7
Key7 :
,: ;
failureGroup< H
=>I K
failureGroupL X
.X Y
ToArrayY `
(` a
)a b
)b c
;c d
} 
public 

IDictionary 
< 
string 
, 
string %
[% &
]& '
>' (
Errors) /
{0 1
get2 5
;5 6
}7 8
} Á
x/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Exceptions/ForbiddenAccessException.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Exceptions' 1
;1 2
public 
class $
ForbiddenAccessException %
:& '
	Exception( 1
{ 
public 
$
ForbiddenAccessException #
(# $
)$ %
:& '
base( ,
(, -
)- .
{ 
} 
} “
s/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Behaviours/ValidationBehaviour.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Behaviours' 1
;1 2
public 
class 
ValidationBehaviour  
<  !
TRequest! )
,) *
	TResponse+ 4
>4 5
:6 7
IPipelineBehavior8 I
<I J
TRequestJ R
,R S
	TResponseT ]
>] ^
where 	
TRequest
 
: 
notnull 
{ 
private 
readonly 
IEnumerable  
<  !

IValidator! +
<+ ,
TRequest, 4
>4 5
>5 6
_validators7 B
;B C
public

 

ValidationBehaviour

 
(

 
IEnumerable

 *
<

* +

IValidator

+ 5
<

5 6
TRequest

6 >
>

> ?
>

? @

validators

A K
)

K L
{ 
_validators 
= 

validators  
;  !
} 
public 

async 
Task 
< 
	TResponse 
>  
Handle! '
(' (
TRequest( 0
request1 8
,8 9"
RequestHandlerDelegate: P
<P Q
	TResponseQ Z
>Z [
next\ `
,` a
CancellationToken 
cancellationToken +
)+ ,
{ 
if 

( 
_validators 
. 
Any 
( 
) 
) 
{ 	
var 
context 
= 
new 
ValidationContext /
</ 0
TRequest0 8
>8 9
(9 :
request: A
)A B
;B C
var 
validationResults !
=" #
await$ )
Task* .
.. /
WhenAll/ 6
(6 7
_validators 
. 
Select "
(" #
v# $
=>% '
v 
. 
ValidateAsync #
(# $
context$ +
,+ ,
cancellationToken- >
)> ?
)? @
)@ A
;A B
var 
failures 
= 
validationResults ,
. 
Where 
( 
r 
=> 
r 
. 
Errors $
.$ %
Any% (
(( )
)) *
)* +
. 

SelectMany 
( 
r 
=>  
r! "
." #
Errors# )
)) *
. 
ToList 
( 
) 
; 
if 
( 
failures 
. 
Any 
( 
) 
) 
throw   
new   
ValidationException   -
(  - .
failures  . 6
)  6 7
;  7 8
}!! 	
return## 
await## 
next## 
(## 
)## 
;## 
}$$ 
}%% Ë
{/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Behaviours/UnhandledExceptionBehaviour.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Behaviours' 1
;1 2
public 
class '
UnhandledExceptionBehaviour (
<( )
TRequest) 1
,1 2
	TResponse3 <
>< =
:> ?
IPipelineBehavior@ Q
<Q R
TRequestR Z
,Z [
	TResponse\ e
>e f
where 	
TRequest
 
: 
notnull 
{ 
private 
readonly 
ILogger 
< 
TRequest %
>% &
_logger' .
;. /
public

 
'
UnhandledExceptionBehaviour

 &
(

& '
ILogger

' .
<

. /
TRequest

/ 7
>

7 8
logger

9 ?
)

? @
{ 
_logger 
= 
logger 
; 
} 
public 

async 
Task 
< 
	TResponse 
>  
Handle! '
(' (
TRequest( 0
request1 8
,8 9"
RequestHandlerDelegate: P
<P Q
	TResponseQ Z
>Z [
next\ `
,` a
CancellationToken 
cancellationToken +
)+ ,
{ 
try 
{ 	
return 
await 
next 
( 
) 
;  
} 	
catch 
( 
	Exception 
ex 
) 
{ 	
var 
requestName 
= 
typeof $
($ %
TRequest% -
)- .
.. /
Name/ 3
;3 4
_logger 
. 
LogError 
( 
ex 
,  
$str! g
,g h
requestNamei t
,t u
request 
) 
; 
throw 
; 
} 	
} 
}   ª 
t/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Behaviours/PerformanceBehaviour.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Behaviours' 1
;1 2
public 
class  
PerformanceBehaviour !
<! "
TRequest" *
,* +
	TResponse, 5
>5 6
:7 8
IPipelineBehavior9 J
<J K
TRequestK S
,S T
	TResponseU ^
>^ _
where` e
TRequestf n
:o p
notnullq x
{ 
private		 
readonly		 
	Stopwatch		 
_timer		 %
;		% &
private

 
readonly

 
ILogger

 
<

 
TRequest

 %
>

% &
_logger

' .
;

. /
private 
readonly 
IUser 
_user  
;  !
private 
readonly 
IIdentityService %
_identityService& 6
;6 7
public 
 
PerformanceBehaviour 
(  
ILogger 
< 
TRequest 
> 
logger  
,  !
IUser 
user 
, 
IIdentityService 
identityService (
)( )
{ 
_timer 
= 
new 
	Stopwatch 
( 
)  
;  !
_logger 
= 
logger 
; 
_user 
= 
user 
; 
_identityService 
= 
identityService *
;* +
} 
public 

async 
Task 
< 
	TResponse 
>  
Handle! '
(' (
TRequest( 0
request1 8
,8 9"
RequestHandlerDelegate: P
<P Q
	TResponseQ Z
>Z [
next\ `
,` a
CancellationToken 
cancellationToken +
)+ ,
{ 
_timer 
. 
Start 
( 
) 
; 
var 
response 
= 
await 
next !
(! "
)" #
;# $
_timer!! 
.!! 
Stop!! 
(!! 
)!! 
;!! 
var## 
elapsedMilliseconds## 
=##  !
_timer##" (
.##( )
ElapsedMilliseconds##) <
;##< =
if%% 

(%% 
elapsedMilliseconds%% 
>%%  !
$num%%" %
)%%% &
{&& 	
var'' 
requestName'' 
='' 
typeof'' $
(''$ %
TRequest''% -
)''- .
.''. /
Name''/ 3
;''3 4
var(( 
userId(( 
=(( 
_user(( 
.(( 
Id(( !
??((" $
string((% +
.((+ ,
Empty((, 1
;((1 2
var)) 
userName)) 
=)) 
string)) !
.))! "
Empty))" '
;))' (
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrEmpty++ %
(++% &
userId++& ,
)++, -
)++- .
{,, 
userName-- 
=-- 
await--  
_identityService--! 1
.--1 2
GetUserNameAsync--2 B
(--B C
userId--C I
)--I J
;--J K
}.. 
_logger00 
.00 

LogWarning00 
(00 
$str11 ~
,11~ 
requestName22 
,22 
elapsedMilliseconds22 0
,220 1
userId222 8
,228 9
userName22: B
,22B C
request22D K
)22K L
;22L M
}33 	
return55 
response55 
;55 
}66 
}77 Â
p/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Behaviours/LoggingBehaviour.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Behaviours' 1
;1 2
public 
class 
LoggingBehaviour 
< 
TRequest &
>& '
:( ) 
IRequestPreProcessor* >
<> ?
TRequest? G
>G H
whereI N
TRequestO W
:X Y
notnullZ a
{ 
private		 
readonly		 
ILogger		 
_logger		 $
;		$ %
private

 
readonly

 
IUser

 
_user

  
;

  !
private 
readonly 
IIdentityService %
_identityService& 6
;6 7
public 

LoggingBehaviour 
( 
ILogger #
<# $
TRequest$ ,
>, -
logger. 4
,4 5
IUser6 ;
user< @
,@ A
IIdentityServiceB R
identityServiceS b
)b c
{ 
_logger 
= 
logger 
; 
_user 
= 
user 
; 
_identityService 
= 
identityService *
;* +
} 
public 

async 
Task 
Process 
( 
TRequest &
request' .
,. /
CancellationToken0 A
cancellationTokenB S
)S T
{ 
var 
requestName 
= 
typeof  
(  !
TRequest! )
)) *
.* +
Name+ /
;/ 0
var 
userId 
= 
_user 
. 
Id 
??  
string! '
.' (
Empty( -
;- .
string 
? 
userName 
= 
string !
.! "
Empty" '
;' (
if 

( 
! 
string 
. 
IsNullOrEmpty !
(! "
userId" (
)( )
)) *
{ 	
userName 
= 
await 
_identityService -
.- .
GetUserNameAsync. >
(> ?
userId? E
)E F
;F G
} 	
_logger 
. 
LogInformation 
( 
$str [
,[ \
requestName   
,   
userId   
,    
userName  ! )
,  ) *
request  + 2
)  2 3
;  3 4
}!! 
}"" Ã.
v/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Application/Common/Behaviours/AuthorizationBehaviour.cs
	namespace 	
	SonarTest
 
. 
Application 
.  
Common  &
.& '

Behaviours' 1
;1 2
public 
class "
AuthorizationBehaviour #
<# $
TRequest$ ,
,, -
	TResponse. 7
>7 8
:9 :
IPipelineBehavior; L
<L M
TRequestM U
,U V
	TResponseW `
>` a
where		 	
TRequest		
 
:		 
notnull		 
{

 
private 
readonly 
IUser 
_user  
;  !
private 
readonly 
IIdentityService %
_identityService& 6
;6 7
public 
"
AuthorizationBehaviour !
(! "
IUser 
user 
, 
IIdentityService 
identityService (
)( )
{ 
_user 
= 
user 
; 
_identityService 
= 
identityService *
;* +
} 
public 

async 
Task 
< 
	TResponse 
>  
Handle! '
(' (
TRequest( 0
request1 8
,8 9"
RequestHandlerDelegate: P
<P Q
	TResponseQ Z
>Z [
next\ `
,` a
CancellationToken 
cancellationToken +
)+ ,
{ 
var 
authorizeAttributes 
=  !
request" )
.) *
GetType* 1
(1 2
)2 3
.3 4
GetCustomAttributes4 G
<G H
AuthorizeAttributeH Z
>Z [
([ \
)\ ]
;] ^
if 

( 
authorizeAttributes 
.  
Any  #
(# $
)$ %
)% &
{ 	
if 
( 
_user 
. 
Id 
== 
null  
)  !
{ 
throw   
new   '
UnauthorizedAccessException   5
(  5 6
)  6 7
;  7 8
}!! 
var$$ (
authorizeAttributesWithRoles$$ ,
=$$- .
authorizeAttributes$$/ B
.$$B C
Where$$C H
($$H I
a$$I J
=>$$K M
!$$N O
string$$O U
.$$U V
IsNullOrWhiteSpace$$V h
($$h i
a$$i j
.$$j k
Roles$$k p
)$$p q
)$$q r
;$$r s
if&& 
(&& (
authorizeAttributesWithRoles&& ,
.&&, -
Any&&- 0
(&&0 1
)&&1 2
)&&2 3
{'' 
var(( 

authorized(( 
=((  
false((! &
;((& '
foreach** 
(** 
var** 
roles** "
in**# %(
authorizeAttributesWithRoles**& B
.**B C
Select**C I
(**I J
a**J K
=>**L N
a**O P
.**P Q
Roles**Q V
.**V W
Split**W \
(**\ ]
$char**] `
)**` a
)**a b
)**b c
{++ 
foreach,, 
(,, 
var,,  
role,,! %
in,,& (
roles,,) .
),,. /
{-- 
var.. 
isInRole.. $
=..% &
await..' ,
_identityService..- =
...= >
IsInRoleAsync..> K
(..K L
_user..L Q
...Q R
Id..R T
,..T U
role..V Z
...Z [
Trim..[ _
(.._ `
)..` a
)..a b
;..b c
if// 
(// 
isInRole// $
)//$ %
{00 

authorized11 &
=11' (
true11) -
;11- .
break22 !
;22! "
}33 
}44 
}55 
if88 
(88 
!88 

authorized88 
)88  
{99 
throw:: 
new:: $
ForbiddenAccessException:: 6
(::6 7
)::7 8
;::8 9
};; 
}<< 
var?? +
authorizeAttributesWithPolicies?? /
=??0 1
authorizeAttributes??2 E
.??E F
Where??F K
(??K L
a??L M
=>??N P
!??Q R
string??R X
.??X Y
IsNullOrWhiteSpace??Y k
(??k l
a??l m
.??m n
Policy??n t
)??t u
)??u v
;??v w
if@@ 
(@@ +
authorizeAttributesWithPolicies@@ /
.@@/ 0
Any@@0 3
(@@3 4
)@@4 5
)@@5 6
{AA 
foreachBB 
(BB 
varBB 
policyBB #
inBB$ &+
authorizeAttributesWithPoliciesBB' F
.BBF G
SelectBBG M
(BBM N
aBBN O
=>BBP R
aBBS T
.BBT U
PolicyBBU [
)BB[ \
)BB\ ]
{CC 
varDD 

authorizedDD "
=DD# $
awaitDD% *
_identityServiceDD+ ;
.DD; <
AuthorizeAsyncDD< J
(DDJ K
_userDDK P
.DDP Q
IdDDQ S
,DDS T
policyDDU [
)DD[ \
;DD\ ]
ifFF 
(FF 
!FF 

authorizedFF #
)FF# $
{GG 
throwHH 
newHH !$
ForbiddenAccessExceptionHH" :
(HH: ;
)HH; <
;HH< =
}II 
}JJ 
}KK 
}LL 	
returnOO 
awaitOO 
nextOO 
(OO 
)OO 
;OO 
}PP 
}QQ 